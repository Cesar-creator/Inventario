class ProductsController < ApplicationController
  skip_before_action :protect_pages
  before_action :set_product, only: %i[ show edit update destroy ]

  # GET /products or /products.json
  def index
    @products = Product.all.with_attached_foto.order(created_at: :asc).load_async
    respond_to do |format|
      format.html
      format.xlsx {
        render xlsx: "index", filename: "Listado de productos.xlsx"
        #response.headers["Content-Disposition"] = 'attachment; filename="Listado de productos.xlsx"'
      }
    end
  end

  # GET /products/1 or /products/1.json
  def show
    respond_to do |format|
      format.html
      format.xlsx {
        response.headers["Content-Disposition"] = "attachment; filename=\"Listado de movimientos - #{@product.id}.xlsx\""
      }
    end
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to product_url(@product), notice: "El Producto ha sido Creado." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to products_url, notice: "El Producto ha sido Actualizado." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url, notice: "El Producto ha sido Destruido." }
    end
  end

  def new_movement
    @product = Product.find(params[:id])
    @movement = Movement.new
  end

  def create_movement
    @product = Product.find(params[:id])
    @movement = Movement.new(movement_params)
    @movement.product_id = @product.id

    if @movement.save
      redirect_to products_url, notice: "Se ha creado un Movimiento Correctamente."
    else
      flash[:notice] = "Ha ocurrido un error al crear el Movimiento."
      render :new_movement, status: :unprocessable_entity
    end
  end

  private

  def movement_params
    params.require(:movement).permit(:quantity, :movement_type, :proveedor_id, :client_id, :comment, :fecha_expiracion)
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def product_params
    params.require(:product).permit(:nombre, :descripcion, :foto, :category_id, :cantidadMInima)
  end
end
