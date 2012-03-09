# Backend for the rdiscount C ext markdown parser
require 'rdiscount'

module MarkdownMeta
  module Backend
    module RDiscount
      def self.to_html(content)
        ::RDiscount.new(content).to_html
      end

      def self.to_toc(content)
        ::RDiscount.new(content).toc_content
      end
    end

    # for impl= capitalization compat
    Rdiscount = RDiscount
  end
end
