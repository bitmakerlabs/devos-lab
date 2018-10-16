require "minitest/autorun"
require_relative "lab"

class LabTest < MiniTest::Test
  def setup
    @lab = Lab.new
  end

  def test_less_than_zero_returns_true_when_less_than_zero
    #arrange

    #act
    actual = @lab.less_than_zero?(-1)
    expected = true

    #assert
    assert_equal(expected, actual)
  end

  def test_less_than_zero_returns_false_when_is_zero
    actual = @lab.less_than_zero?(0)
    expected = false

    assert_equal(expected, actual)
  end

  def test_less_than_zero_returns_false_when_greater_than_zero
    actual = @lab.less_than_zero?(1)
    expected = false

    assert_equal(expected, actual)
  end

  def test_is_zero_returns_true_when_is_zero
    actual = @lab.is_zero?(0)
    expected = true

    assert_equal(expected, actual)
  end

  def test_is_zero_returns_false_when_not_zero
    actual = @lab.is_zero?(1)
    expected = false

    assert_equal(expected, actual)
  end

  def test_change_name_updates_the_name
    @lab.change_name("Bob")
    actual = @lab.name
    expected = "Bob"

    assert_equal(expected, actual)
  end

  def test_change_name_updates_from_old_name
    old_name = @lab.name
    @lab.change_name("Bob")
    new_name = "Bob"

    refute_equal(new_name, old_name)
  end

  def test_area_returns_width_times_height
    actual = @lab.area
    expected = 200

    assert_equal(expected, actual)
  end
end
