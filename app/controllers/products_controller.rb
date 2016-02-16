class ProductsController < ApplicationController
  # before_filter :authenticate_admin!
  before_action  :authenticate_admin!, :set_product, only: [:show, :edit, :update, :destroy]



  # GET /products
  # GET /products.json
  def index
    # puts admin_signed_in?.inspect
    # puts "above"
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @review = Review.new
  end

  # GET /products/new
  def new
    # if admin_signed_in? == false
    #   redirect_to welcome_url
    # end
      # @product = product_admin.products.build
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
    # if admin_signed_in? == false
    #   redirect_to welcome_url
    # end
  end

  # POST /products
  # POST /products.json
  def create
    # if admin_signed_in? == false
    #   redirect_to welcome_url
    # end
    # @product = product_admin.products.build
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    # if admin_signed_in? == false
    #   redirect_to welcome_url
    # end
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
    # if admin_signed_in? == false
    #   redirect_to welcome_url
    # end
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
      params.require(:product).permit(:name, :description, :price_in_dollars)
    end
end
