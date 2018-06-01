class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

after_create :send_new_user_emails

private

def send_new_user_emails
	NewUserMailer.new_user(self).deliver
end 
end
