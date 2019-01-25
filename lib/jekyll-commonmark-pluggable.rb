# frozen-string-literal: true

# An extension to jekyll-commonmark
#
# This extension overwrites the `#convert` method for
# `Jekyll::Converts::Markdown::CommonMark` to call each of the registered
# CommonMark plugins.
module Jekyll
  module Converters
    class Markdown::CommonMark
      def convert(content)
        doc = CommonMarker.render_doc(content, @parse_options, @extensions)
        CommonMarker.plugins.each do |plugin|
          plugin.call doc
        end
        doc.to_html(@render_options, @extensions)
      end
    end
  end
end

# Creates a module variable to hold the plugins
module CommonMarker
  @@__plugins = Array.new

  def self.plugins
    @@__plugins
  end
end
