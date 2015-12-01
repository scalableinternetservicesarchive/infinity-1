class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  # GET /notes
  # GET /notes.json
  def index
    :notes_params
    @notes = Note.all
    #@notes = Note.paginate(:page => params[:page], :per_page => 5)
    @user =  current_user
  end

  # GET /notes/1
  # GET /notes/1.json
  def show
    @user = current_user
    @noteComments = @note.comments
  end

  # GET /notes/new
  def new
    @note = Note.new
    @tags = Category.all
  end

  # GET /notes/1/edit
  def edit
  end

  # POST /notes
  # POST /notes.json
  def create
    @note = Note.new(city_name:note_params[:city_name],title:note_params[:title],content:note_params[:content])
    note_categories = note_params[:categories]
    note_categories.delete("")
    note_categories.each  do |i|
      c = Category.find_by_name(i)
      @note.categories << c
    end

    respond_to do |format|
      if @note.save
        format.html { redirect_to @note, notice: 'Note was successfully created.' }
        format.json { render :show, status: :created, location: @note }
      else
        format.html { render :new }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notes/1
  # PATCH/PUT /notes/1.json
  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to @note, notice: 'Note was successfully updated.' }
        format.json { render :show, status: :ok, location: @note }
      else
        format.html { render :edit }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note.destroy
    respond_to do |format|
      format.html { redirect_to notes_url, notice: 'Note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      params.require(:note).permit(:title, :city_name, :content, :user,categories: [])
    end
end