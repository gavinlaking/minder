module Minder
  module Views
    class Pomodoro

      def initialize
      end

      def show
        Vedeu.renders do
          template_for('pomodoro', template, nil, {})
        end
      end

      private

      def template
        File.dirname(__FILE__) + 'templates/pomodoro.erb'
      end

    end
  end
end
