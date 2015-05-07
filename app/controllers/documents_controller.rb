class DocumentsController < ApplicationController
  before_action :require_signed_in!

  def index
    @documents = current_user.documents
  end

  def create
    @document = Document.new(document_params)
    @document.owner_id = current_user.id

    pdf = DocumentPdf.new(@document)
    attachment = pdf.render
    file = StringIO.new(attachment)
    file.class.class_eval { attr_accessor :original_filename, :content_type }
    file.original_filename = "document_#{@document.name}.pdf"
    file.content_type = "application/pdf"
    @document.pdf = file

    if @document.save
      redirect_to documents_url
    else
      flash.now[:errors] = @documents.errors.full_messages
    end
  end

  # You can unncomment this code if you would like to generate a welcome email locally.
  # Then go to http://localhost:3000/documents/1.pdf an an email will be generated in a new tab
  # def show
  #   @document = Document.find(params[:id])
  #
  #   DocumentMailer.document_email(current_user, @document).deliver
  #
  #   respond_to do |format|
  #     format.html
  #     format.pdf do
  #       pdf = DocumentPdf.new(@document)
  #       send_data pdf.render, filename: "document_#{@document.id}.pdf",
  #                             type: "application/pdf",
  #                             disposition: "inline"
  #     end
  #   end
  # end

  private

  def document_params
    params.require(:document).permit(:name, :loan_amount, :interest_rate, :downpayment)
  end
end
