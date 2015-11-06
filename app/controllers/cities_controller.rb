class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]

  # GET /cities
  # GET /cities.json
  def index

  end


  def search
    String query = params[:search]
    query = "%"+query+"%"
    puts(query)
  #:set_city
#    @cities = City.all
 # pts(params[:search])
    if params[:search]
      @cities = City.where("city_name = ?",params[:search])

      @notes = Note.where("city_name = ?", params[:search])
    end

    # search categories table if city is note entered

    if @cities.empty?
      @category = Category.where("name = ?",params[:search])

      puts(@category.name)
      if @category != nil

        @notes = Note.where("content like ? ",query)

      end
    end

    #@notes = Note.where(:city_name => params[:search]).joins(:cities)
  end


  # GET /cities/1
  # GET /cities/1.json
  def show
  end

  # GET /cities/new
  def new
    @city = City.new
  end

  # GET /cities/1/edit
  def edit
  end

  # POST /cities
  # POST /cities.json
  def create
    @city = City.new(city_params)

    respond_to do |format|
      if @city.save
        format.html { redirect_to @city, notice: 'City was successfully created.' }
        format.json { render :show, status: :created, location: @city }
      else
        format.html { render :new }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cities/1
  # PATCH/PUT /cities/1.json
  def update
    respond_to do |format|
      if @city.update(city_params)
        format.html { redirect_to @city, notice: 'City was successfully updated.' }
        format.json { render :show, status: :ok, location: @city }
      else
        format.html { render :edit }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cities/1
  # DELETE /cities/1.json
  def destroy
    @city.destroy
    respond_to do |format|
      format.html { redirect_to cities_url, notice: 'City was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  #private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find_by_city_name(params[:search])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_params
      params.require(:city).permit(:city_name, :city_desc)
    end
end
