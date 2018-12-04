--[[
function && table
]]--


-- function

function add(x, y)
    local c = 100
    return x + y + c
end

minus = function(x, y, op)
    return x - y + op(x, y)
end

print(add(1, 2))
print(minus(100, 10, add))

function factorial(n)
    if n == 0 then
        return 1
    else 
        return n * factorial(n - 1)  -- recursive function;
    end
end
print(factorial(5))

function myOuterFunc()
    local myLocal = "Hello"
    local function myInnerFunc(ending)
        print(myLocal .. ending)
    end
    myInnerFunc(" World")
end
myOuterFunc()


-- table (as list: collection of variables)

local myTableOfNumbers = {
    1, 2, 3, 4, 5, {100, 101}
}
myTableOfNumbers[1] = 10000
print(myTableOfNumbers[6][1])

table.insert(myTableOfNumbers, 111);
table.insert(myTableOfNumbers, "YHSPY");
table.insert(myTableOfNumbers, true);

for i = 1, #myTableOfNumbers do  -- #[tableName] the length of that table;
    print(myTableOfNumbers[i])
end

-- table (as dict:)
 
local tableMap = {
    1, 2, 3, hello = 123, {
        4, 5, 6, inner = 246
    }
}
tableMap["A"] = true
tableMap["B"] = "YHSPY"
print(tableMap["hello"])
print(tableMap[4]["inner"])  -- skip the "dict" kv pair;


