# -*- encoding: utf-8 -*-
module Fimfiction
  class Error
    def self.check(code)
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

  class InvalidBody < StandardError; end
  class InvalidInclude < StandardError; end
  class InvalidPermission < StandardError; end
  class MissingScope < StandardError; end
  class InvalidToken < StandardError; end
  class ResourceNotFound < StandardError; end
  class InvalidApplication < StandardError; end
  class EndpointMissing < StandardError; end
  class MissingParameter < StandardError; end
  class InvalidArgument < StandardError; end
  class IncorrectSecret < StandardError; end
  class InvalidGrantType < StandardError; end
  class MissingAuthorizationHeader < StandardError; end
  class InvalidAttributes < StandardError; end
  class UnsupportedAttribute < StandardError; end
  class InvalidFilter < StandardError; end
  class InvalidPagination < StandardError; end
  class MalformedAuthorizationHeader < StandardError; end
  class InvalidAttribute < StandardError; end
  class InvalidSortField < StandardError; end
  class MalformedSortField < StandardError; end
  class RateLimited < StandardError; end
end
