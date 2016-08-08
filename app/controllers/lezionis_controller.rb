class LezionisController < ApplicationController
  before_action :set_lezioni, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_trainer!, except: [:index, :show]
  before_action :check_trainer, only: [:edit, :update, :destroy]

  # GET /lezionis
  # GET /lezionis.json
  def index
    @lezionis = Lezioni.all
  end

  # GET /lezionis/1
  # GET /lezionis/1.json
  def show
  end

  # GET /lezionis/new
  def new
    @lezioni = current_trainer.lezionis.build
  end

  # GET /lezionis/1/edit
  def edit
  end

  # POST /lezionis
  # POST /lezionis.json
  def create
    @lezioni = current_trainer.lezionis.build(lezioni_params)

    respond_to do |format|
      if @lezioni.save
        format.html { redirect_to @lezioni, notice: 'Lezioni was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /lezionis/1
  # PATCH/PUT /lezionis/1.json
  def update
    respond_to do |format|
      if @lezioni.update(lezioni_params)
        format.html { redirect_to @lezioni, notice: 'Lezioni was successfully updated.' }
        format.json { render :show, status: :ok, location: @lezioni }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /lezionis/1
  # DELETE /lezionis/1.json
  def destroy
    @lezioni.destroy
    respond_to do |format|
      format.html { redirect_to lezionis_url, notice: 'Lezioni was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lezioni
      @lezioni = Lezioni.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lezioni_params
      params.require(:lezioni).permit(:titolo, :prezzo, :descrizione, :date, :park, :meeting_point, :equipment, :city, :time, :numero_di_iscritti, :minutes)
    end

    def check_trainer
      if current_trainer != @lezioni.trainer
        redirect_to root_url, alert: "Non hai accesso a questa pagina"
      end
    end
end
