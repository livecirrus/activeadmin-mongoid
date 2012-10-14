module ActiveAdmin
  module Views
    class Columns
      alias :add_child_without_id :add_child

      def add_child(child)
        @column_count ||= 0
        add_child_without_id child
        # add an id by default
        if (child.is_a?(Arbre::Element) && child.id.nil?)
          child.id = (id || '')+"_c#{@column_count}"
          @column_count += 1
        end
      end      
    end

    class Column
      alias :add_child_without_id :add_child

      def add_child(child)
        @panel_count ||= 0
        add_child_without_id child
        # add an id by default
        if (child.is_a?(Arbre::Element) && child.id.nil?)
          child.id = (id || '')+"_p#{@panel_count}"
          @panel_count += 1
        end
      end      
    end
  end
end      