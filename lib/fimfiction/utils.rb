# -*- encoding: utf-8 -*-
require 'uri'

module Fimfiction
  class Utils
    def self.query_builder(element)
      case element.class.to_s
      when "Array"
        return URI.escape(element.join(","))
      when "Hash"
      	parsedUri = ""
        element.each do |key, val|
          parsedUri << URI.escape("filter[#{key}]=#{val}&")
        end
        return parsedUri
      else
        raise Fimfiction::InvalidArgument, "\"#{element}\" is not a valid object. Expected Array or Hash, got #{element.class.to_s} instead."
      end
    end
  end
end