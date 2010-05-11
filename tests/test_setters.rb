
class SettersTest < Test::Unit::TestCase

  def test_setter_should_be_called_when_direct_assigment
    score = Score.new
    score.grade = 3.0

    assert_equal 3.0, score.grade
    assert score.graded_at
    assert score.graded_at.is_a?(Time)
  end

  def test_setters_are_used_when_creating_a_new_object
    score = Score.new :grade => 3.0

    assert_equal 3.0, score.grade
    assert score.graded_at
    assert score.graded_at.is_a?(Time)
  end
end
