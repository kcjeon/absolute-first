require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  
  test "unique_tag" do
  	quote = Quote.create(:author => 'Cassie Jeon', :saying => 'Always pizza time.')
	expected = 'CJ#' + quote.id.to_s
	actual = quote.unique_tag
	assert_equal expected, actual
  end
end
