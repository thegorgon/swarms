module Swarms
  class Simulation
    attr_reader :world, :history

    def initialize(world)
      @world = world
      @history = []
    end

    def tick!
      @history << @world.clone
      actions = world.swarm_members.collect do |swarm_member|
        swarm_member.decide_action(@world)
      end
      @world = @world.perform_actions(actions)
    end
  end
end
