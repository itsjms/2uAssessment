class InvoiceController < ApplicationController
  def index
    @invoices = Invoice.where(approved: false)
  end
  
  def create
    Invoice.create(
      invoice_number: params[:invoice_number],
      total: params[:total],
      currency: params[:currency],
      invoice_date: params[:invoice_date],
      due_date: params[:due_date],
      vendor_name: params[:vendor_name],
      remittance_address: params[:remittance_address]
    )
    
    render status: 200, json: {
      message: "invoice submitted successfully"
    }
  end 
  
  def approve
    invoice = Invoice.find(params[:invoice_id])
    return unless invoice
    invoice.update_attributes(
      approved: true,
      approved_at: DateTime.now
    )
    redirect_to root_path
  end
end
