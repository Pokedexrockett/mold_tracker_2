class DryRoomsController < ApplicationController

    def index
        @dry_rooms = DryRoom.alpha
    end
    
end
