# frozen_string_literal: true

class Task
  USER_TASK_LIST_GID = ''
  PERSONAL_ACCESS_TOKEN = ''

  FIELDS = 'name,memberships.section.name,completed_at,completed'

  def get
    today = DateTime.now
    today_beginning = today.strftime("%Y-%m-%dT00:00:00")

    response = HTTParty.get(
        "https://app.asana.com/api/1.0/user_task_lists/#{USER_TASK_LIST_GID}/tasks?completed_since=#{today_beginning}&opt_fields=#{FIELDS}",
        {
            headers: {
                'Authorization': "Bearer #{PERSONAL_ACCESS_TOKEN}"
            }
        }
    )
    return response
  end
end
