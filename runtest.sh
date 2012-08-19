#!/bin/sh 


echo "This produces nothing, spreadsheet gem cannot handle corrupt file"
echo "'ruby excel.rb test.xls'"
ruby excel.rb test.xls
echo "Finished running 'ruby excel.rb test.xls'"

echo
echo "This works (after opening test.xls in OpenOffice and saving as Excel 95)"
echo "'ruby excel.rb test-fixed.xls'"
ruby excel.rb test-fixed.xls
echo
echo "Finished running 'ruby excel.rb test-fixed.xls'"

echo
echo "The output produced just now should have started with:"
echo "Row: 0 Cell: 0> Tran Id
Row: 0 Cell: 1> Original Id
Row: 0 Cell: 2> Tran Date
Row: 0 Cell: 3> Tran Status
Row: 0 Cell: 4> Filer
Row: 0 Cell: 5> Contributor/Payee
Row: 0 Cell: 6> Sub Type"

echo
echo "Now look at the differences from the file command:"
file test.xls 
# Gives test.xls: CDF V2 Document, corrupt: Cannot read summary info

file test-fixed.xls 
# Gives test-fixed.xls: CDF V2 Document, Little Endian, Os: Windows, Version 1.0, Code page: -535, Revision Number: 0

