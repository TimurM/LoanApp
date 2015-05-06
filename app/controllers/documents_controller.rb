class DocumentsController < ApplicationController

  def index
    @documents = current_user.documents
  end
end
