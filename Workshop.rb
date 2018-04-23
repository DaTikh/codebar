class Workshop < Member

  attr_accessor :date, :classroom, :students, :teachers

  def initialize(date, classroom)
    @date = date
    @classroom = classroom
    @students = []
    @teachers = []
  end

  def add_participant(member)
    if member.class == Student
      @students << member
    else @teachers << member
    end
  end

  def print_workshop()
    puts "\e[1m\nWorkshop - #{self.date} - Classroom: #{self.classroom}\e[0m"
  end

  def print_students()
    puts "\e[1m\e[3m\nStudents\e[0m"
    @students.each_with_index do |stud, i|
      puts "#{i+1}. #{stud.full_name} - \e[3m\"#{stud.reason}\"\e[0m"
    end
  end

  def print_teachers()
    puts "\e[1m\e[3m\nTeachers\e[0m"
    @teachers.each_with_index do |teach, i|
      puts "#{i+1}. #{teach.full_name} - #{teach.skills.join(", ")}\n   \e[3m\"#{teach.bio}\"\e[0m"
    end
  end

  def print_details()
    print_workshop; print_students; print_teachers;
  end

end
