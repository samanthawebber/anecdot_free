class MementosController < ApplicationController
  before_action :set_memento, only: %i[ show edit update destroy ]

  # GET /mementos or /mementos.json
  def index
    @mementos = Memento.all
  end

  # GET /mementos/1 or /mementos/1.json
  def show
  end

  # GET /mementos/new
  def new
    @memento = Memento.new
  end

  # GET /mementos/1/edit
  def edit
  end

  # POST /mementos or /mementos.json
  def create
    binding.irb
    @memento = Memento.new(memento_params)

    respond_to do |format|
      if @memento.save
        format.html { redirect_to memento_url(@memento), notice: "Memento was successfully created." }
        format.json { render :show, status: :created, location: @memento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @memento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mementos/1 or /mementos/1.json
  def update
    respond_to do |format|
      if @memento.update(memento_params)
        format.html { redirect_to memento_url(@memento), notice: "Memento was successfully updated." }
        format.json { render :show, status: :ok, location: @memento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @memento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mementos/1 or /mementos/1.json
  def destroy
    @memento.destroy!

    respond_to do |format|
      format.html { redirect_to mementos_url, notice: "Memento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memento
      @memento = Memento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def memento_params
      params.require(:memento).permit(:fname, :lname, story: [:exposition, :rising_action, :climax, :falling_action, :resolution])
    end
end
