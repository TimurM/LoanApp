class DocumentMailer < ApplicationMailer

  def document_email(document)
    @document = document
    mail(to: current_user.email, subject: 'You just got a new quote')
  end
end
