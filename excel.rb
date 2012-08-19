require 'spreadsheet'
#Open the excel file passed in from the commandline
workbook = Spreadsheet.open(ARGV[0])

#Get the first worksheet
worksheet = workbook.worksheet(0)

#cycle over every row
worksheet.each { |row|
  j=0
  i=0
  if row != nil
  #cycle over each cell in this row if it's not an empty row
  row.each { |cell|
    if cell != nil
      #Get the contents of the cell as a string
      contents = cell.to_s
      puts "Row: #{j} Cell: #{i}> #{contents}"
    end
    i = i+1
  }
  end
}
