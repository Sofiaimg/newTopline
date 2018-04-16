require 'test_helper'

class SellerAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seller_account = seller_accounts(:one)
  end

  test "should get index" do
    get seller_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_seller_account_url
    assert_response :success
  end

  test "should create seller_account" do
    assert_difference('SellerAccount.count') do
      post seller_accounts_url, params: { seller_account: { account: @seller_account.account, address: @seller_account.address, bank: @seller_account.bank, seller_id: @seller_account.seller_id, swift: @seller_account.swift } }
    end

    assert_redirected_to seller_account_url(SellerAccount.last)
  end

  test "should show seller_account" do
    get seller_account_url(@seller_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_seller_account_url(@seller_account)
    assert_response :success
  end

  test "should update seller_account" do
    patch seller_account_url(@seller_account), params: { seller_account: { account: @seller_account.account, address: @seller_account.address, bank: @seller_account.bank, seller_id: @seller_account.seller_id, swift: @seller_account.swift } }
    assert_redirected_to seller_account_url(@seller_account)
  end

  test "should destroy seller_account" do
    assert_difference('SellerAccount.count', -1) do
      delete seller_account_url(@seller_account)
    end

    assert_redirected_to seller_accounts_url
  end
end
