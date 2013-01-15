class Uvm
  module Views
    class Nolayout < Mustache

      def subtitle
        @subtitle || "Generic Nolayout Content"
      end

    end
  end
end