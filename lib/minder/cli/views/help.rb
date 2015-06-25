module Minder
  module Views
    class Help

      def initialize
      end

      def show
        Vedeu.renders do
          template_for('help', template, nil, {})
        end
      end

      private

      def template
        File.dirname(__FILE__) + 'templates/help.erb'
      end

    end
  end
end
