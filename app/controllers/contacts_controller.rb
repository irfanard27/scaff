class ContactsController < ApplicationController
  before_action :set_contact, only: [:edit, :show, :update, :destroy]
  load_and_authorize_resource

  def index
    if current_user.has_role? :user
      @contact = Contact.where(owner: current_user.id)
    else
      @contact = Contact.all
    end
  end

  def new
    @contact = Contact.new
  end

  def show
  end

  def edit
  end

  def create
    respond_to do |format|
      if format.js
        @contact = Contact.new(contact_params)
        @contact.save
      else
        redirect_to @contact
      end
    end
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
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to @contact, notice: 'News was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def test
    render plain('tes')
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :phone_number, :owner)
  end

  def set_contact
    @contact = Contact.find(params[:id])
  end
end
