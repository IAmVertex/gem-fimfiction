# -*- encoding: utf-8 -*-
module Fimfiction
  class Followers
    # @!visibility private
    def initialize(token)
      raise Fimfiction::TokenNotProvided unless !token.to_s.empty?
      @token = token
    end
    def get_following(id)
      puts "get_following ok"
    end
    def get_followers(id)
      puts "get_followers ok"
    end
  end
end
