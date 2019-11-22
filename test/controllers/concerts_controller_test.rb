require 'test_helper'

class ConcertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @concert = concerts(:one)
  end

  test "should get index" do
    get concerts_url
    assert_response :success
  end

  test "should get new" do
    get new_concert_url
    assert_response :success
  end

  test "should create concert" do
    assert_difference('Concert.count') do
      post concerts_url, params: { concert: { about: @concert.about, comp1bio: @concert.comp1bio, comp1name: @concert.comp1name, comp1pic: @concert.comp1pic, comp2bio: @concert.comp2bio, comp2name: @concert.comp2name, comp2pic: @concert.comp2pic, comp3bio: @concert.comp3bio, comp3name: @concert.comp3name, comp3pic: @concert.comp3pic, comp4bio: @concert.comp4bio, comp4name: @concert.comp4name, comp4pic: @concert.comp4pic, subtitle: @concert.subtitle, title: @concert.title } }
    end

    assert_redirected_to concert_url(Concert.last)
  end

  test "should show concert" do
    get concert_url(@concert)
    assert_response :success
  end

  test "should get edit" do
    get edit_concert_url(@concert)
    assert_response :success
  end

  test "should update concert" do
    patch concert_url(@concert), params: { concert: { about: @concert.about, comp1bio: @concert.comp1bio, comp1name: @concert.comp1name, comp1pic: @concert.comp1pic, comp2bio: @concert.comp2bio, comp2name: @concert.comp2name, comp2pic: @concert.comp2pic, comp3bio: @concert.comp3bio, comp3name: @concert.comp3name, comp3pic: @concert.comp3pic, comp4bio: @concert.comp4bio, comp4name: @concert.comp4name, comp4pic: @concert.comp4pic, subtitle: @concert.subtitle, title: @concert.title } }
    assert_redirected_to concert_url(@concert)
  end

  test "should destroy concert" do
    assert_difference('Concert.count', -1) do
      delete concert_url(@concert)
    end

    assert_redirected_to concerts_url
  end
end
