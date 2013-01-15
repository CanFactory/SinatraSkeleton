class Uvm
  module Views
    class ProgramNew < Layout

      def program
        [
            {
                :title => '',
                :description => '',
                :starts_at => '',
                :ends_at => '',
                :inherits_from => '',
                :inherits_state => ''
            }
        ]
      end

    end
  end
end