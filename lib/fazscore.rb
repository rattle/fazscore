class FAZScore

  attr_accessor :decay, :population, :sqr_avg, :avg

  def initialize(decay,population)
    @sqr_avg = @avg = 0
    @decay = decay
    population.each { |p| self.update(p) }
  end

  def update(value)
    value = value.to_f
    if @avg == 0 and @sqr_avg == 0:
      @avg = value
      @sqr_avg = value ** 2
    else
     @avg = @avg * @decay + value * (1 - @decay)
     @sqr_avg = @sqr_avg * @decay + (value ** 2) * (1 - @decay)
    end
  end

  def std
    return Math.sqrt(@sqr_avg - @avg ** 2)
  end

  def score(obs)
    if self.std() == 0
      return 0
    else
      return (obs - self.avg) / self.std()
    end
  end
end
