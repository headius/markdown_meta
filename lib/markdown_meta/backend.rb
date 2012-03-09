module MarkdownMeta
  module Backend
    def self.impl=(backend)
      @impl = load_impl(backend)
    end

    def self.impl
      @impl ||= default_impl
    end

    private

      def self.load_impl(impl_name)
        begin
          require "markdown_meta/backend/#{impl_name}"
          cls_name = impl_name.split('_').map(&:capitalize).join
          MarkdownMeta::Backend.const_get(cls_name)
        rescue LoadError => e
          raise LoadError, "failed to load markdown backend `#{impl_name}`: " + e.message, e.backtrace
        rescue NameError => e
          raise NameError, "failed to load markdown backend `#{impl_name}`: " + e.message, e.backtrace
        end
      end

      def self.default_impl
        return MarkdownMeta::Backend::RDiscount if defined? RDiscount
        return load_impl('kramdown')
      end
  end
end