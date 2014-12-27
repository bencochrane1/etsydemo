require 'spec_helper'

describe Listing do
    it "is valid with a product name" do
        listing = Listing.new(
            asdfname: 'Bookshelf')
        expect(listing).to be_valid
    end

    it "is valid with a product category selected"
    it "is valid with a product description"
    it "is valid with a numeric price"
    it "is valid with a valid image type"
end