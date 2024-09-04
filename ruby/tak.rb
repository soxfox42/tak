def tak(x, y, z)
    if y < x
        tak(
            tak(x - 1, y, z),
            tak(y - 1, z, x),
            tak(z - 1, x, y),
        )
    else
        z
    end
end

x, y, z = ARGV[0].to_i, ARGV[1].to_i, ARGV[2].to_i
puts tak(x, y, z)
