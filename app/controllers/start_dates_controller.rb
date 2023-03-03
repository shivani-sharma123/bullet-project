class StartDatesController < ApplicationController
  before_action :set_start_date, only: %i[ show edit update destroy ]

  # GET /start_dates or /start_dates.json
  def index
    @start_dates = StartDate.all
  end

  # GET /start_dates/1 or /start_dates/1.json
  def show
  end

  # GET /start_dates/new
  def new
    @start_date = StartDate.new
  end

  # GET /start_dates/1/edit
  def edit
  end

  # POST /start_dates or /start_dates.json
  def create
    @start_date = StartDate.new(start_date_params)

    respond_to do |format|
      if @start_date.save
        format.html { redirect_to start_date_url(@start_date), notice: "Start date was successfully created." }
        format.json { render :show, status: :created, location: @start_date }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @start_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_dates/1 or /start_dates/1.json
  def update
    respond_to do |format|
      if @start_date.update(start_date_params)
        format.html { redirect_to start_date_url(@start_date), notice: "Start date was successfully updated." }
        format.json { render :show, status: :ok, location: @start_date }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @start_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_dates/1 or /start_dates/1.json
  def destroy
    @start_date.destroy

    respond_to do |format|
      format.html { redirect_to start_dates_url, notice: "Start date was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_date
      @start_date = StartDate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def start_date_params
      params.fetch(:start_date, {})
    end
end
