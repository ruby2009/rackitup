require 'minitest/autorun'
require 'minitest/pride'
require "rack/test"
require_relative 'server'

class TestServer < Minitest::Test

  include Rack::Test::Methods

    def test_bob_ross
      get "/bobross"
      assert last_response.ok?
      assert_equal "I'm sort of a softy, I couldn't shoot Bambi except with a camera. And just raise cain. We don't have to be committed. We are just playing here.", last_response.body
    end

    def test_bacon

    end

    def test_hairy

    end

    def test_num

    end

    def test_a_404
      get "/serghy45jt65ed"
      refute last_response.ok?
      assert_equal 404, last_response.status
      assert_equal "We're sorry. We couldn't that.", last_response.body
    end

end
