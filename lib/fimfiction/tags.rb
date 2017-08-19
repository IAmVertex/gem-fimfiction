# -*- encoding: utf-8 -*-
module Fimfiction
  class Tags
    # @!visibility private
    def initialize(token)
      raise Fimfiction::TokenNotProvided unless !token.to_s.empty?
      @token = token
    end
    def get_tags
      puts "get_tags ok"
    end
  end
end
