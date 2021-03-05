class ContactsController < ApplicationController
  def index
  end

  def create
    @contact = Contact.new(user_params)
    if @contact.save
      UserMailer.with(contact: @contact).welcome_email.deliver_later
      flash[:success] = "Thank you for contact!"
    else
      flash[:warning] =  @contact.errors.full_messages.to_sentence

    end
    redirect_to root_path
  end

  private

  def user_params
    params.require(:contact).permit(:first_name, :last_name, :email, :phone_number, :message)
  end
end
