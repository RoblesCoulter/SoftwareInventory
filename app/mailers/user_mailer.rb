class UserMailer < ActionMailer::Base
  default from: "live@laureatelive.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset
    @user = user
    mail to: user.mail, subject: "Password reset for Laureate Live Inventory system"
  end
end
