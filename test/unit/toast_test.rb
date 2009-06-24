require 'test_helper'

class ToastTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Toast.new.valid?
  end
end
