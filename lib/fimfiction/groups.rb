# -*- encoding: utf-8 -*-
module Fimfiction
  class Groups
    # @!visibility private
    def initialize(token)
      raise Fimfiction::TokenNotProvided unless !token.to_s.empty?
      @token = token
    end
    def get_group(id)
      puts "get_group ok"
    end
    def get_threads(id)
      puts "get_threads ok"
    end
  end
end
