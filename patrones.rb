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
    cont = 0
    sizez = size -2
    
    z = "*" * size + "\n"
    until (sizez == cont) do
        
            z += "#{"\s" * sizez}*\n"
            sizez -= 1

    end
    z += '*' * size
    
    return z
end

def letra_x(size)
    spa = "\s"
    x = ""
    y = size #contador
    exspa = 0 #contador espacio

    size.times do |i|
        if i < (size / 2) 
            x += "#{spa * exspa}*#{spa * (y - 2)}*\n"
            y -= 2
            exspa += 1

        elsif i > (size / 2)
            x += "#{spa * exspa}*#{spa * (y - 2)}*\n"
            y += 2
            exspa -= 1

        else 
            x += ("#{spa * (size / 2)}" + "*\n")
            y = size / 2 + 1
            exspa = 1

        end
    end
    return x
end

def numero_cero(size)
    o = '*' * size + "\n"
    l = 0
    r = size - 3
    spa = "\s"
    (size-2).times do
        o += '*'
        o += ("#{spa * l }*#{spa * r }" + "*\n")
        l += 1
        r -= 1
    end
    o += '*' * size
    
    return o
end

def navidad(size)
    spa = "\s"
    exspa = (size / 2 + 1) #contador de espacios exterior
    s = "*#{spa}"
    b = 1
    a = ""

    (size +1).times do |i|
        if i <= (size - 2)
            a += "#{spa * exspa}#{s * b}\n"
            b += 1
            exspa -= 1
        else 
            exspa = (size / 2 + 1)
             a += "#{spa * exspa}*\n"
        end
    end
    a += "#{spa}#{s * (size-2)}"
    return a
end

puts letra_o(n)
puts
puts letra_i(n)
puts
puts letra_z(n)
puts
puts letra_x(n)
puts
puts numero_cero(n)
puts
puts navidad(n)

