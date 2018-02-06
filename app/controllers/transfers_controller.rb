class TransfersController < ApplicationController
layout "account"
  #before_action :find_Account
  before_action :find_transfer, except: [:create, :new, :index]
  before_action :authenticate_user!
  def index
    @account = Account.friendly.find(params[:account_id])
    @transfers = @account.transfers.order("created_at DESC")
  end

  def show
  end

  def edit
  end


  def create
    @account = Account.friendly.find(params[:account_id])
    @transfer = @account.transfers.create(transfer_params)
    if @transfer.save
      redirect_to account_transfer(@transfer), notice: "Transfer In Progress, OTP has been sent to your email "
    else
      render 'new'
    end
  end
  private
  def find_account
    @account = Account.find(params[:id])
  end
  def find_transfer
    @transfer = @account.transfers.find(params[:id])
  end
  def transfer_params
    params.require(:transfer).permit(:account_number, :routine_number, :amount, :user_id, :account_id, :slug, :otp, :serial_number, :transfer_type, :account_pin, :account_name)
  end
end
