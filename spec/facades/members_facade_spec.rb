require "rails_helper"

RSpec.describe MembersFacade do
  it "will return all members by nation" do
    all_members = MembersFacade.new.find_all_members("Fire Nation")
    expect(all_members.first).to be_a(Member)
    expect(all_members.count).to eq(20) # should be close to 100 ????
    
    expect(all_members.first.name).to be_a(String)
    expect(all_members.first.image).to be_a(String)
    expect(all_members.first.allies).to be_an(Array)
    expect(all_members.first.enemies).to be_an(Array)
    expect(all_members.first.affiliations).to be_a(String)

  end
end