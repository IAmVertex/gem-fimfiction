# -*- encoding: utf-8 -*-
module Fimfiction
  class Users
    @token = nil

    def initialize(token)
      raise Fimfiction::TokenNotProvided unless !token.to_s.empty?
      @token = token
    end
    def get_user(id)
      puts "get_user ok"
    end
    def get_stories(id)
      puts "get_stories ok"
    end
    def get_posts(id)
      puts "get_posts ok"
    end
    def follow(id)
      puts "follow ok"
    end
    def unfollow(id)
      puts "unfollow ok"
    end
  end
end
