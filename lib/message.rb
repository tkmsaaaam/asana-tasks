# frozen_string_literal: true

class Message
  def initialize(response:)
    @response = response
  end

  def create
    response_objects = @response["data"]
    message = ''

    response_objects.each do |object|
      task_name = object["name"]
      section_name =  object["memberships"][0]["section"]["name"]
      status = if object["completed"]
                 'X'
               else
                 section_name
               end
      message += "[#{status}] #{task_name} \n"
    end
    return message
  end
end
