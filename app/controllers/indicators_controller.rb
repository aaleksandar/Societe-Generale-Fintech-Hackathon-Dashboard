class IndicatorsController < ApplicationController
  before_action :set_indicator, only: [:show, :edit, :update, :destroy]

  # GET /indicators
  # GET /indicators.json
  def index
    @indicators = Indicator.all
    @indicator = Indicator.new
  end

  # GET /indicators/1
  # GET /indicators/1.json
  def show
  end

  # GET /indicators/new
  def new
    @indicator = Indicator.new
  end

  # GET /indicators/1/edit
  def edit
  end

  # POST /indicators
  # POST /indicators.json
  def create
    @indicator = Indicator.new(indicator_params)

    respond_to do |format|
      if @indicator.save
        update_indicators
        format.html { redirect_to indicators_path, notice: 'Indicator was successfully created.' }
        format.json { render :show, status: :created, location: @indicator }
      else
        format.html { render :new }
        format.json { render json: @indicator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indicators/1
  # PATCH/PUT /indicators/1.json
  def update
    respond_to do |format|
      if @indicator.update(indicator_params)
        update_indicators
        format.html { redirect_to indicators_path, notice: 'Indicator was successfully updated.' }
        format.json { render :show, status: :ok, location: @indicator }
      else
        format.html { render :edit }
        format.json { render json: @indicator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indicators/1
  # DELETE /indicators/1.json
  def destroy
    @indicator.destroy
    respond_to do |format|
      format.html { redirect_to indicators_url, notice: 'Indicator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def update_indicators
      Indicator.where(status: 'new').each do |indicator|
        url = "http://40e0f9fb.ngrok.io/addIndicator" +
          "?type=like" +
          "&product=#{indicator.product}" +
          "&name=#{indicator.name}" +
          "&score=#{indicator.score}"

        begin
          factor = open(url).read.to_f

          if factor != 0
            factor = (factor * 100).to_i
            User.all.each do |user|
              if (indicator.product == 'Stambeni')
                Factor.create!(chance: user.chance, product: indicator.product, title: "Liked #{indicator.name}", amount: factor)
                user.chance.update!(kredit_stambeni: user.chance.kredit_stambeni + factor)
              elsif (indicator.product == 'Auto')
                Factor.create!(chance: user.chance, product: indicator.product, title: "Liked #{indicator.name}", amount: factor)
                user.chance.update!(kredit_auto: user.chance.kredit_auto + factor)
              elsif (indicator.product == 'Keš')
                Factor.create!(chance: user.chance, product: indicator.product, title: "Liked #{indicator.name}", amount: factor)
                user.chance.update!(kredit_kes: user.chance.kredit_kes + factor)
              elsif (indicator.product == 'Evergrin')
                Factor.create!(chance: user.chance, product: indicator.product, title: "Liked #{indicator.name}", amount: factor)
                user.chance.update!(kredit_evergrin: user.chance.kredit_evergrin + factor)
              elsif (indicator.product == 'Fluo')
                Factor.create!(chance: user.chance, product: indicator.product, title: "Liked #{indicator.name}", amount: factor)
                user.chance.update!(kredit_fluo: user.chance.kredit_fluo + factor)
              elsif (indicator.product == 'Potrošački')
                Factor.create!(chance: user.chance, product: indicator.product, title: "Liked #{indicator.name}", amount: factor)
                user.chance.update!(kredit_potrosacki: user.chance.kredit_potrosacki + factor)
              end
            end
          end

          indicator.update!(status: 'old')
        rescue
        end
      end

    end

    # Use callbacks to share common setup or constraints between actions.
    def set_indicator
      @indicator = Indicator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indicator_params
      params.require(:indicator).permit(:product, :name, :score, :status)
    end
end
