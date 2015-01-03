module Swarms
  class Runner
    def initialize(simulation)
      @simulation = simulation
    end

    def run!
      loop do
        simulation.tick!
      end
    end
  end
end
