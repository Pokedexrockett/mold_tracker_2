class NotesController < ApplicationController

   def new
      if @strain = Strain.find_by_id(params[:strain_id])
         @review = @strain.notes.build
      else
         @review = Review.new
      end
   end

   def create 
      @note = Note.new(note_params)
      @note.user = current_user
      if @note.save
         redirect_to note_path(@note)
      else
         render:new
      end
   end

   def show
      @note = Note.find_by_id(params[:id])
   end

   def index
      if @strain = Strain.find_by_id(params[:strain_id])
         @notes = @strain.notes
      else
         @notes = Note.all
   end


   private
   def note_params
    params.require(:note).permit(:description)
   end
end
