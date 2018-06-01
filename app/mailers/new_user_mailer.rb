class NewUserMailer < ApplicationMailer
	default from: "example@email.com"

	layout "mailer"

	def new_user(user)
     @user = user
  	 
  	 mail(to: @user.email, subject: "Welcome to SiteMetrics ")
	end 
end
