#!/usr/bin/python

import json
import xlsxwriter
import sys
import os
sys.path.append('./py')
from Counter import *
from ssutils import add_summary_formulas, add_exists_formulas,add_named_ranges,load_summary_fields,add_field_summary,simplify,initialize_summary_formulas

## initial data values
sig = Counter()
columns = {}
sheets = {}
sheetRows = {}
dialects = {}
dialectCount = 0
rubrics = {}
style1 = None
style2 = None
start_row = None
existsCount = 0
spiralCount = 0



def open_workbook(wbname):
	wb = xlsxwriter.Workbook(wbname)
	return wb

def read_json(path):
	print "Opening "+path
	with open (path, "r") as myfile:
			tmpdata=str(myfile.read())
	## get rid of the double commas -- THG xsl transforms sometimes generate ,,
	## which causes the python json parser to blow.  Try to filter them out here
	jsondata = tmpdata.replace(",\n,\n,",",\n")
	jsondata = jsondata.replace(",,",",")
	jsondata = jsondata.replace(",\n,",",\n")
	jsondata = jsondata.replace(",\n        ,",",\n")
	data = json.loads(jsondata)
	##data = json.loads(tmpdata)
	return data
	
## find the named worksheet object. If not found, create it.
def getRubricSheet(rname):
	sname = rname.replace("-","")
	try:
		sheet = sheets[sname]
	except:
		sheet = wb.add_worksheet(sname)
		sheets[sname] = sheet
		sheetRows[rname] = start_row+1
		rubrics[rname] = True
	return sheet

	
## extract the file specific data and add it to the worksheet. one row per file.
def file_specific_data(data,  cName, dName, rubric_name):
        global existsCount
        global spiralCount
	sname = rubric_name
	sheet =  getRubricSheet(rubric_name)
	row = sheetRows[rubric_name]
	col = 0
	signature = ""
	create_summary_sheet(data,rubric_name)

	##print rubric_name+":"
	signatureCol = 10
	## write the record unique data
	for record in data["records"]:
		sheet.write(row,col,cName)
		addTitle(sheet,"Data Center",col)
		col +=1
		sheet.write(row,col,os.path.basename(record["Record"]))
		addTitle(sheet,"RecordName",col)
		col +=1
		sheet.write(row,col,dName)
		addTitle(sheet,"Dialect",col)
		col +=1
		sheet.write(row,col,record["Date"])
		addTitle(sheet,"Date",col)
		col +=1
		sheet.write(row,col,record["rubricType"])
		addTitle(sheet,"RubricType",col)
		col +=1
		sheet.write(row,col,record["rubricVersion"])
		addTitle(sheet,"RubricVersion",col)
		col +=1
		sheet.write(row,col,float(record["rubricMax"]))
		addTitle(sheet,"RubricMax",col)
		col +=1
		sheet.write(row,col,float(record["rubricExists"]))
		addTitle(sheet,"Exists",col)
		col +=1
		sheet.write(row,col,float(record["rubricCounts"]))
		addTitle(sheet,"Count",col)
		col +=1
		signatureCol = col
                addTitle(sheet,"Signature",col)

		## write the spiral unique data
		for spiral in record['spirals']:
			col +=1
			sheet.write(row,col,float(spiral["maximum"]))
                        addTitle(sheet,"Max",col)
			col += 1
			existCount = float(spiral["maximum"]) - getExistCount(spiral)
			sheet.write(row,col,existCount)
                        addTitle(sheet,"DialectMax",col)
			col += 1
			sheet.write(row,col,float(spiral["existTotal"]))
                        addTitle(sheet,"Exists",col)
			signature += " "+str(spiral["existTotal"])
			col += 1
			sheet.write(row,col,float(spiral["countTotal"]))
                        addTitle(sheet,"Count",col)
			col += 1
			percent = float(float(spiral["existTotal"])/float(spiral["maximum"]))
			sheet.write(row,col,float(percent))
                        addTitle(sheet,"Spiral %",col)

		## write the "exist" values from each item in the spiral
                spiralCount = 0
                existsCount = 0
		for spiral in record['spirals']:
                        spiralCount += 1
			items = ""
                        itemNum = 0
			for item in spiral["items"]:
                                itemNum += 1
				col +=1
				writeit(sheet,row,col,float(item["exists"]))
                                addTitle(sheet,str(spiralCount)+"."+str(itemNum)+".e",col)
				items += " "+item['exists']
                                existsCount +=1
			##print "exists = "+items

		#write the "count" values from each item in the spiral
                spiralNum = 0
		for spiral in record['spirals']:
                        spiralNum += 1
			items = ""
                        itemNum = 0
			for item in spiral["items"]:
                                itemNum += 1
				col +=1
				sheet.write(row,col,float(item["count"]))
                                addTitle(sheet,str(spiralNum)+"."+str(itemNum)+".c",col)
				items += " "+item['exists']
			##print "count = "+items

		sheet.write(row,signatureCol,signature.lstrip())
		signature = ""
		row += 1
		sheetRows[rubric_name] = row
		col = 0

def getExistCount(spiral):
		num = float(0)
		for item in spiral["items"]:
			itemVal = float(item['exists'])
			if (itemVal == -1):
				num += 1
		return num

def create_summary_sheet(data,rubric_name):
	sname = summary_name(rubric_name)
	try:
		sum_sheet =  sheets[sname]
	except:
		sheet = wb.add_worksheet(sname)
		sheets[sname] = sheet
		sheetRows[sname] =  load_summary_fields(wb,sheet,data,rubric_name, sname, 3)


		

def summary_name(rubric_name):
	return  simplify("Field_Summary_"+rubric_name)
	
def writeit(sheet, row, col, val) :
	if (val != 0):
		sheet.write(row,col,val,style1)
	else:
		sheet.write(row,col,val)
		
def add_formulas():
        global spiralCount
	number_of_dialects = len(dialects)
        print str(number_of_dialects)+" in dialects"

	for key in rubrics:
                print "adding names for rubric="+key
		dialect_row = 1
		sheet = getRubricSheet(key)
		end_row = sheetRows[key]
		initialize_summary_formulas(sheet,start_row,end_row,key,spiralCount)
		add_named_ranges(start_row+1,end_row,dialectCount,existsCount,key,wb, sheetRows, sheet, spiralCount)
		add_exists_formulas(sheet,start_row,end_row,existsCount,key,number_of_dialects,wb)
		for dkey in dialects:
			add_summary_formulas(sheet,start_row,end_row,key,dkey,dialect_row,spiralCount)
			dialect_row += 1

def addTitle(sheet,title,col):
	row = start_row
	sheet.write(row,col,title, style2)

def countDialects():
    global start_row
    global dialectCount
    ##  loop through each of the files on the command line
    for idx in range(1,len(sys.argv)):
        ## get the path
        path = sys.argv[idx]

        ## now split out the colection, dialect, and filename
        words = path.split("/")
        size = len(words)
        dialect = words[size-3]
        dialects[dialect] = True
    dialectCount = len(dialects)
    start_row = dialectCount+1
    print "dialectCount="+str(dialectCount)+" start_row="+str(start_row)

	
## main processing starts here
workbook_name = "data14.xlsx"
wb = open_workbook(workbook_name)
style1 = wb.add_format()
style1.set_bg_color('green' )
style2 = wb.add_format()
style2.set_font_name('Calibri' )
style2.set_bold()
## original from xlwt package - {'pattern: pattern solid, fore_colour light_green;')

countDialects()

##  loop through each of the files on the command line
for idx in range(1,len(sys.argv)):
	## get the path
	path = sys.argv[idx]
	##print "path="+path
	basename = os.path.basename(path)

	## now split out the colection, dialect, and filename
	words = path.split("/")
        size = len(words)
        dialect = words[size-3]
	collection = words[3]
	size = len(words)
	filename = words[size-1]

	## split the filename to extract the rubric type
	arry = filename.split("_")
	rubric = arry[1]
	print "dc="+collection+" dlct="+dialect+" file="+filename+" rub="+rubric

	## read and parse the input json file
	data = read_json(path)

	## and process the data
	file_specific_data(data,collection,dialect,rubric)



add_formulas()

for rubric in rubrics:
	sname = summary_name(rubric)
	ssheet = sheets[sname]
	add_field_summary(wb,rubric, ssheet, sheetRows[sname], sheets[simplify(rubric)], sheetRows[rubric],sorted(dialects ))
		
## now save the workbook
wb.close();
