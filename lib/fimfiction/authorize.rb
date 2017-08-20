# -*- encoding: utf-8 -*-
module Fimfiction
  # Authorization Class
  class Authorize
    # Returns a :String with the Token, using your client credentials.
    #
    # == Parameters:
    # client_id::
    #   String - Your Client ID. You can find it in Application Management.
    # client_secret::
    #   String - Your Client Secret. You can find it in Application Management.
    #
    # == Returns:
    # A string containing the Token if successful. Raises an exception otherwise.
    #
    # == Example:
    #   authToken = Fimfiction::Authorize.get_token("CLIENT_ID","CLIENT_SECRET")
    #
    def self.get_token(client_id, client_secret)
      reqParams = {
        :client_id => client_id,
        :client_secret => client_secret,
        :grant_type => 'client_credentials'
      }
      begin
        reqAuth = RestClient.post('https://www.fimfiction.net/api/v2/token', reqParams, :user_agent => "gem-Fimfiction by Vertex - https://github.com/IAmVertex/gem-fimfiction")
        return JSON.parse(reqAuth)["access_token"]
      rescue RestClient::ExceptionWithResponse => e
        err_response = JSON.parse(e.response)
        raise Fimfiction::Error.check(err_response["errors"][0]["code"]), err_response["errors"][0]["title"]
      end
    end
  end
end