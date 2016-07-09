class CandidatesSpreadsheet
  attr_accessor :candidates
  
  def initialize candidates
    @candidates = candidates
  end

  def generate_xls
    book = Spreadsheet::Workbook.new
    sheet = book.create_worksheet name: "Candidates"

    create_body sheet

    data_to_send = StringIO.new
    book.write data_to_send
    data_to_send.string 
  end

  def create_body sheet
    # Header row with a specific format
    sheet.row(0).concat %w{Email FirstName LastName Mobile Nationality Citizenship Age Category}
    sheet.row(0).default_format = Spreadsheet::Format.new weight: :bold

    row_index = 1
    candidates.each do |candidate|
      sheet.row(row_index).concat [candidate.email, candidate.first_name, candidate.last_name, 
        candidate.mobile, candidate.nationality_name, candidate.citizenship_name, candidate.current_age , Category.find(candidate.category_id).title]
      # sheet.row(row_index).default_format = Spreadsheet.Format.new # define a custom format
      row_index += 1
    end
  end
end