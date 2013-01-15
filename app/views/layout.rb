class Uvm
  module Views
    class Layout < Mustache
      include ViewHelpers

      def title
        @title || "[No Title]"
      end

    end
  end
end