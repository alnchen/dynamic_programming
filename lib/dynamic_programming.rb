class DynamicProgramming
  def initialize
    @blair_cache = { 1 => 1, 2 => 2 }
    @frog_cache = {
      1 => [[1]],
      2 => [[1, 1], [2]],
      3 => [[1, 1, 1], [1, 2], [2, 1], [3]]
    }
    @maze_cache = {}
    @super_frog_cache = {
      1 => [[1]],
      2 => [[1, 1]],
      3 => [[1, 1], [2]]
    }
    
  end

  def blair_nums(n)

    # return 1 if n == 1
    # return 2 if n == 2
    # blair_nums(n-1) + blair_nums(n-2) + ((2 * n) - 3)
    return @blair_cache[n] if @blair_cache[n]
    val = blair_nums(n - 1) + blair_nums(n - 2) + ((2 * n) - 1)
    @blair_cache[n] = val
  end

  def frog_hops(n)
    # integer partitions = splitting up "steps"
    # time complexity bounded by the number of integer partitions
    return if n >= 1000
    frog_cache_builder(n)
    @frog_cache[n]
  end

  def frog_cache_builder(n)
    (4..n).each do |n|
      @frog_cache[n] =
      @frog_cache[n - 1].map { |subset| subset + [1] } +
      @frog_cache[n - 2].map { |subset| subset + [2] } +
      @frog_cache[n - 3].map { |subset| subset + [3] }
    end
  end

  # def frog_hops_top_down(n)
  #   return @frog_cache[n] if @frog_cache[n]
  #
  # end

  def super_frog_hops(n, k)

  end

  def super_hops_cache_builder(k)

  end

  def make_change(amt, coins)

  end

  def maze_solver(maze, start_pos, end_pos)

end
