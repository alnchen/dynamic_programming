class DynamicProgramming
  def initialize
    @blair_cache = { 1 => 1, 2 => 2 }
    @frog_cache = {
      1 => [[1]],
      2 => [[1, 1], [2]],
      3 => [[1, 1, 1], [1, 2], [2, 1], [3]]
    }
    @maze_cache = {}
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
    cache = frog_cache_builder(n)
    cache[n]
  end

  def frog_cache_builder(n)
    cache = {
      1 => [[1]],
      2 => [[1, 1], [2]],
      3 => [[1, 1, 1], [1, 2], [2, 1], [3]]
    }

    return cache if n < 4
    (4..n).each do |i|
      cache[i] = [123]
      # sn = sn - 1 + sn - 2 + sn - 3
    end
    cache
  end

  def frog_hops_top_down(n)
    return @frog_cache[n] if @frog_cache[n]

  end

  def super_frog_hops(n, k)
  end

  def make_change(amt, coins)
  end

  def maze_solver(maze, start_pos, end_pos)
  end
end
