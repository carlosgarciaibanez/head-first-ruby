require 'minitest/autorun'
require 'list_with_commas'

class TestListWithCommas < MiniTest::Test

    def test_it_joins_two_words_with_and
        list = ListWithCommas.new
        list.items = ['apple', 'orange']
        assert_equal('apple and orange', list.join)
    end

    def test_it_joins_three_words_with_commas
        list = ListWithCommas.new
        list.items = ['apple', 'orange', 'pear']
        assert_equal('apple, orange, and pear', list.join)
    end

    def test_it_prints_one_word_alone
        list = ListWithCommas.new
        list.items = ['apple']
        assert_equal('apple', list.join)
    end

end