class PaymentTermsController < ApplicationController
  before_action :set_payment_term, only: [:show, :edit, :update, :destroy]

  # GET /payment_terms
  # GET /payment_terms.json
  def index
    @payment_terms = PaymentTerm.all
  end

  # GET /payment_terms/1
  # GET /payment_terms/1.json
  def show
  end

  # GET /payment_terms/new
  def new
    @payment_term = PaymentTerm.new
  end

  # GET /payment_terms/1/edit
  def edit
  end

  # POST /payment_terms
  # POST /payment_terms.json
  def create
    @payment_term = PaymentTerm.new(payment_term_params)

    respond_to do |format|
      if @payment_term.save
        format.html { redirect_to @payment_term, notice: 'Payment term was successfully created.' }
        format.json { render :show, status: :created, location: @payment_term }
      else
        format.html { render :new }
        format.json { render json: @payment_term.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_terms/1
  # PATCH/PUT /payment_terms/1.json
  def update
    respond_to do |format|
      if @payment_term.update(payment_term_params)
        format.html { redirect_to @payment_term, notice: 'Payment term was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment_term }
      else
        format.html { render :edit }
        format.json { render json: @payment_term.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_terms/1
  # DELETE /payment_terms/1.json
  def destroy
    @payment_term.destroy
    respond_to do |format|
      format.html { redirect_to payment_terms_url, notice: 'Payment term was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_term
      @payment_term = PaymentTerm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_term_params
      params.require(:payment_term).permit(:clause, :conditions)
    end
end
