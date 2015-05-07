class Document < ActiveRecord::Base
  validates :owner_id, :name, :loan_amount, :interest_rate, :downpayment, presence: true

  has_attached_file :pdf,
                    :url => ':s3_domain_url',
                    :path => '/:class/:attachment/:id_partition/:style/:filename'

  validates_attachment_content_type :pdf, :content_type => ['application/pdf'], :if => :pdf_attached?

  def pdf_attached?
    self.pdf.file?
  end

  belongs_to(
    :owner,
    class_name: 'User',
    foreign_key: 'owner_id',
    primary_key: 'id'
  )
end
