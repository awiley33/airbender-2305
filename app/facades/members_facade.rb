class MembersFacade
  def find_all_members(nation)
    service = MembersService.new
    request = service.search_by_nation(nation)
    @members = request.map do |member|
      Member.new(member)
    end
  end
end