class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map{|audition| audition.actor}
    end

    def locations
        self.auditions.map{|audition| audition.location}
    end

    def lead
        hired_actor = self.auditions.find{|audition| audition.hired}
        hired_actor ? hired_actor : "no actor has been hired for this role"
    end

    def understudy
        hired_actors = self.auditions.filter{|audition| audition.hired}
        hired_actors.length > 1 ? hired_actors[1] : "no actor has been hired for understudy for this role"
    end

end