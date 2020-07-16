class SavedsController < ApplicationController
  before_action :set_saved, only: [:show, :edit, :update, :destroy]

  # GET /saveds
  # GET /saveds.json
  def index
    @saveds = Saved.all
  end

  # GET /saveds/1
  # GET /saveds/1.json
  def show
  end

  # GET /saveds/new
  def new
    @saved = Saved.new
  end

  # GET /saveds/1/edit
  def edit
  end

  # POST /saveds
  # POST /saveds.json
  def create
    @saved = Saved.new(saved_params)

    respond_to do |format|
      if @saved.save
        format.html { redirect_to @saved, notice: 'Saved was successfully created.' }
        format.json { render :show, status: :created, location: @saved }
      else
        format.html { render :new }
        format.json { render json: @saved.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saveds/1
  # PATCH/PUT /saveds/1.json
  def update
    respond_to do |format|
      if @saved.update(saved_params)
        format.html { redirect_to @saved, notice: 'Saved was successfully updated.' }
        format.json { render :show, status: :ok, location: @saved }
      else
        format.html { render :edit }
        format.json { render json: @saved.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saveds/1
  # DELETE /saveds/1.json
  def destroy
    @saved.destroy
    respond_to do |format|
      format.html { redirect_to saveds_url, notice: 'Saved was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saved
      @saved = Saved.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def saved_params
      params.fetch(:saved, {})
    end
end
