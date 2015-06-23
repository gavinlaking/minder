module Minder

  class ApplicationController

    Vedeu.bind(:search_tasks) {}
    Vedeu.bind(:show_help) {}
    Vedeu.bind(:show_main) {}
    Vedeu.bind(:next_search_result) {}
    Vedeu.bind(:previous_search_result) {}
    Vedeu.bind(:start_task) {}
    Vedeu.bind(:unstart_task) {}
    Vedeu.bind(:complete_task) {}
    Vedeu.bind(:delete_task) {}
    Vedeu.bind(:edit_task) {}

    def initialize
    end

  end

end
