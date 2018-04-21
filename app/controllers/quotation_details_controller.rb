class QuotationDetailsController < ApplicationController
  before_action :set_quotation_detail, only: [:show, :edit, :update, :destroy]
  before_action :set_quotation, only: [:index, :new, :show, :create, :edit, :update, :destroy]
  # GET /quotations/:quotation_id/quotation_details
  # GET /quotations/:quotation_id/quotation_details.json
  def index
    @quotation_details = @quotation.quotation_details

    respond_to do |format|
      format.html # index.html.erb
      format.json {render json: @quotation_details}
    end
  end

  # GET /quotations/:quotation_id/quotation_details/:id
  # GET /quotation_details/:id.json
  def show
    @quotation_detail = @quotation.quotation_details.find(params[:id])
    respond_to do |format|
      format.html #show.html.erb
      format.json {render json: @quotation_detail}
    end
  end

  # GET /quotations/:quotations_id/quotation_details/new
  # GET /quotations/:quotations_id/quotation_details/new.json

  def new
    @quotation_detail = @quotation.quotation_details.build
    respond_to do |format|
      format.html # new.html.erb
      format.json {render json: @quotation_detail}
    end
  end

  # GET /quotations/:quotation_id/:id/edit
  def edit
    @quotation_detail = @quotation.quotation_details.find(params[:id])
  end

  # POST /quotations/:quotation_id/quotation_details
  # POST /quotations/:quotation_id/quotation_details.json
  def create
    @quotation_detail = @quotation.quotation_details.create(quotation_detail_params)
    respond_to do |format|
      if @quotation_detail.save
        format.html { redirect_to([@quotation_detail.quotation, @quotation_detail], notice: 'Quotation detail was successfully created.') }
        format.json { render json: @quotation_detail, status: :created, location: [@quotation_detail.quotation, @quotation_detail] }
      else
        format.html { render :new }
        format.json { render json: @quotation_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quotations/:quotations_id/quotation_details/:id
  # PATCH/PUT /quotations/:quotation_id/:id.json
  def update
    @quotation_detail = @quotation.quotation_details.find(params[:id])
    respond_to do |format|
      if @quotation_detail.update_attributes(quotation_detail_params)
        format.html { redirect_to([@quotation_detail.quotation, @quotation_detail], notice: 'Quotation detail was successfully updated.' )}
        format.json { head :ok }
      else
        format.html { render :edit }
        format.json { render json: @quotation_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quotations/:quotation_id/quotation_details/1
  # DELETE /quotations/:quotation_id/quotation_details/1.json
  def destroy
    @quotation_detail = @quotation.quotation_details.find(params[:id])
    @quotation_detail.destroy
    respond_to do |format|
      format.html { redirect_to(quotation_quotation_details_url, notice: 'Quotation detail was successfully destroyed.' )}
      format.json { head :ok }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quotation_detail
      @quotation_detail = QuotationDetail.find(params[:id])
    end

    def set_quotation
      @quotation = Quotation.find(params[:quotation_id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def quotation_detail_params
      params.require(:quotation_detail).permit(:quotation_id, :brand_id, :product_id, :style, :color_id, :quantity, :size_id, :ratio, :delivery_date, :target_price, :final_price, :otherdetail, :total, :status,
                      variants_attributes: Variant.attribute_names.map(&:to_sym).push(:_destroy))
    end
end
