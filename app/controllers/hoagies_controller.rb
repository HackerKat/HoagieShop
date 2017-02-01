class HoagiesController < ApplicationController
  before_action :set_hoagy, only: [:show, :edit, :update, :destroy]

  # GET /hoagies
  # GET /hoagies.json
  def index
    @hoagies = Hoagy.all
  end

  # GET /hoagies/1
  # GET /hoagies/1.json
  def show
  end

  # GET /hoagies/new
  def new
    @hoagy = Hoagy.new
  end

  # GET /hoagies/1/edit
  def edit
  end

  # POST /hoagies
  # POST /hoagies.json
  def create
    @hoagy = Hoagy.new(hoagy_params)

    respond_to do |format|
      if @hoagy.save
        format.html { redirect_to @hoagy, notice: 'Hoagy was successfully created.' }
        format.json { render :show, status: :created, location: @hoagy }
      else
        format.html { render :new }
        format.json { render json: @hoagy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hoagies/1
  # PATCH/PUT /hoagies/1.json
  def update
    respond_to do |format|
      if @hoagy.update(hoagy_params)
        format.html { redirect_to @hoagy, notice: 'Hoagy was successfully updated.' }
        format.json { render :show, status: :ok, location: @hoagy }
      else
        format.html { render :edit }
        format.json { render json: @hoagy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hoagies/1
  # DELETE /hoagies/1.json
  def destroy
    @hoagy.destroy
    respond_to do |format|
      format.html { redirect_to hoagies_url, notice: 'Hoagy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hoagy
      @hoagy = Hoagy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hoagy_params
      params.require(:hoagy).permit(:name, :bread_id, :ingredient_id, :condiment_id)
    end
end
