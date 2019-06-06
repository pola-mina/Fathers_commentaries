class FatherCommentariesController < ApplicationController
  before_action :set_father_commentary, only: [:show, :edit, :update, :destroy]

  # GET /father_commentaries
  # GET /father_commentaries.json
  def index
    @father_commentaries = FatherCommentary.all
  end

  # GET /father_commentaries/1
  # GET /father_commentaries/1.json
  def show
  end

  # GET /father_commentaries/new
  def new
    @father_commentary = FatherCommentary.new
  end

  # GET /father_commentaries/1/edit
  def edit
  end

  # POST /father_commentaries
  # POST /father_commentaries.json
  def create
    @father_commentary = FatherCommentary.new(father_commentary_params)

    respond_to do |format|
      if @father_commentary.save
        format.html { redirect_to @father_commentary, notice: 'Father commentary was successfully created.' }
        format.json { render :show, status: :created, location: @father_commentary }
      else
        format.html { render :new }
        format.json { render json: @father_commentary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /father_commentaries/1
  # PATCH/PUT /father_commentaries/1.json
  def update
    respond_to do |format|
      if @father_commentary.update(father_commentary_params)
        format.html { redirect_to @father_commentary, notice: 'Father commentary was successfully updated.' }
        format.json { render :show, status: :ok, location: @father_commentary }
      else
        format.html { render :edit }
        format.json { render json: @father_commentary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /father_commentaries/1
  # DELETE /father_commentaries/1.json
  def destroy
    @father_commentary.destroy
    respond_to do |format|
      format.html { redirect_to father_commentaries_url, notice: 'Father commentary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_father_commentary
      @father_commentary = FatherCommentary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def father_commentary_params
      params.fetch(:father_commentary, {})
    end
end
