# -*- encoding: utf-8 -*-
module Fimfiction
  class Stories
    @token = nil

    def initialize(token)
      raise Fimfiction::TokenNotProvided unless !token.to_s.empty?
      @token = token
    end
    def get_stories
      puts "get_stories ok"
    end
    def get_story(id)
      puts "get_story ok"
    end
    def create_story
      puts "create_story ok"
    end
    def update_story(id)
      puts "update_story ok"
    end
    def delete_story(id)
      puts "delete_story ok"
    end
    def get_chapters(id)
      puts "get_chapters ok"
    end
    def create_chapter(id)
      puts "create_chapter ok"
    end
  end
end
