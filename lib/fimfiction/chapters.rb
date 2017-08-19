# -*- encoding: utf-8 -*-
module Fimfiction
  class Chapters
    # @!visibility private
    def initialize(token)
      raise Fimfiction::TokenNotProvided unless !token.to_s.empty?
      @token = token
    end
    def get_chapter(id)
      puts "get_chapter ok"
    end
    def update_chapter(id)
      puts "update_chapter ok"
    end
    def delete_chapter(id)
      puts "delete_chapter ok"
    end
  end
end
