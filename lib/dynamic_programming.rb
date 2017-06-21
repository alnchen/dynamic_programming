class DynamicProgramming
  def initialize

  end

  def blair_nums(n)

    return 1 if n == 1
    return 2 if n == 2
    blair_nums(n-1) + blair_nums(n-2) + ((2 * n) - 3)
  end

  def frog_hops(n)
  end

  def frog_cache_builder(n)
  end

  def frog_hops_top_down(n)
  end

  def super_frog_hops(n, k)
  end

  def make_change(amt, coins)
  end

  def maze_solver(maze, start_pos, end_pos)
  end
end
