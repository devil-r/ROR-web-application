class ComplainListsController < ApplicationController
  before_action :set_complain_list, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /complain_lists
  # GET /complain_lists.json
  def index
    if current_user.admin?
      @complain_lists = ComplainList.all
    else
      @complain_lists = ComplainList.where(:user_id => current_user.id)
  end
end
  # GET /complain_lists/1
  # GET /complain_lists/1.json
  def show
  end

  # GET /complain_lists/new
  def new
    @complain_list = ComplainList.new
  end

  # GET /complain_lists/1/edit
  def edit
  end

  # POST /complain_lists
  # POST /complain_lists.json
  def create
    @complain_list = ComplainList.new(complain_list_params)
    @complain_list.user_id=current_user.id
    respond_to do |format|
      if @complain_list.save
        format.html { redirect_to @complain_list, notice: 'Complain list was successfully created.' }
        format.json { render :show, status: :created, location: @complain_list }
      else
        format.html { render :new }
        format.json { render json: @complain_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /complain_lists/1
  # PATCH/PUT /complain_lists/1.json
  def update
    respond_to do |format|
      if @complain_list.update(complain_list_params)
        format.html { redirect_to @complain_list, notice: 'Complain list was successfully updated.' }
        format.json { render :show, status: :ok, location: @complain_list }
      else
        format.html { render :edit }
        format.json { render json: @complain_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complain_lists/1
  # DELETE /complain_lists/1.json
  def destroy
    @complain_list.destroy
    respond_to do |format|
      format.html { redirect_to complain_lists_url, notice: 'Complain list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complain_list
      @complain_list = ComplainList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def complain_list_params
      params.require(:complain_list).permit(:title, :description,:problem_status)
    end
end
