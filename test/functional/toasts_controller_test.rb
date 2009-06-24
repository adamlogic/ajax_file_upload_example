require 'test_helper'

class ToastsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Toast.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Toast.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Toast.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to toast_url(assigns(:toast))
  end
  
  def test_edit
    get :edit, :id => Toast.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Toast.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Toast.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Toast.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Toast.first
    assert_redirected_to toast_url(assigns(:toast))
  end
  
  def test_destroy
    toast = Toast.first
    delete :destroy, :id => toast
    assert_redirected_to toasts_url
    assert !Toast.exists?(toast.id)
  end
end
