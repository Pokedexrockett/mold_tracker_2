class NotesController < ApplicationController
   before_action :redirect_if_not_logged_in

   def new
      if @strain = Strain.find_by_id(params[:strain_id])
         @note = @strain.notes.build
      else
         @note = Note.new
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
         @notes = @strain.notes.all.with_attached_images
      else
         @notes = Note.all
      end
   end


   private
   def note_params
    params.require(:note).permit(:strain_id, :batch_number_id, :metric_tag, :mold_weight, :description, :image)
   end
end
