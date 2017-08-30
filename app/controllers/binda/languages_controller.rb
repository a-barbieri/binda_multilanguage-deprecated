class Binda::LanguagesController < ApplicationController
  before_action :set_binda_language, only: [:show, :edit, :update, :destroy]

  # GET /binda/languages
  def index
    @binda_languages = Binda::Language.all
  end

  # GET /binda/languages/1
  def show
  end

  # GET /binda/languages/new
  def new
    @binda_language = Binda::Language.new
  end

  # GET /binda/languages/1/edit
  def edit
  end

  # POST /binda/languages
  def create
    @binda_language = Binda::Language.new(binda_language_params)

    if @binda_language.save
      redirect_to @binda_language, notice: 'Language was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /binda/languages/1
  def update
    if @binda_language.update(binda_language_params)
      redirect_to @binda_language, notice: 'Language was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /binda/languages/1
  def destroy
    @binda_language.destroy
    redirect_to binda_languages_url, notice: 'Language was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_binda_language
      @binda_language = Binda::Language.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def binda_language_params
      params.require(:binda_language).permit(:lang, :selected)
    end
end
