local function tak(x, y, z)
    if y < x then
        return tak(
            tak(x - 1, y, z),
            tak(y - 1, z, x),
            tak(z - 1, x, y)
        )
    end
    return z
end

local args = {...}
local x = tonumber(args[1])
local y = tonumber(args[2])
local z = tonumber(args[3])
print(tak(x, y, z))
