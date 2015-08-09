class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  # GET /products
  # GET /products.json
  def index
    if params[:q]
<<<<<<< HEAD
      search_term = params[:q] 
      @products = Product.where("name LIKE ?", "%#{search_term}%")
=======
      search_term = params[:q]
      @products = Product.where("name ILIKE ?", "%#{search_term}%")
>>>>>>> 2442c3f1abaffd1eb2c72e16d78c488d164d6e1f
    else
      @products = Product.all
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
<<<<<<< HEAD
    @comments = @product.comments.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 10)
=======
    @comments = @product.comments.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
>>>>>>> 2442c3f1abaffd1eb2c72e16d78c488d164d6e1f
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to products_path, notice: 'Product was successfully created.' }
<<<<<<< HEAD
        format.json { render :index, status: :created, location: @product }
=======
        format.json { render :show, status: :created, location: @product }
>>>>>>> 2442c3f1abaffd1eb2c72e16d78c488d164d6e1f
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
<<<<<<< HEAD
      params.require(:product).permit(:name, :description, :image_url, :color, :price)
=======
      params.require(:product).permit(:name, :description, :image_url, :colour, :price)
>>>>>>> 2442c3f1abaffd1eb2c72e16d78c488d164d6e1f
    end
end