class BaconLipsum

  def self.lipsum
    "Spicy jalapeno bacon ipsum dolor amet meatloaf strip steak beef fatback drumstick sausage corned beef. Shankle picanha kielbasa, pork loin beef ribs t-bone ball tip frankfurter ham sausage tenderloin salami short ribs spare ribs beef. Biltong pig shankle turkey jowl chicken corned beef cow pork boudin drumstick tenderloin ground round filet mignon. Sirloin rump pig tail, doner fatback boudin cupim capicola bresaola chuck. Chuck tail burgdoggen, pork loin shank porchetta ribeye jowl andouille biltong pork chop spare ribs."
  end

  def self.call(num)
    lipsum * num.to_i
  end

end
