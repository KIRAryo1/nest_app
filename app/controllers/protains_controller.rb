class ProtainsController < ApplicationController
  before_action :set_protain, only: [:show, :edit, :update, :destroy]

  # GET /protains
  # GET /protains.json
  def index
    @protains = Protain.all
  end

  # GET /protains/1
  # GET /protains/1.json
  def show
  end

  # GET /protains/new
  def new
    @protain = Protain.new
  end

  # GET /protains/1/edit
  def edit
  end

  # POST /protains
  # POST /protains.json
  def create
    @protain = Protain.new(protain_params)

    respond_to do |format|
      if @protain.save
        format.html { redirect_to @protain, notice: 'Protain was successfully created.' }
        format.json { render :show, status: :created, location: @protain }
      else
        format.html { render :new }
        format.json { render json: @protain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /protains/1
  # PATCH/PUT /protains/1.json
  def update
    respond_to do |format|
      if @protain.update(protain_params)
        format.html { redirect_to @protain, notice: 'Protain was successfully updated.' }
        format.json { render :show, status: :ok, location: @protain }
      else
        format.html { render :edit }
        format.json { render json: @protain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /protains/1
  # DELETE /protains/1.json
  def destroy
    @protain.destroy
    respond_to do |format|
      format.html { redirect_to protains_url, notice: 'Protain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_protain
      @protain = Protain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def protain_params
      params.require(:protain).permit(:name)
    end
end
