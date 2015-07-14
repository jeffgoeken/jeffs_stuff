class NotesController < ApplicationController
def create
    @entry = Entry.find(params[:entry_id])
    @note = @entry.notes.create(note_params)
    redirect_to entry_path(@entry)
  end
 
  private
    def note_params
      params.require(:note).permit(:Initials, :Body)
    end
end
