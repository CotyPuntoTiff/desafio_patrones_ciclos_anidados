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


def letra_z(size)
    
    z = "*" * size + "\n"
    cont = 0
    sizez = size -2
    until (sizez== cont) do
        space = "\s"
        
            z += "#{space * sizez}*\n"
            sizez -= 1

    end
    z += '*' * size
    
    return z
end

puts letra_z(n)
