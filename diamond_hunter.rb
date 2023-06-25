  def diamond_hunter(expression)
    count = 0
    string = expression.delete('.')

    while string.include?("<>") do
      string.length.times do |index|
        if "#{string[index]}#{string[index + 1]}" === "<>"
          count += 1
          string.slice!(index, 2)
        end
      end
    end

    puts "\nREMOVED DIAMONDS: #{count}\nFINAL EXPRESSION: #{string}\n\n"

  end
