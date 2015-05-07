class DocumentPdf < Prawn::Document
  def initialize(document)
    super(top_margin: 70)
    @document = document
    document_name
    document_loan_amount
    document_interest_rate
    document_downpayment
  end

  def document_name
    text "Loan Name: #{@document.name}", size: 30, style: :bold
  end

  def document_loan_amount
    move_down 20
    text "Loan Amount: $#{@document.loan_amount}", size: 16
  end

  def document_interest_rate
    move_down 10
    text "Interest_rate: #{@document.interest_rate}%", size: 16
  end

  def document_downpayment
    move_down 10
    text "Downpayment: $#{@document.downpayment}", size: 16
  end
end
