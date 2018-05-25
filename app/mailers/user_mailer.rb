class UserMailer < ApplicationMailer

  def reciept_email(user)
    @user = user
    @url = 'http://localhost:3000/login'
    puts "LOGGING USER"
    p user
    # byebug
    mail(to: user.email, subject: 'Your order has been processed.')
  end
end
