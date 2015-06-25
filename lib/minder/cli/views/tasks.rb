module Minder
  module Views
    class Tasks

      def initialize
      end

      def show
        Vedeu.renders do
          template_for('tasks', template, nil, {})
        end
      end

      private

      def template
        File.dirname(__FILE__) + 'templates/tasks.erb'
      end

    end
  end
end
