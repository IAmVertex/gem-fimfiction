# -*- encoding: utf-8 -*-
module Fimfiction
  #Error handling - Exceptions class
  class Error
    # @!visibility private
    def initialize(token)
      @token = token
    end

    def check(code)
      case code
      when 4001
        return Fimfiction::InvalidBody
      when 4002
        return Fimfiction::InvalidInclude
      when 4030
        return Fimfiction::InvalidPermission
      when 4031
        return Fimfiction::MissingScope
      when 4032
        return Fimfiction::InvalidToken
      when 4040
        return Fimfiction::ResourceNotFound
      when 4041
        return Fimfiction::InvalidApplication
      when 4042
        return Fimfiction::EndpointMissing
      when 4220
        return Fimfiction::MissingParameter
      when 4221
        return Fimfiction::InvalidArgument
      when 4222
        return Fimfiction::IncorrectSecret
      when 4223
        return Fimfiction::InvalidGrantType
      when 4224
        return Fimfiction::MissingAuthorizationHeader
      when 4225
        return Fimfiction::InvalidAttributes
      when 4226
        return Fimfiction::UnsupportedAttribute
      when 4227
        return Fimfiction::InvalidFilter
      when 4228
        return Fimfiction::InvalidPagination
      when 4229
        return Fimfiction::MalformedAuthorizationHeader
      when 42210
        return Fimfiction::InvalidAttribute
      when 42211
        return Fimfiction::InvalidSortField
      when 42212
        return Fimfiction::MalformedSortField
      when 4290
        return Fimfiction::RateLimited
      else
        return StandardError
      end
    end
  end
  
  # @!visibility private
  class TokenNotProvided < StandardError; end
  
  # @!visibility private
  class InvalidBody < StandardError; end
  
  # @!visibility private
  class InvalidInclude < StandardError; end
  
  # @!visibility private
  class InvalidPermission < StandardError; end
  
  # @!visibility private
  class MissingScope < StandardError; end
  
  # @!visibility private
  class InvalidToken < StandardError; end
  
  # @!visibility private
  class ResourceNotFound < StandardError; end
  
  # @!visibility private
  class InvalidApplication < StandardError; end
  
  # @!visibility private
  class EndpointMissing < StandardError; end
  
  # @!visibility private
  class MissingParameter < StandardError; end
  
  # @!visibility private
  class InvalidArgument < StandardError; end
  
  # @!visibility private
  class IncorrectSecret < StandardError; end
  
  # @!visibility private
  class InvalidGrantType < StandardError; end
  
  # @!visibility private
  class MissingAuthorizationHeader < StandardError; end
  
  # @!visibility private
  class InvalidAttributes < StandardError; end
  
  # @!visibility private
  class UnsupportedAttribute < StandardError; end
  
  # @!visibility private
  class InvalidFilter < StandardError; end
  
  # @!visibility private
  class InvalidPagination < StandardError; end
  
  # @!visibility private
  class MalformedAuthorizationHeader < StandardError; end
  
  # @!visibility private
  class InvalidAttribute < StandardError; end
  
  # @!visibility private
  class InvalidSortField < StandardError; end
  
  # @!visibility private
  class MalformedSortField < StandardError; end
  
  # @!visibility private
  class RateLimited < StandardError; end
end
