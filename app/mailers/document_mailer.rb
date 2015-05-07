class DocumentMailer < ApplicationMailer

  def document_email()
    # @document = document
    mail(to: "timurtwin@aol.com", subject: 'You just got a new quote')
  end
end
