describe Order do
  describe "#submit" do

    before do
      @contact = Contact.new(:name => "haha", :phone_number => '132435' , :owner=>2)
      @order.save
    end
  end
end
