class Uvm
  module Views
    class Layout < Mustache
      include ViewHelpers

      def title
        @title || "Generic Page"
      end

    end
  end
end

