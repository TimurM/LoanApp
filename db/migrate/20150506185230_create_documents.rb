class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :owner_id, null: false
      t.integer :loan_amount, null: false
      t.integer :interest_rate, null: false
      t.integer :downpayment, null: false

      t.timestamps null: false
    end
  end
end
