class Instructor < Member

  attr_accessor :bio, :skills

  def initialize(name, bio)
    super (name)
    @bio = bio
    @skills = []
  end

  def add_skill(skill)
    @skills << skill
  end

end
