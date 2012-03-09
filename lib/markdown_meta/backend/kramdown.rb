# Backend for the Kramdown pure-ruby markdown parser
require 'kramdown'

module MarkdownMeta
  module Backend
    module Kramdown
      def self.to_html(content)
        html = ::Kramdown::Document.new(content).to_html
        if content.respond_to? :encoding
          html.force_encoding content.encoding
        end
        html
      end

      def self.to_toc(content)
        html = ::Kramdown::Document.new(content).to_toc
        if content.respond_to? :encoding
          html.force_encoding content.encoding
        end
        html
      end
    end
  end
end
