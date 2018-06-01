# Preview all emails at http://localhost:3000/rails/mailers/new_user
class NewUserPreview < ActionMailer::Preview
	def sample_email_preview
		NewUserMailer.new_user(User.first)
	end 
end
