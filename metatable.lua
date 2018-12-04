function Vec2(x, y) end

local vec2_meta = {
    __add = function(a, b)
        return Vec2(
            a.x + b.x,
            a.y + b.y
        )
    end,
    __sub = function(a, b)
        return Vec2(
            a.x - b.x,
            a.y - b.y
        )
    end,
    __call = function(self)
        print "Called ..."
        print(self.x .. " [call override] " .. self.y)
    end,
    __tostring = function(self)
        return self.x .. " [tostring override] " .. self.y
    end,
}

local table_meta = {
    __index = function(self, index)
        print("The index input is: " .. index)
    end,
    __newindex = function(self, key, value)
        print("The newindex input is: " .. key)
    end,
}

function Vec2(x, y)
    local v = {
        x = x or 0,
        y = y or 0
    }

    setmetatable(v, vec2_meta)  -- just like operator overwrite in c++;
    return v
end

local a = Vec2(10, 2)
local b = Vec2(23, 1)
local c = Vec2(0, 0)

c = a + b
c = a - b

print(c.x, c.y) 
print(a) 
Vec2(100, 100)()

local tableList = {
    1, 2, 3, 4, 5
}
setmetatable(tableList, table_meta)
print(tableList[100])
table.insert(tableList, 6)
