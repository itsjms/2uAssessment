# == Schema Information
#
# Table name: invoices
#
#  id                 :integer          not null, primary key
#  invoice_number     :string
#  total              :float
#  currency           :string
#  invoice_date       :datetime
#  due_date           :datetime
#  vendor_name        :string
#  remittance_address :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Invoice < ApplicationRecord
end
