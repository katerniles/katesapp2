class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'https://fathomless-headland-2677.herokuapp.com/users/sign_up'
    mail(to: @user.email, subject: 'Welcome to Quality Lettering & Graphics!')
  end
end