class OtpsController < ApplicationController
  layout "account"
    #before_action :find_Account
    before_action :authenticate_user!


    def create
      @account = Account.friendly.find(params[:account_id])
      @transfer = @account.transfers.find(params[:id])

      @otp = @account.transfer.otps.create(otp_params)
      if @otp.save
        redirect_to @account, notice: "Transfer In Progress, OTP has been sent to your email "
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

    def find_otp
    end

    def otp_params
      params.require(:otp).permit( :user_id, :account_id, :otp)
    end


end
