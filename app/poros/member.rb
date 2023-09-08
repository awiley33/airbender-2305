class Member
  attr_reader :name,
              :image,
              :allies,
              :enemies,
              :affiliations

  def initialize(data)
    @name = data[:name]
    @image = data[:photoUrl]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliations = data[:affiliation]
  end
end