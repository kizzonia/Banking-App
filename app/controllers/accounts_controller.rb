class AccountsController < InheritedResources::Base
layout "account", except: [:new]

before_action :find_account, only: [ :show, :edit, :update, :destroy]
before_action :authenticate_user!
def index
  @accounts = Account.where(user_id: current_user).order('created_at DESC')
end

def show
end

def new
  @account = current_user.accounts.build
end

def create
  @account = current_user.accounts.build(account_params)
  if @account.save
    user = User.find_by_id(@account.user_id)
    account = @account
    AccountMailer.account_email(user, account).deliver_later
    redirect_to @account, notice: "Account Successfully Created"
  else
    render 'new'
  end
end
def edit

end

def update
  if @account.update(account_params)
    redirect_to @account
  else
    render 'edit'
  end
end
#  def destroy
#    @account.destroy
#  respond_to do |format|
#    format.html { redirect_to accounts_url, notice: 'Account was successfully destroyed.' }
#    format.json { head :no_content }
#  end
#  end
  private
  def find_account
    @account = Account.friendly.find(params[:id])
  end
    def account_params
      params.require(:account).permit(:balance, :account_number, :first_name, :last_name, :phone_number, :ssn, :address, :dob, :routine_number, :user_id, :date_of_birth, :slug, :city, :zip_code, :country, :account_type, :account_pin, :verify_pin, :state, :image)
    end
end
