class ContactsController < ApplicationController
  before_action :set_contact, only: [:edit, :show, :update, :destroy]

  def index
    @contact = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def show
    # @contact = Contact.find(params[:id])
  end

  def edit
    # @contact = Contact.find(params[:id])
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save
  end

  def update
    # @contact = Contact.find(params[:id])
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to @contact, notice: 'contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    # @contact = Contact.find(params[:id])
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to @contact, notice: 'News was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :phone_number, :owner)
  end

  def set_contact
    @contact = Contact.find(params[:id])
  end
end
