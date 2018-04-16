require 'test_helper'

class SupplierAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supplier_account = supplier_accounts(:one)
  end

  test "should get index" do
    get supplier_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_supplier_account_url
    assert_response :success
  end

  test "should create supplier_account" do
    assert_difference('SupplierAccount.count') do
      post supplier_accounts_url, params: { supplier_account: { account: @supplier_account.account, address: @supplier_account.address, bank: @supplier_account.bank, supplier_id: @supplier_account.supplier_id, swift: @supplier_account.swift } }
    end

    assert_redirected_to supplier_account_url(SupplierAccount.last)
  end

  test "should show supplier_account" do
    get supplier_account_url(@supplier_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_supplier_account_url(@supplier_account)
    assert_response :success
  end

  test "should update supplier_account" do
    patch supplier_account_url(@supplier_account), params: { supplier_account: { account: @supplier_account.account, address: @supplier_account.address, bank: @supplier_account.bank, supplier_id: @supplier_account.supplier_id, swift: @supplier_account.swift } }
    assert_redirected_to supplier_account_url(@supplier_account)
  end

  test "should destroy supplier_account" do
    assert_difference('SupplierAccount.count', -1) do
      delete supplier_account_url(@supplier_account)
    end

    assert_redirected_to supplier_accounts_url
  end
end
