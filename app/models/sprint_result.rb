class SprintResult < ActiveRecord::Base
    belongs_to :event, class_name: "Event"
    belongs_to :athlete, class_name: "Athlete"
    
    #def initialize
     #   @name = "John Doe"
    #end
    
    def name
        @name
    end

    def name= val
        @name = val
    end
end