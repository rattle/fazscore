require 'helper'

class TestFazscore < Test::Unit::TestCase

  should "identify the trending term" do
    scores = {}
    HISTORY.keys.each do |term|
      scores[term] = FAZScore.new(0.5, HISTORY[term]).score(CURRENT[term])
    end
    assert_equal 'Ireland', scores.sort {|a,b| a[1]<=>b[1]}.last[0]

  end
end
