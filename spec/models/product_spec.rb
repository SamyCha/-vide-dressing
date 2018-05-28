require "rails_helper"

RSpec.describe Product, :type => :model do
  context "Product data correctly filled in" do
   it "returns a product with: name, brand, size, description, color, category, address, state, price, active" do
     product = Product.new(
       name: "My Clean Car",
       brand: "Repetto",
       size: "Medium",
       description: "Kind of Uber CarWash",
       color: "Blue",
       category: "MarketPlace",
       address: "Bordeaux, France",
       state: "active",
       price: 200,
       active: true
       )
     expect(product.name).to eq "My Clean Car"
     expect(product.brand).to eq "Repetto"
     expect(product.size).to eq "Medium"
     expect(product.description).to eq "Kind of Uber CarWash"
     expect(product.color).to eq "Blue"
     expect(product.category).to eq "MarketPlace"
     expect(product.address).to eq "Bordeaux, France"
     expect(product.state).to eq "active"
     expect(product.price).to eq 200
     expect(product.active).to eq true
   end
 end
end
