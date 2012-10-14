module ActiveAdmin
  module Views
    class Column
      alias :build_without_id :build
      
      def build(*args)
        build_without_id *args
        id!
      end
    end
    
    class Panel
      alias :build_without_id :build
      
      def build(*args)
        build_without_id *args
        id!
      end
      
    end
    
  end
end

