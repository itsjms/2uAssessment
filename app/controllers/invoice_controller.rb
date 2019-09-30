class InvoiceController < ApplicationController
  def index
    
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
end
