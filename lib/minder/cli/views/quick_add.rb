module Minder
  module Views
    class QuickAdd

      def initialize
      end

      def show
        Vedeu.renders do
          template_for('quick_add', template, nil, {})
        end
      end

      private

      def template
        File.dirname(__FILE__) + 'templates/quick_add.erb'
      end

    end
  end
end
