class TransfersController < ApplicationController
  layout "account"
  before_action :find_transfer, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_user!
  def index
    @transfers = @account.transfers.order("created_at DESC")
  end

  def show
  end

  def edit
  end

  def new
    @transfer = Transfer.build
    @account.transfers.build
  end
  def create
    @transfer = @account.transfers.build(transfer_params)
    if @transfer.save
      redirect_to @transfer, notice: "Transfer In Progress "
    else
      render 'new'
    end
  end
  private
  def find_transfer
    @transfer = Transfer.friendly.find(params[:id])
  end
  def transfer_params
    params.require(:transfer).permit(:account_number, :routine_number, :amount, :user_id, :account_id, :slug)
  end
end
