#!/usr/local/bin/lua
print(arg)  -- a global argument includes all params passed to "lua", start from index 0;

print "Hello World!"
myVar = 10
print(myVar)

--[[
This is multi-line comment;
]]

-- This is single-line comment;

---[[
    print('ABC')
--]]

--[[
    print('DEF')
--]]

myLongText = [[
    apple banana
    apple banana
    apple banana
    apple banana
]]
print(myLongText)

partA = "Hello "
partB = "World!"

print(partA .. partB .. " <<<<")

myBoolean = true
print(myBoolean)
print(1 == 1)
print(2 ~= 1)  -- not equal;

print "Type your name:"
input = io.read()  -- function call;
print(input)

if input == "YHSPY" then
    print "Welcome!"
elseif input == "Joe" then
    print "Nice name!" 
else 
    local myFlagLocal = false  -- local variable;
    myFlagGlobal = true  -- global variable;
    print "Cool!"  
end
print(myFlagGlobal)


-- circulation;
-- for:
-- while:
i = 0
while true do
    i = i + 1
    local j = 10
    print(i + j)
    if i == 10 then
        break
    end
end

for myVal = 0, 10 do
    print(myVal)
end

for myVal = 10, 0, -1 do  -- start, end, step;
    print(myVal)
end

repeat
    i = i - 1
    print("Repeat:", i)
until(i == 0)

function max(x, y)
    return x > y and x or y
end
print(max(1, 2))

print(3 // 2)  -- floor division;

x = math.pi
print(x - x % 0.01)  -- keep the last 2 bits of the decimal part of the previous float x;
print(x - x % 0.001)

math.randomseed(os.time())
print(math.random(10)) -- [1, 10)
print(math.random()) -- [0, 1)

x, y = math.modf(10.9) -- x:10, y:0.9
