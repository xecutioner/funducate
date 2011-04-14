module RequestHelper
  def get_requester_info(request)
    Person.where("id = #{request.person_id}").first
  end
end
