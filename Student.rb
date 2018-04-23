class Student < Member

  attr_accessor :reason

  def initialize(name, reason)
    super (name)
    @reason = reason
  end

end
