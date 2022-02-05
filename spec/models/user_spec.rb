require 'rails_helper'


RSpec.describe User, type: :model do
    describe 'Validation' do

      it 'should save a new user successfully' do
        @user = User.new(email: 'newer@test.com', password: '123', password_confirmation: '123')
        @user.save!
        expect(@user).to be_valid
      end
  
      it 'should confirm password and password confirmation are the same' do
        @user = User.new(email: 'test@test.com', password: '123', password_confirmation: '234234234324')
        @user.save
        expect(@user).not_to be_valid
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
  
      it 'should only save emails that are unique' do
        @user1 = User.new(email: 'newtestemail@test.com', password: '123', password_confirmation: '123')
        @user1.save!
        @user2 = User.new(email: 'newtestemail@test.com', password: '123', password_confirmation: '123')
        @user2.save
        expect(@user2).not_to be_valid 
      end
  
      it 'should only save users with a password length of 3 or more characters' do
        @user1 = User.new(email: 'admin@test.com', password: '12', password_confirmation: '12')
        @user1.save
        expect(@user1).not_to be_valid 
      end
  end
end

# RSpec.describe User, type: :model do
#   it "must have an age greater than 21" do
#     user = create(:user)
#     user2 = create(:user)
#     expect(user.email).to eq("test+1@test.com")  
#     expect(user2.email).to eq("test+2@test.com")  
#   end

### these tests use factorybot predefined values to test user use cases 

# RSpec.describe User, :type => :model do
  
#   before(:all) do
#     @user1 = create(:user)
#   end
  
#   it "is valid with valid attributes" do
#     expect(@user1).to be_valid
#   end
  
#   it "has a unique email" do
#     user2 = build(:user, username: "Bob")
#     expect(user2).to_not be_valid
#   end
  
#   it "is not valid without a password" do 
#     user2 = build(:user, password: nil)
#     expect(user2).to_not be_valid
#   end
  
#   it "is not valid without a username" do 
#     user2 = build(:user, username: nil)
#     expect(user2).to_not be_valid
#   end
  
#   it "is not valid without an email" do
#     user2 = build(:user, email: nil)
#     expect(user2).to_not be_valid
#   end
  

# RSpec.describe User, type: :model do
#   describe 'Validation' do

#     it 'should save a new user successfully' do
#       @user = User.new(email: 'newer@test.com', password: '123', password_confirmation: '123')
#       @user.save!
#       expect(@user).to be_valid
#     end

#     it 'should confirm password and password confirmation are the same' do
#       @user = User.new(email: 'test@test.com', password: '123', password_confirmation: '1223')
#       @user.save
#       expect(@user).not_to be_valid
#       expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
#     end

#     it 'should only save emails that are unique' do
#       @user1 = User.new(email: 'newtestemail@test.com', password: '123', password_confirmation: '123')
#       @user1.save!
#       @user2 = User.new(email: 'newtestemail@test.com', password: '123', password_confirmation: '123')
#       @user2.save
#       expect(@user2).not_to be_valid 
#     end

#     it 'should only save users with password mini mum length of 3 characters' do
#       @user1 = User.new(email: 'admin@test.com', password: '12', password_confirmation: '12')
#       @user1.save
#       expect(@user1).not_to be_valid 
#     end
#  end

# end
