# -*- encoding: utf-8 -*-
module Fimfiction
  class Bookshelves
    @token = nil

    def initialize(token)
      raise Fimfiction::TokenNotProvided unless !token.to_s.empty?
      @token = token
    end
    def get_bookshelves
      puts "get_bookshelves ok"
    end
    def get_bookshelf(id)
      puts "get_bookshelf ok"
    end
    def get_books(id)
      puts "get_books ok"
    end
    def create_bookshelf
      puts "create_bookshelf ok"
    end
    def update_bookshelf(id)
      puts "update_bookshelf ok"
    end
    def delete_bookshelf(id)
      puts "delete_bookshelf ok"
    end
  end
end
