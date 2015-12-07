require "sparkpost/version"

module Sparkpost
  # Your code goes here...
  BASE_URL = "https://api.sparkpost.com/api/v1/"

  def self.transmissions(api_key, name, email, from, subject, html, text)
	api_url = "#{BASE_URL}#{__method__}"

	params = {
		content: {
			from: from, 
			subject: subject, 
			text: text,
			html: html,
			}, 
		recipients: [
			#{address: 'email1@gmail.com'},
			#{address: {name: 'name', email: 'email1@gmail.com'}},
			{address: {name: name, email: email}},
			]}
	headers = {:Authorization => api_key, :content_type => :json, :accept => :json}
	resp = RestClient.post api_url, params.to_json, headers

  end

end
