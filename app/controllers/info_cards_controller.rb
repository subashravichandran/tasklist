class InfoCardsController < ApplicationController
  before_action :set_info_card, only: %i[ show edit update destroy ]

  # GET /info_cards or /info_cards.json
  def index
    @info_cards = InfoCard.all
  end

  # GET /info_cards/1 or /info_cards/1.json
  def show
  end

  # GET /info_cards/new
  def new
    @info_card = InfoCard.new
  end

  # GET /info_cards/1/edit
  def edit
  end

  # POST /info_cards or /info_cards.json
  def create
    @info_card = InfoCard.new(info_card_params)

    respond_to do |format|
      if @info_card.save
        format.html { redirect_to @info_card, notice: "Info card was successfully created." }
        format.json { render :show, status: :created, location: @info_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @info_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /info_cards/1 or /info_cards/1.json
  def update
    respond_to do |format|
      if @info_card.update(info_card_params)
        format.html { redirect_to @info_card, notice: "Info card was successfully updated." }
        format.json { render :show, status: :ok, location: @info_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @info_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /info_cards/1 or /info_cards/1.json
  def destroy
    @info_card.destroy!

    respond_to do |format|
      format.html { redirect_to info_cards_path, status: :see_other, notice: "Info card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info_card
      @info_card = InfoCard.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def info_card_params
      params.expect(info_card: [ :title, :description ])
    end
end
