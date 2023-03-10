require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test 'render a list of product' do
    get products_path

    assert_response :success
    assert_select '.product', 2
  end

  test 'render a detailed product page' do
    get product_path(products(:ps4).id)

    assert_response :success
    assert_select '.title', 'PS4 Fat'
    assert_select '.description', 'PS4 en buen estado'
    assert_select '.price', '150'
  end

  test 'can delete a product' do
    assert_difference('Product.count', -1) do
      delete product_path(products(:ps4).id)
    end

    assert_redirected_to products_path
    assert_equal 'Product was successfully destroyed.', flash[:notice]
  end
end
