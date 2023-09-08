class MembersService
  def conn
    Faraday.new(url: "https://last-airbender-api.fly.dev")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def search_by_nation(nation)
    get_url("api/v1/characters?affiliation=#{nation}")
  end
end