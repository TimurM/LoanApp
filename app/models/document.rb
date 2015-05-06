class Document < ActiveRecord::Base
  validates :owner_id, :loan_amount, :interest_rate, :downpayment, presence: true

  belongs_to(
    :owner,
    class_name: 'User',
    foreign_key: 'owner_id',
    primary_key: 'id'
  )
end
