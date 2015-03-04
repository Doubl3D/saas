class ContactsController < ApplicationController
    def new
        @contact = Contact.new
    end

    def create
        @contact = Contact.new(contact_params)
        if @contact.save
          flash[:success] = "Thanks for the feedback!"
          redirect_to new_contact_path
        else  
          flash[:danger] = "Oh no! Something broke!"
          redirect_to new_contact_path
        end  
    end  
    private
        def contact_params
          params.require(:contact).permit(:name, :email, :comments)
        end  
end