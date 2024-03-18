class LovenotesController < ApplicationController
  before_action :set_lovenote, only: %i[ show edit update destroy ]

  # GET /lovenotes or /lovenotes.json
  def index
    @lovenotes = Lovenote.all
  end

  # GET /lovenotes/1 or /lovenotes/1.json
  def show
  end

  # GET /lovenotes/new
  def new
    @lovenote = Lovenote.new
  end

  # GET /lovenotes/1/edit
  def edit
  end

  # POST /lovenotes or /lovenotes.json
  def create
    @lovenote = Lovenote.new(lovenote_params)

    respond_to do |format|
      if @lovenote.save
        format.html { redirect_to lovenote_url(@lovenote), notice: "Lovenote was successfully created." }
        format.json { render :show, status: :created, location: @lovenote }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lovenote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lovenotes/1 or /lovenotes/1.json
  def update
    respond_to do |format|
      if @lovenote.update(lovenote_params)
        format.html { redirect_to lovenote_url(@lovenote), notice: "Lovenote was successfully updated." }
        format.json { render :show, status: :ok, location: @lovenote }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lovenote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lovenotes/1 or /lovenotes/1.json
  def destroy
    @lovenote.destroy!

    respond_to do |format|
      format.html { redirect_to lovenotes_url, notice: "Lovenote was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lovenote
      @lovenote = Lovenote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lovenote_params
      params.require(:lovenote).permit(:story)
    end
end
