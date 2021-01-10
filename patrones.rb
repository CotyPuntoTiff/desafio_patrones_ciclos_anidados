n = ARGV[0].to_i

def letra_o(size)

    o = '*' * size + "\n"

    (size-2).times do
        o += '*'
        o += ("\s" * (size-2)) + "*\n"
    end
    o += '*' * size
    
    return o
end


def letra_i(size)
    
    i = "*" * size + "\n"
    
    (size - 2).times do
        i += ("\s" * (size / 2) + "*\n")
    end
    i += '*' * size
    
    return i
end


puts letra_i(n)
