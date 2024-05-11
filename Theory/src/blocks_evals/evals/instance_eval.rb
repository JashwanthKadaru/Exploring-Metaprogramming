# instance_eval: execution in the context of object
class CleanRoom
    def current_temperature
        # ...
    end
end

clean_room = CleanRoom.new
clean_room.instance_eval do
    if current_temperature < 20
        # TODO: wear jacket
    end
end
