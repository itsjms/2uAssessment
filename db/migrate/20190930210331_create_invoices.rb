class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.string :invoice_number
      t.float :total
      t.string :currency
      t.datetime :invoice_date
      t.datetime :due_date
      t.string :vendor_name
      t.string :remittance_address

      t.timestamps
    end
  end
end
