class CgusController < ApplicationController
  before_action :set_cgu, only: [:show, :edit, :update, :destroy]

  # GET /cgus
  # GET /cgus.json
  def index
    @cgus = Cgu.all
  end

  # GET /cgus/1
  # GET /cgus/1.json
  def show
  end

  # GET /cgus/new
  def new
    @cgu = Cgu.new
  end

  # GET /cgus/1/edit
  def edit
  end

  # POST /cgus
  # POST /cgus.json
  def create
    @cgu = Cgu.new(cgu_params)

    respond_to do |format|
      if @cgu.save
        format.html { redirect_to @cgu, notice: 'Cgu was successfully created.' }
        format.json { render :show, status: :created, location: @cgu }
      else
        format.html { render :new }
        format.json { render json: @cgu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cgus/1
  # PATCH/PUT /cgus/1.json
  def update
    respond_to do |format|
      if @cgu.update(cgu_params)
        format.html { redirect_to @cgu, notice: 'Cgu was successfully updated.' }
        format.json { render :show, status: :ok, location: @cgu }
      else
        format.html { render :edit }
        format.json { render json: @cgu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cgus/1
  # DELETE /cgus/1.json
  def destroy
    @cgu.destroy
    respond_to do |format|
      format.html { redirect_to cgus_url, notice: 'Cgu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cgu
      @cgu = Cgu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cgu_params
      params.fetch(:cgu, {})
    end
end
