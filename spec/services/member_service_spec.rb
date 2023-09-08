require "rails_helper"

RSpec.describe MembersService do
  it "connects to the airbender API" do
    search = MembersService.new.search_by_nation("Fire Nation")
    expect(search).to be_an Array

    member = search[0]

    expect(member).to have_key :name
    expect(member[:name]).to be_a String

    expect(member).to have_key :photoUrl
    expect(member[:photoUrl]).to be_a String
    
    expect(member).to have_key :allies
    expect(member[:allies]).to be_an Array

    expect(member).to have_key :enemies
    expect(member[:enemies]).to be_an Array

    expect(member).to have_key :affiliation
    expect(member[:affiliation]).to be_a String
  end
end