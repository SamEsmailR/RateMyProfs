class Api::ProfReviewsController < ApplicationController
    before_action :set_prof_review, only: [:show, :update, :destroy]

    def index
        @prof_reviews = ProfReview.all
    end

    def show
    end

    def create
        @prof_review = ProfReview.new(prof_review_params)

        if @prof_review.save
            render :show
        else
            render json: @prof_review.errors.full_messages, status: :unprocessable_entity
        end
    end

    def update
        if @prof_review.update(prof_review.params)
            render :show
        else
            render json: @prof_review.erorrs.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        @prof_review.destroy
        head :no_content
    end

    private

    def set_prof_review
        @prof_review = ProfReview.find(params[:id])
    rescue
        render json: ['Prof Review not found'], status: :not_found
    end

    def prof_review_params
        params.require(:prof_review).permit(:body, :class, :grade)
    end
end