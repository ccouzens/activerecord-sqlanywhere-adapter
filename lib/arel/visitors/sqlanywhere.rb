module Arel
  module Visitors
    class SQLAnywhere < Arel::Visitors::ToSql
      private

      def visit_Arel_Nodes_SelectStatement o

        if o.limit and o.limit.expr == 0
          o.limit = nil
          o.cores.each do |core|
            core.wheres << Arel::Nodes::False.new
          end
        end

        if o.offset and o.limit == nil
          o.limit = Arel::Nodes::Limit.new(2147483647)
        end
        super o
      end

      def visit_Arel_Nodes_Offset o
        "OFFSET (#{visit o.expr})"
      end

      def visit_Arel_Nodes_Limit o
        "LIMIT (#{visit o.expr})"
      end

      def visit_Arel_Nodes_True o
        "1=1"
      end

      def visit_Arel_Nodes_False o
        "1=0"
      end

    end
  end
end

Arel::Visitors::VISITORS['sqlanywhere'] = Arel::Visitors::SQLAnywhere
