class EmbedCodesController < ApplicationController
  before_action :set_embed_code, only: [ :edit, :update, :destroy]

  # GET /embed_codes
  # GET /embed_codes.json
  def index
    @embed_codes = EmbedCode.all
  end

  # GET /embed_codes/1
  # GET /embed_codes/1.json
  def show
    @event_id = params[:event_id]
    @university_id = params[:university_id]
    @events_university = EventsUniversity.where(event_id: @event_id, embed_code_university_id: @university_id).take
    @embed_code = EmbedCode.where(events_university_id: @events_university.id)
    if @embed_code.empty?
      @embed_code = EmbedCode.new(events_university_id: @events_university.id)
    end
    @embed_code.save
  end

  # GET /embed_codes/new
  def new
    @embed_code = EmbedCode.new
  end

  # GET /embed_codes/1/edit
  def edit
  end

  # POST /embed_codes
  # POST /embed_codes.json
  def create
    @embed_code = EmbedCode.new(embed_code_params)

    respond_to do |format|
      if @embed_code.save
        format.html { redirect_to @embed_code, notice: 'Embed code was successfully created.' }
        format.json { render :show, status: :created, location: @embed_code }
      else
        format.html { render :new }
        format.json { render json: @embed_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /embed_codes/1
  # PATCH/PUT /embed_codes/1.json
  def update
    respond_to do |format|
      if @embed_code.update(embed_code_params)
        format.html { redirect_to @embed_code, notice: 'Embed code was successfully updated.' }
        format.json { render :show, status: :ok, location: @embed_code }
      else
        format.html { render :edit }
        format.json { render json: @embed_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /embed_codes/1
  # DELETE /embed_codes/1.json
  def destroy
    @embed_code.destroy
    respond_to do |format|
      format.html { redirect_to embed_codes_url, notice: 'Embed code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_embed_code
      @embed_code = EmbedCode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def embed_code_params
      params[:embed_code]
    end
end
