require 'test_helper'

class ContactTest < ActiveSupport::TestCase

   test "saved correctly" do
     contact = Contact.new(:name=>'irfan',:phone_number=>'1342',:owner=>'1')
     contact.save
     assert true
   end

   test "saved correctly errors withput name" do
     contact = Contact.new(:phone_number=>'1342',:owner=>'1')
     assert_not contact.save , "Saved the article without a title"
   end
end
