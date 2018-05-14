require 'test_helper'

class RelationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relation = relations(:one)
  end

  test "should get index" do
    get relations_url, as: :json
    assert_response :success
  end

  test "should create relation" do
    assert_difference('Relation.count') do
      post relations_url, params: { relation: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show relation" do
    get relation_url(@relation), as: :json
    assert_response :success
  end

  test "should update relation" do
    patch relation_url(@relation), params: { relation: {  } }, as: :json
    assert_response 200
  end

  test "should destroy relation" do
    assert_difference('Relation.count', -1) do
      delete relation_url(@relation), as: :json
    end

    assert_response 204
  end
end
