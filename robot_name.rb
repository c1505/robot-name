module BookKeeping
  VERSION = 2
end

class Robot
  attr_reader :name

  @@names ||= []
  def initialize
    @name = set_name
  end

  def set_name
    @name ||= rand_letter + rand_letter + rand_number
    if @@names.include?(@name)
      reset
      @@names << @name
      @name
    else
      @@names << @name
      @name
    end
  end

  def rand_letter
    ('A'..'Z').to_a[rand(0..23)]
  end

  def rand_number
    rand(100..999).to_s
  end

  def reset
    @name = rand_letter + rand_letter + rand_number
  end
end