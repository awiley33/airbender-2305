require 'rails_helper'

RSpec.describe "Member Search by Nation" do
  it "can search for members by nation and display details" do
    visit "/"

    select "Fire Nation", from: :nation
    click_on "Search For Members"

    expect(current_path).to eq(search_path)

    expect(page).to have_content("Total Members: ")

    expect(page).to have_css(".member", count: 25)

    within(first(".member")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".image")
      expect(page).to have_css(".allies")
      expect(page).to have_css(".enemies")
      expect(page).to have_css(".affiliations")
    end
  end
end

# When I visit "/"
# And I select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
# Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
# And I should see a list with the detailed information for the first 25 members of the Fire Nation.

# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies or "None"
# - The list of enemies or "None"
# - Any affiliations that the member has