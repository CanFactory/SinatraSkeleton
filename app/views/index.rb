class Uvm
  module Views
    class Index < Layout

      def subtitle
        @subtitle || "Generic Content"
      end

    end
  end
end