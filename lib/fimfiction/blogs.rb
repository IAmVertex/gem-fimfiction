# -*- encoding: utf-8 -*-
module Fimfiction
  #Blogs class
  class Blogs
    # @!visibility private
    def initialize(token)
      raise Fimfiction::TokenNotProvided unless !token.to_s.empty?
      @token = token
      @attributes = ["title", "author", "date_posted", "content", "tags"]
      @filters = {}
    end

    # Set blog content attributes of a Blog class instance, like the title, author or content.
    #
    # == Parameters:
    # attributes::
    #   Array - List of attributes
    #
    # == Returns:
    # True if successful. Raises an InvalidAttribute exception otherwise.
    #
    # == Example:
    #   blog_posts = Fimfiction::Blogs.new("TOKEN")
    #   blog_posts.set_attributes(["title", "author", "content"])
    #
    def set_attributes(attributes)
      raise Fimfiction::InvalidAttribute unless attributes.kind_of?(Array)
      attributes.each do |attribute|
        raise Fimfiction::InvalidAttribute, "#{attribute} is not a valid attribute." unless ["title", "author", "tagged_story", "date_posted", "intro", "content", "content_html", "num_views", "num_comments", "site_post", "site_post_tag", "tags"].include?(attribute)
      end
      @attributes = attributes
      return true
    end

    # Set searching filters of a Blog class instance, like the tags or the author.
    #
    # == Parameters:
    # filters::
    #   Hash - List of filters
    #
    # == Returns:
    # True if successful. Raises an InvalidFilter exception otherwise.
    #
    # == Example:
    #   blog_posts = Fimfiction::Blogs.new("TOKEN")
    #   blog_posts.set_filters({:tags => "podcast"})
    #
    def set_filters(filters)
      raise Fimfiction::InvalidFilter unless filters.class == Hash
      filters.each_key do |filter|
        raise Fimfiction::InvalidFilter, "#{filter} is not a valid filter." unless ["ids", "author", "tags", "site_post", "site_post_tag", "date_posted"].include?(filter.to_s)
      end
      @filters = filters
      return true
    end

    # Get a list of blog posts.
    #
    # == Returns:
    # A list of blog posts if successful. Raises an exception otherwise.
    #
    # == Example:
    #   blog_posts = Fimfiction::Blogs.new("TOKEN")
    #   puts testBlog.get_posts()
    #
    def get_posts
        url = 'https://www.fimfiction.net/api/v2/blog-posts?'
        url << Fimfiction::Utils.query_builder(@filters) unless @filters.length == 0
        url << "fields[blog_post]=#{Fimfiction::Utils.query_builder(@attributes)}" unless @attributes.length == 0
      begin
        request = RestClient::Request.execute(method: :get, url: url, headers: {Authorization: 'Bearer '+@token}, :user_agent => "gem-Fimfiction by Vertex - https://github.com/IAmVertex/gem-fimfiction")
        return JSON.parse(request)
      rescue RestClient::ExceptionWithResponse => e
        err_response = JSON.parse(e.response)
        raise Fimfiction::Error.check(err_response["errors"][0]["code"]), err_response["errors"][0]["title"]
      end
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
