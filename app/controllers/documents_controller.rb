class DocumentsController < ApplicationController

  def index
    @documents = current_user.documents
  end

  def create
    @document = Document.new(document_params)
    @document.owner_id = current_user.id

    if @document.save
      redirect_to documents_url
    else
      flash.now[:errors] = @documents.errors.full_messages
    end
  end

  private

  def document_params
    params.require(:document).permit(:loan_amount, :interest_rate, :downpayment)
  end
end
