class EntryCategoriesController < ApplicationController
  before_action :set_entry_category, only: [:show, :edit, :update, :destroy]

  # GET /entry_categories
  # GET /entry_categories.json
  def index
    @entry_categories = EntryCategory.all
  end

  # GET /entry_categories/1
  # GET /entry_categories/1.json
  def show
  end

  # GET /entry_categories/new
  def new
    @entry_category = EntryCategory.new
  end

  # GET /entry_categories/1/edit
  def edit
  end

  # POST /entry_categories
  # POST /entry_categories.json
  def create
    @entry_category = EntryCategory.new(entry_category_params)

    respond_to do |format|
      if @entry_category.save
        format.html { redirect_to @entry_category, notice: 'Entry category was successfully created.' }
        format.json { render :show, status: :created, location: @entry_category }
      else
        format.html { render :new }
        format.json { render json: @entry_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entry_categories/1
  # PATCH/PUT /entry_categories/1.json
  def update
    respond_to do |format|
      if @entry_category.update(entry_category_params)
        format.html { redirect_to @entry_category, notice: 'Entry category was successfully updated.' }
        format.json { render :show, status: :ok, location: @entry_category }
      else
        format.html { render :edit }
        format.json { render json: @entry_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entry_categories/1
  # DELETE /entry_categories/1.json
  def destroy
    @entry_category.destroy
    respond_to do |format|
      format.html { redirect_to entry_categories_url, notice: 'Entry category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry_category
      @entry_category = EntryCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_category_params
      params.require(:entry_category).permit(:name)
    end
end
