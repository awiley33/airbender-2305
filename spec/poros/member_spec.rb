require "rails_helper"

RSpec.describe Member do
  it "exists and has attributes" do
    params = {
      allies: [
          "Ozai",
          "Zuko "
      ],
      enemies: [
          "Iroh",
          "Zuko",
          "Kuei",
          "Long Feng",
          "Mai",
          "Ty Lee",
          "Ursa "
      ],
      photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941",
      name: "Azula",
      affiliation: " Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)"
  },
    member = Member.new(params)

    expect(member).to be_a Member
    expect(member.name).to eq("Azula")
    expect(member.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941")
    expect(member.allies[0]).to eq("Ozai")
    expect(member.enemies[0]).to eq("Iroh")
    expect(member.affiliations).to eq(" Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
  end
end