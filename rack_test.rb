require 'minitest/autorun'
require 'minitest/pride'
require "rack/test"
require_relative 'app'

class TestServer < Minitest::Test

  include Rack::Test::Methods

    def app
      App
    end

    def test_bob_ross
      get "/bobross"
      assert last_response.ok?
      assert_equal "I'm sort of a softy, I couldn't shoot Bambi except with a camera. And just raise cain. We don't have to be committed. We are just playing here.", last_response.body
    end

    def test_bacon
      get "/bacon"
      assert last_response.ok?
      assert_equal "Spicy jalapeno bacon ipsum dolor amet meatloaf strip steak beef fatback drumstick sausage corned beef. Shankle picanha kielbasa, pork loin beef ribs t-bone ball tip frankfurter ham sausage tenderloin salami short ribs spare ribs beef. Biltong pig shankle turkey jowl chicken corned beef cow pork boudin drumstick tenderloin ground round filet mignon. Sirloin rump pig tail, doner fatback boudin cupim capicola bresaola chuck. Chuck tail burgdoggen, pork loin shank porchetta ribeye jowl andouille biltong pork chop spare ribs.", last_response.body
    end

    def test_hairy
      get "/hairy"
      assert last_response.ok?
      assert_equal "Alpha trion Freddie mercury hairy lipsum alpha trion gentleman blacksmith felis great dictator, alpha trion hairy lipsum blacksmith great dictator hairy kid at school got milk leader of men alpha trion gentleman cappuccino collector felis wario brandy Freddie mercury hulk hogan? Mexican’t imperial Nostrilis tickler clone zone shopper Daniel plainview vincent price dolor sit amet, French café patron hairy kid at school Nostrilis tickler man markings clone zone shopper mexican’t imperial alpha trion brad pitt clone zone shopper soup strainer vincent price Daniel plainview east european dolor sit amet?", last_response.body
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
