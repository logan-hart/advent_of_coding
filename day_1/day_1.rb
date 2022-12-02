
Calories = File.readlines("elves_calories.txt").map(&:chomp).map(&:to_i)

def max_calories
    cals = Calories.dup
    elves = []
    j = 0
    (0...cals.length).each do |i|
        if cals[i] == 0
            elves << cals[j...i].sum
            j = i+1
        end
    end
    elves.sort[-1] + elves.sort[-2] + elves.sort[-3]
end


