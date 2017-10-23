class Contact < ApplicationRecord
  #validates :name,prensence:true
  resourcify
  validates :name, presence: true
end
