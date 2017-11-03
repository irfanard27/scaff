class Contact < ApplicationRecord
  #validates :name,prensence:true
  #resourcify
  validates :name, :phone_number presence: true

  def ordered_by_name
    model = Contact.order(name: :desc)
    return model
  end
end
