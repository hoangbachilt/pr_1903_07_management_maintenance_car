module ApplicationHelper
  def request_url(request)
    request.split("/")[3..request.split("/").length]
  end

  def last_name(full_name) 
    full_name.split(" ").last
  end

  def is_number? string
    true if Integer(string) rescue false
  end
end
