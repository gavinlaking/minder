module Minder
  module Views
    class Search

      def initialize
      end

      def show
        Vedeu.renders do
          template_for('show', template, nil, {})
        end
      end

      private

      def template
        File.dirname(__FILE__) + 'templates/search.erb'
      end

    end
  end
end
