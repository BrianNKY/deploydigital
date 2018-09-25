class MentionslegalesController < ApplicationController
  before_action :set_mentionslegale, only: [:show, :edit, :update, :destroy]

  # GET /mentionslegales
  # GET /mentionslegales.json
  def index
    
  end

  # GET /mentionslegales/1
  # GET /mentionslegales/1.json
  def show
  end

  # GET /mentionslegales/new
  def new
    @mentionslegale = Mentionslegale.new
  end

  # GET /mentionslegales/1/edit
  def edit
  end

  # POST /mentionslegales
  # POST /mentionslegales.json
  def create
    @mentionslegale = Mentionslegale.new(mentionslegale_params)

    respond_to do |format|
      if @mentionslegale.save
        format.html { redirect_to @mentionslegale, notice: 'Mentionslegale was successfully created.' }
        format.json { render :show, status: :created, location: @mentionslegale }
      else
        format.html { render :new }
        format.json { render json: @mentionslegale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mentionslegales/1
  # PATCH/PUT /mentionslegales/1.json
  def update
    respond_to do |format|
      if @mentionslegale.update(mentionslegale_params)
        format.html { redirect_to @mentionslegale, notice: 'Mentionslegale was successfully updated.' }
        format.json { render :show, status: :ok, location: @mentionslegale }
      else
        format.html { render :edit }
        format.json { render json: @mentionslegale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mentionslegales/1
  # DELETE /mentionslegales/1.json
  def destroy
    @mentionslegale.destroy
    respond_to do |format|
      format.html { redirect_to mentionslegales_url, notice: 'Mentionslegale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentionslegale
      @mentionslegale = Mentionslegale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mentionslegale_params
      params.fetch(:mentionslegale, {})
    end
end
