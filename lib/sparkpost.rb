require "sparkpost/version"
require 'rest-client'

module Sparkpost
	class API

	  def initialize(api_key)
	    @api_key = api_key
	    @base_url = "https://api.sparkpost.com/api/v1/"
	  end  

	  def transmissions(name, email, from, subject, html, text)
		api_url = "#{@base_url}#{__method__}"

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
		headers = {:Authorization => @api_key, :content_type => :json, :accept => :json}
		resp = RestClient.post api_url, params.to_json, headers

	  end

	end
end
