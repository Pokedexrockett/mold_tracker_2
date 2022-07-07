module NotesHelper

    def display_header(note)
        if params[:strain_id]
            content_tag(:h1, "Add a note for #{note.strain.name}")
        else
          content_tag(:h1, "Create a note")
        end
      end
end
