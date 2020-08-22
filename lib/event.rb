require 'time'

class Event

    attr_accessor :start_date, :duration, :title, :attendees

    def initialize(start_date, duration, title, attendees)
        @start_date = Time.parse(start_date.to_s)
        @duration = duration.to_i
        @title = title.to_s
        @attendees = []
        @attendees << attendees.to_s
    end
    
    def postpone_24h
        @start_date = Time.parse(start_date.to_s) + 3600
    end

    def end_date
        end_date = @start_date + @duration*60
    end
end