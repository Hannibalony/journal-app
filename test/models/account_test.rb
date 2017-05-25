require 'test_helper'

class AccountTest < ActiveSupport::TestCase
 
   def setup
     @account = Account.new(username: "Example" , password: "ExamplePass")
   end
   
   test "should be valid" do 
     assert @account.valid?
   end
   
   test "name should be present" do
    @account.username = "  "
    assert_not @account.valid?
  end
  
   test "password should be present" do 
     @account.password = "  "
     assert_not @account.valid?
   end
   
   test "username should not be too long" do 
    @account.username = "a" * 51
    assert_not @account.valid?
   end
   
   test "password should not be too long" do 
    @account.password = "a" * 12
    assert_not @account.valid?
   end
   
end
