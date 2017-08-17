# -*- encoding: utf-8 -*-
module Fimfiction
	class Authorize			
		def self.get_token(client_id, client_secret)
			reqParams = {
					:client_id => client_id,
					:client_secret => client_secret,
					:grant_type => 'client_credentials'
				}
			begin
				reqAuth = RestClient.post('https://www.fimfiction.net/api/v2/token', reqParams, :user_agent => "gem-Fimfiction by Vertex - https://github.com/IAmVertex/gem-fimfiction")
				return JSON.parse(reqAuth)
			rescue RestClient::ExceptionWithResponse => e
				return JSON.parse(e.response)
			end
		end
	end
end