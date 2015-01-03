module Swarms
  module Worlds
    class Simple2dWorld
      def initialize(width, height, member_positions)
        @width = width
        @height = height
        @member_positions = member_positions
      end

      def perform_actions(actions)
        actions.each do |action|
        end
      end

      def get_member_position(swarm_member)
        @member_positions[swarm_member]
      end
    end
  end
end
