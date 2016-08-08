class ProgressBar

  def initialize(start = 1, finish = 7)
    @start = start
    @finish = finish
    @progress = start
  end

def increment
  @progress = @progress + 1
end

def progress
  @progress
end

def finish
  @finish
end

def output
  puts "#{@progress} out of #{@finish}"
end

end
