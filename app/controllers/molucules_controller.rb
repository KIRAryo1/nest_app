class MoluculesController < ApplicationController
  before_action :set_molucule, only: [:show, :edit, :update, :destroy]

  # GET /molucules
  # GET /molucules.json
  def index
    @molucules = Molucule.all
  end

  # GET /molucules/1
  # GET /molucules/1.json
  def show
  end

  # GET /molucules/new
  def new
    @molucule = Molucule.new
  end

  # GET /molucules/1/edit
  def edit
  end

  # POST /molucules
  # POST /molucules.json
  def create
    @molucule = Molucule.new(molucule_params)

    respond_to do |format|
      if @molucule.save
        format.html { redirect_to @molucule, notice: 'Molucule was successfully created.' }
        format.json { render :show, status: :created, location: @molucule }
      else
        format.html { render :new }
        format.json { render json: @molucule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /molucules/1
  # PATCH/PUT /molucules/1.json
  def update
    respond_to do |format|
      if @molucule.update(molucule_params)
        format.html { redirect_to @molucule, notice: 'Molucule was successfully updated.' }
        format.json { render :show, status: :ok, location: @molucule }
      else
        format.html { render :edit }
        format.json { render json: @molucule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /molucules/1
  # DELETE /molucules/1.json
  def destroy
    @molucule.destroy
    respond_to do |format|
      format.html { redirect_to molucules_url, notice: 'Molucule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_molucule
      @molucule = Molucule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def molucule_params
      params.require(:molucule).permit(:name)
    end
end
