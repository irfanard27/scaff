class ContactsController < ApplicationController
  #before_action :set_contact, only: [:edit, :show, :update, :destroy]
  load_and_authorize_resource

  def index
    if current_user.has_role? :user
      contact = Contact.where(owner: current_user.id)
    else
      @contact = Contact.all
    end
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contacts = Contact.all
    # get_user_id = {:owner=>current_user.id}
    # @contact = Contact.create(get_user_id.merge(contact_params))

    # @contact = Contact.new(contact_params)
    # @contact.owner = current_user.id
    # @contact.save

    @contact = current_user.contacts.create(contact_params)
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contacts = Contact.all
    @contact = Contact.find(params[:id])

    @contact.update_attributes(contact_params)
  end

  def delete
    @contact = Contact.find(params[:contact_id])
  end

  def destroy
    @contacts = Contact.all
    @contact = Contact.find(params[:id])
    @contact.destroy
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :phone_number)
  end


end
