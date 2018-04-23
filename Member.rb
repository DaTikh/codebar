class Member

  attr_accessor :full_name, :members

  def initialize(name)
    @full_name = name
  end

  def introduce
    p "Hi i'm #{@full_name}"
  end

end
