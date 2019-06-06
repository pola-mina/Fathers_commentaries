require 'test_helper'

class FatherCommentariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @father_commentary = father_commentaries(:one)
  end

  test "should get index" do
    get father_commentaries_url
    assert_response :success
  end

  test "should get new" do
    get new_father_commentary_url
    assert_response :success
  end

  test "should create father_commentary" do
    assert_difference('FatherCommentary.count') do
      post father_commentaries_url, params: { father_commentary: {  } }
    end

    assert_redirected_to father_commentary_url(FatherCommentary.last)
  end

  test "should show father_commentary" do
    get father_commentary_url(@father_commentary)
    assert_response :success
  end

  test "should get edit" do
    get edit_father_commentary_url(@father_commentary)
    assert_response :success
  end

  test "should update father_commentary" do
    patch father_commentary_url(@father_commentary), params: { father_commentary: {  } }
    assert_redirected_to father_commentary_url(@father_commentary)
  end

  test "should destroy father_commentary" do
    assert_difference('FatherCommentary.count', -1) do
      delete father_commentary_url(@father_commentary)
    end

    assert_redirected_to father_commentaries_url
  end
end
