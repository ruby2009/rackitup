class BobRossLipsum

  def self.lipsum
    "I'm sort of a softy, I couldn't shoot Bambi except with a camera. And just raise cain. We don't have to be committed. We are just playing here."
  end

  def self.call(num)
    lipsum * num.to_i
  end

end
