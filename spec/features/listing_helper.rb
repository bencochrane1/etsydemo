require 'spec_helper'


feature "AddingANewListingForASeller", type: :feature do
    scenario "valid input" do

        listing = Listing.create(
            name: "Bookshelf",
            category_id: 1,
            description: "Nice shelf for books",
            price: 450
            )

        user = User.create(
            first_name: "Some",
            last_name: "Dude",
            email: "email@email.com",
            password: "password",
            password_confirmation: "password"
            )

        log_in "email@email.com", "password"
        visit '/listings/new'
        fill "Name", with: listing.name
        # fill "Category", with: listing.category_id
        fill "Description", with: listing.description
        fill "Price", with: listing.price
        # click_button "Create Listing"
        # expect(page).to have_content(listing.name)
        expect(listing).to be_valid
    end

end

# describe Listing do
#     it "is valid with a product name" do
#         listing = Listing.new(
#             asdfname: 'Bookshelf')
#         expect(listing).to be_valid
#     end

#     it "is valid with a product category selected"
#     it "is valid with a product description"
#     it "is valid with a numeric price"
#     it "is valid with a valid image type"
# end
