class CharacterTunesController < ApplicationController
  before_action :set_character_tune, only: %i[ show edit update destroy ]

  # GET /character_tunes or /character_tunes.json
  def index
    @character_tunes = CharacterTune.all
  end

  # GET /character_tunes/1 or /character_tunes/1.json
  def show
  end

  # GET /character_tunes/new
  def new
    @character_tune = CharacterTune.new
  end

  # GET /character_tunes/1/edit
  def edit
  end

  # POST /character_tunes or /character_tunes.json
  def create
    @character_tune = CharacterTune.new(character_tune_params)

    respond_to do |format|
      if @character_tune.save
        format.html { redirect_to character_tune_url(@character_tune), notice: "Character tune was successfully created." }
        format.json { render :show, status: :created, location: @character_tune }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @character_tune.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_tunes/1 or /character_tunes/1.json
  def update
    respond_to do |format|
      if @character_tune.update(character_tune_params)
        format.html { redirect_to character_tune_url(@character_tune), notice: "Character tune was successfully updated." }
        format.json { render :show, status: :ok, location: @character_tune }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @character_tune.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_tunes/1 or /character_tunes/1.json
  def destroy
    @character_tune.destroy!

    respond_to do |format|
      format.html { redirect_to character_tunes_url, notice: "Character tune was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_tune
      @character_tune = CharacterTune.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def character_tune_params
      params.require(:character_tune).permit(:character_id, :tune_id)
    end
end
