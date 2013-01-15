class Uvm
  module Views
    class ProgramIndex < Layout

      def programs
        [
            {
                :title => 'ProjectOne',
                :description => 'Lorem ipsum dolor sit amet.',
                :starts_at => Time.now - 3600*24*14,
                :ends_at => Time.now - 3600*24*4,
                :inherits_from => 'N/A',
                :inherits_state => 'N/A'
            },
            {
                :title => 'ProjectTwo',
                :description => 'Lorem ipsum dolor sit amet.',
                :starts_at => Time.now - 3600*24*14,
                :ends_at => Time.now - 3600*24*4,
                :inherits_from => 'N/A',
                :inherits_state => 'N/A'
            }
        ]
      end

    end
  end
end