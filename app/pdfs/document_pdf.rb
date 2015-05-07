class DocumentPdf < Prawn::Document
  def initialize(document)
    super(top_margin: 70)
    @document = document
    document_number
  end

  def document_number
    text "Order \##{@document.id}", size: 30, style: :bold
  end
end
