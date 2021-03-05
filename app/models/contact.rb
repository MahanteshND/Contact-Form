class Contact < ApplicationRecord
  validates :first_name, :last_name, :email, :phone_number, :message,  presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
