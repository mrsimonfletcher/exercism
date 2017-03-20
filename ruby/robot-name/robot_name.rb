class Robot
  def initialize
    @@names=[]
  end

  def name
    @current_name ||= create_name
  end

  def reset
    @current_name = create_name
  end

  private
  def create_name
    new_name = letters + numbers
    if @@names.include?(new_name)
      create_name
    else
      @@names << new_name
    end
    new_name
  end

  def letters
    [*"A".."Z"].sample(2).join
  end

  def numbers
    [*"0".."9"].sample(3).join
  end
end
