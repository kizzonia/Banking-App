class AccountsMailer < ApplicationMailer
  default :from => "support@suntrusstonline.com"
  def account_email(user, account)
    @user = user
    @account = account
     mail(to: user.email, subject: 'Your Account Has Been Created')
  end
end
