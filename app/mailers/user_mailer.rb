class UserMailer < ApplicationMailer

  def welcome_email
    @contact = params[:contact]
    mail(to: 'info@ajackus.com', subject: 'Assignment for the ROR developer position')
  end
end
