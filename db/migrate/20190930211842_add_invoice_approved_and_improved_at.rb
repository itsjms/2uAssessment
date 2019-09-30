class AddInvoiceApprovedAndImprovedAt < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :approved, :boolean, default: false
    add_column :invoices, :approved_at, :datetime
  end
end
