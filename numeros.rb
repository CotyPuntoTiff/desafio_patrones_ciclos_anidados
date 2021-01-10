num = ARGV[0].to_i

(1..num).each do |i|
    (1..i).each do |c|
        print c
    end
    print " "
end
puts 