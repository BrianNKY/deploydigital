class CategorieCompetencesController < ApplicationController
  before_action :set_categorie_competence, only: [:show, :edit, :update, :destroy]

  # GET /categorie_competences
  # GET /categorie_competences.json
  def index
    @categorie_competences = CategorieCompetence.all
  end

  # GET /categorie_competences/1
  # GET /categorie_competences/1.json
  def show
  end

  # GET /categorie_competences/new
  def new
    @categorie_competence = CategorieCompetence.new
  end

  # GET /categorie_competences/1/edit
  def edit
  end

  # POST /categorie_competences
  # POST /categorie_competences.json
  def create
    @categorie_competence = CategorieCompetence.new(categorie_competence_params)

    respond_to do |format|
      if @categorie_competence.save
        format.html { redirect_to @categorie_competence, notice: 'Categorie competence was successfully created.' }
        format.json { render :show, status: :created, location: @categorie_competence }
      else
        format.html { render :new }
        format.json { render json: @categorie_competence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categorie_competences/1
  # PATCH/PUT /categorie_competences/1.json
  def update
    respond_to do |format|
      if @categorie_competence.update(categorie_competence_params)
        format.html { redirect_to @categorie_competence, notice: 'Categorie competence was successfully updated.' }
        format.json { render :show, status: :ok, location: @categorie_competence }
      else
        format.html { render :edit }
        format.json { render json: @categorie_competence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categorie_competences/1
  # DELETE /categorie_competences/1.json
  def destroy
    @categorie_competence.destroy
    respond_to do |format|
      format.html { redirect_to categorie_competences_url, notice: 'Categorie competence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categorie_competence
      @categorie_competence = CategorieCompetence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categorie_competence_params
      params.require(:categorie_competence).permit(:nom)
    end
end
