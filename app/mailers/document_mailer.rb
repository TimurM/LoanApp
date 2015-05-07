class DocumentMailer < ApplicationMailer

  def document_email(current_user, document)
    @document = document
    mail(to: current_user.email, subject: 'You just got a new quote')
  end
end
