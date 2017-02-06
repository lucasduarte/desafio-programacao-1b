require 'rails_helper'

RSpec.describe Venda, type: :model do
  context "valid factory" do
    it "has a valid factory" do
      expect(build(:venda)).to be_valid
    end  
  end
  
  
end
