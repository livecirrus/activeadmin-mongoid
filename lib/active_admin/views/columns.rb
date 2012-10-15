module ActiveAdmin
  module Views
    class Column
      alias :build_without_default_id :build

      def build(options={})
        count = parent.children.count do |child|
           child.is_a? Column
        end
        options[:id] = "#{parent.id || ''}_c#{count}" if options[:id].nil?
        build_without_default_id(options)
      end      
    end

    class Panel
      alias :build_without_default_id :build

      def build(title, attributes={})
        count = parent.children.count do |child|
           child.is_a? Panel
        end
        attributes[:id] = "#{parent.id || ''}_p#{count}" if attributes[:id].nil?
        build_without_default_id(title, attributes)
      end            
    end
  end
end      