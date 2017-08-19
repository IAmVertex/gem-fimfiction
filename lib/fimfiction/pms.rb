# -*- encoding: utf-8 -*-
module Fimfiction
  class PMs
    @token = nil

    def initialize(token)
      raise Fimfiction::TokenNotProvided unless !token.to_s.empty?
      @token = token
    end
    def get_pms
      puts "get_pms ok"
    end
    def get_pm(id)
      puts "get_pm ok"
    end
    def create_pm
      puts "create_pm ok"
    end
  end
end
