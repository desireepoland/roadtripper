require 'rails_helper'
require 'pry'
RSpec.describe Trip, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  let(:good_hash) do
    {name: "Oahu",
   description: "Beaches and food"
 }
 end

 let (:no_name_hash) do
   {name: nil,
   description: "What the name!?"}
 end

 let (:no_descript_hash) do
   {name: "Big Island",
   description: nil}
 end

 it "must have a name" do
    expect(Trip.new(good_hash)).to be_valid
    expect(Trip.new(no_name_hash)).to_not be_valid
  end

  it "must have a description" do
     expect(Trip.new(good_hash)).to be_valid
     expect(Trip.new(no_descript_hash)).to_not be_valid
   end
end
