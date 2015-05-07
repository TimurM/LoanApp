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
    text "Name: \##{@document.name}", size: 30, style: :bold
  end

  def document_loan_amount
    text "Loan Amount: \##{@document.loan_amount}", size: 30, style: :bold
  end

  def document_interest_rate
    text "Downpayment: \##{@document.interest_rate}", size: 30, style: :bold
  end

  def document_downpayment
    text "Downpayment: \##{@document.downpayment}", size: 30, style: :bold
  end
end
