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
    super_hops_cache_builder(k)
    @super_frog_cache[n]
  end

  def super_hops_cache_builder(k)
    #need to fix logic
    2.upto(k).each do |j|
      @super_frog_cache[j] = []
      # 1.upto(j - 1).each do |i|
      #   @super_frog_cache[j - i].each do |path|
      #     @super_frog_cache[j] << path + [i]
      #   end
      # end

      @super_frog_cache[j] << [j]
    end
  end

  def make_change(amt, coins)
    return [] if amt <= 0
    return nil if coins.none? { |coin| coin == amt }
    count = 0

    coins.each_with_index do |coin, idx|
      next if coin > amt

      remainder = amt - coin
      # new_remainder = make_change(remainder, coins.drop(idx))
    end
      # coins = coins.sort.reverse
    #
    # best_change = nil
    # coins.each_with_index do |coin, index|
    #   next if coin > amt
    #
    #   remainder = amt - coin
    #
    #   best_remainder = make_change(remainder, coins.drop(index))
    #   next if best_remainder.nil?
  end

  def maze_solver(maze, start_pos, end_pos)
    return [end_pos] if end_pos == start_pos
    @maze_cache[start_pos] = true
    spots = []
    x,y = start_pos
    if start_pos[0] + 1 != nil
      x += 1
      @maze_cache[x,y] = true
    elsif start_pos[1] + 1 != nil
      y += 1
      @maze_cache[x,y] = true
    else
      # @maze_cache[x,y]
    end
    spots.sort_by(&:length).first
  end
end
