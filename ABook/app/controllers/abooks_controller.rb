class AbooksController < ApplicationController
  before_action :set_abook, only: [:show, :edit, :update, :destroy]

  # GET /abooks
  # GET /abooks.json
  def index
    @abooks = Abook.all
  end

  # GET /abooks/1
  # GET /abooks/1.json
  def show
  end

  # GET /abooks/new
  def new
    @abook = Abook.new
  end

  # GET /abooks/1/edit
  def edit
  end

  # POST /abooks
  # POST /abooks.json
  def create
    @abook = Abook.new(abook_params)

    respond_to do |format|
      if @abook.save
        format.html { redirect_to @abook, notice: 'Abook was successfully created.' }
        format.json { render action: 'show', status: :created, location: @abook }
      else
        format.html { render action: 'new' }
        format.json { render json: @abook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abooks/1
  # PATCH/PUT /abooks/1.json
  def update
    respond_to do |format|
      if @abook.update(abook_params)
        format.html { redirect_to @abook, notice: 'Abook was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @abook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abooks/1
  # DELETE /abooks/1.json
  def destroy
    @abook.destroy
    respond_to do |format|
      format.html { redirect_to abooks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abook
      @abook = Abook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def abook_params
      params.require(:abook).permit(:first_name, :last_name, :email, :zipcode, :fav_color)
    end
end
