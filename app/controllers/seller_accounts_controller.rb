class SellerAccountsController < ApplicationController
  before_action :set_seller_account, only: [:show, :edit, :update, :destroy]

  # GET /seller_accounts
  # GET /seller_accounts.json
  def index
    @seller_accounts = SellerAccount.all
  end

  # GET /seller_accounts/1
  # GET /seller_accounts/1.json
  def show
  end

  # GET /seller_accounts/new
  def new
    @seller_account = SellerAccount.new
  end

  # GET /seller_accounts/1/edit
  def edit
  end

  # POST /seller_accounts
  # POST /seller_accounts.json
  def create
    @seller_account = SellerAccount.new(seller_account_params)

    respond_to do |format|
      if @seller_account.save
        format.html { redirect_to @seller_account, notice: 'Seller account was successfully created.' }
        format.json { render :show, status: :created, location: @seller_account }
      else
        format.html { render :new }
        format.json { render json: @seller_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seller_accounts/1
  # PATCH/PUT /seller_accounts/1.json
  def update
    respond_to do |format|
      if @seller_account.update(seller_account_params)
        format.html { redirect_to @seller_account, notice: 'Seller account was successfully updated.' }
        format.json { render :show, status: :ok, location: @seller_account }
      else
        format.html { render :edit }
        format.json { render json: @seller_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seller_accounts/1
  # DELETE /seller_accounts/1.json
  def destroy
    @seller_account.destroy
    respond_to do |format|
      format.html { redirect_to seller_accounts_url, notice: 'Seller account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seller_account
      @seller_account = SellerAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seller_account_params
      params.require(:seller_account).permit(:seller_id, :bank, :address, :account, :swift)
    end
end
