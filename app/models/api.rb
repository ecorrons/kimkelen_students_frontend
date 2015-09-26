class Api

  def self.call uri
    response = Faraday.get (Settings.api.url + uri), content_type: 'application/json'
    JSON.parse response.body
  end
end