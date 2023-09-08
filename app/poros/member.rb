class Member
  attr_reader :name,
              :photo,
              :allies,
              :enemies,
              :affiliations

  def initialize(data)
    @name = data[:name]
    @photo = data[:photoUrl]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliations = data[:affiliation]
  end
end