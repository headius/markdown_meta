require 'markdown_meta/backend'

module MarkdownMeta
  def self.to_html(content)
    MarkdownMeta::Backend.impl.to_html(content)
  end

  def self.to_toc(content)
    MarkdownMeta::Backend.impl.to_html(content)
  end
end