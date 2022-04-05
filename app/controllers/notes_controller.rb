class NotesController < ApplicationController


    private
    def note_params
        params.require(:note).permit(:description, :image)
    end
end
