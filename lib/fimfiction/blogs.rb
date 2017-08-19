# -*- encoding: utf-8 -*-
module Fimfiction
  class Blogs
    @token = nil

    def initialize(token)
      raise Fimfiction::TokenNotProvided unless !token.to_s.empty?
      @token = token
    end

    def get_posts
      return "get_posts, token de usuario: " + @token
    end

    def get_post(id)
      return "get_post, token de usuario: " + @token
    end

    def create_post
      return "create_post, token de usuario: " + @token
    end

    def update_post(id)
      return "update_post, token de usuario: " + @token
    end

    def delete_post(id)
      return "delete_post, token de usuario: " + @token
    end
  end
end
