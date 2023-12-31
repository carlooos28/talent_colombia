class PerformanceReviewsController < ApplicationController
  before_action :set_performance_review, only: %i[ show edit update destroy ]

  # GET /performance_reviews or /performance_reviews.json
  def index
    @performance_reviews = PerformanceReview.all
  end

  # GET /performance_reviews/1 or /performance_reviews/1.json
  def show
  end

  # GET /performance_reviews/new
  def new
    @performance_review = PerformanceReview.new
  end

  # GET /performance_reviews/1/edit
  def edit
  end

  # POST /performance_reviews or /performance_reviews.json
  def create
    @performance_review = PerformanceReview.new(performance_review_params)

    respond_to do |format|
      if @performance_review.save
        format.html { redirect_to performance_review_url(@performance_review), notice: "Performance review was successfully created." }
        format.json { render :show, status: :created, location: @performance_review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @performance_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /performance_reviews/1 or /performance_reviews/1.json
  def update
    respond_to do |format|
      if @performance_review.update(performance_review_params)
        format.html { redirect_to performance_review_url(@performance_review), notice: "Performance review was successfully updated." }
        format.json { render :show, status: :ok, location: @performance_review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @performance_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /performance_reviews/1 or /performance_reviews/1.json
  def destroy
    @performance_review.destroy!

    respond_to do |format|
      format.html { redirect_to performance_reviews_url, notice: "Performance review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_performance_review
      @performance_review = PerformanceReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def performance_review_params
      params.require(:performance_review).permit(:user_id, :objective_id, :rating, :comments)
    end
end
