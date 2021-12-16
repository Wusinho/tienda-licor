class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy]

  # GET /products
  def index
    @products = Product.all
 
    render json: @products
  end

  def search
      
        @products = Product.search(
          params[:cid],
          params[:name],
          params[:discount],
          params[:price],
        )
      
      render json: @products
        
        # obj = Hash.new(0)
        #   @name.each { |p| obj[p] += 1}
        #   @categories.each {|p| obj[p] += 1}
        #   @unique = []
        #   obj.each { |key, value| @unique << key if value > 1}

        # render json: {
        #   prod: @unique,
        #   cat: @category,
        #   name: @name,
        #   other: 'hell'
      
        #  }
      # else
      #   @products = Product.search_name(params[:name])
      #   render json: {
         
      #     prod: @products,
      #     filt: []
      #    }
      # end

  
  end

  # def filter1
  #   @products = Product.filter(params[:cid])
  #   render json: @products
  # end

  # GET /products/1
  def show
    render json: @product
  end

  # POST /products
  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :url_image, :price, :discount, :category_id)
    end

end
