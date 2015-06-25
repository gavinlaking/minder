module Minder
  module Views
    class Filter

      def initialize
      end

      def show
        Vedeu.renders do
          template_for('filter', template, nil, {})
        end
      end

      private

      def template
        File.dirname(__FILE__) + 'templates/filter.erb'
      end

    end
  end
end
