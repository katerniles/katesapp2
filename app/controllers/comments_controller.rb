class CommentsController < ApplicationController
load_and_authorize_resource 
skip_authorize_resource :only => [:index, :show]
  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(comment_params)
    @comment.user = current_user
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @product, notice: 'Review was created successfully.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { redirect_to @product, alert: 'Review was not saved successfully.' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = Comment.find params[:id]
    authorize! :destroy, @comment # cancancan command, that will raise exception if current user is
                                  # not authorized to destroy the particular. 

    @comment.destroy
    redirect_to product_url id: params[:product_id]
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :rating)
  end
  
end