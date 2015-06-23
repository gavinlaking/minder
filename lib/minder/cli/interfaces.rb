module Minder
  class Interfaces

    Vedeu.keymap '_global_' do
      key('/') { Vedeu.trigger(:search_tasks) }
      key('?') { Vedeu.trigger(:show_help) }
    end

    Vedeu.interface 'filter' do
      border do
        title 'Filters'
      end
      cursor!
      geometry do
        height 5
      end
      group 'main'
      hide!
    end

    Vedeu.interface 'help' do
      border do
        title 'Help'
      end
      cursor!
      geometry do
        height 5
      end
      group 'main'
      hide!
      keymap do
        key(:space) { Vedeu.trigger(:show_main) }
      end
    end

    Vedeu.interface 'pomodoro' do
      border do
        title 'Pomodoro'
      end
      cursor!
      geometry do
        height 5
      end
      group 'main'
      keymap do
        key(:up, 'k')   { Vedeu.trigger(:_cursor_up_) }
        key(:down, 'j') { Vedeu.trigger(:_cursor_down_) }
      end
    end

    Vedeu.interface 'quick_add' do
      border do
        title 'Quick Add'
      end
      cursor!
      geometry do
        height 3
        y      Vedeu.height - 3
      end
      group 'main'
    end

    Vedeu.interface 'search' do
      border do
        title 'Search'
      end
      cursor!
      geometry do
        height 5
      end
      hide!
      group 'main'
      keymap do
        key('n') { Vedeu.trigger(:next_search_result) }
        key('N') { Vedeu.trigger(:previous_search_result) }
      end
    end

    Vedeu.interface 'tasks' do
      border do
        title 'Tasks'
      end
      cursor!
      geometry do
        y  { use('pomodoro').south }
        yn { use('quick_add').north }
      end
      group 'main'
      keymap do
        key(:up, 'k')   { Vedeu.trigger(:_cursor_up_) }
        key(:down, 'j') { Vedeu.trigger(:_cursor_down_) }
        key('s') { Vedeu.trigger(:start_task) }
        key('u') { Vedeu.trigger(:unstart_task) }
        key('d') { Vedeu.trigger(:complete_task) }
        key('x') { Vedeu.trigger(:delete_task) }
        key('e') { Vedeu.trigger(:edit_task) }
      end
    end

    Vedeu.focus_by_name('pomodoro')

  end
end
