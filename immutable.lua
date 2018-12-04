function const(tab)
    local meta_table = {
        __index = function(self, key)
            if tab[key] == nil then
                error("Attempted access a non-existant field: " .. key)
            else
                return tab[key]
            end
        end,
        __newindex = function(self, key, value)
            error("Attempted to modify const table: " .. key .. " " .. value)
        end,
    }
    return setmetatable({}, meta_table)  -- use an empty table as a "proxy", __newindex method only work for non-existant kv pair;
end

local table =  {
    GRAVITY = 200,
    NAME = "YHSPY"
}
local constant = const(table)

print(constant.GRAVITY)
-- constant.GRAVITY = 2
