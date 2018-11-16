require 'minitest/autorun'
require 'oven'

class TestSmallOven < MiniTest::Test
    
    def setup
        @oven = SmallOven.new
        @oven.turn_on
    end

    def teardown
        @oven.turn_off
    end

    def test_bake
        @oven.contents = 'turkey'
        assert_equal('golden-brown turkey', @oven.bake)
    end

    def test_empty_oven
        @oven.contents = nil
        assert_raises(OvenEmptyError) { @oven.bake }
    end

    def test_off_oven
        @oven.contents = 'turkey'
        @oven.turn_off
        assert_raises(OvenOffError) { @oven.bake }
    end

end

