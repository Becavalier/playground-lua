print "Hello World!"
myVar = 10
print(myVar)

--[[
This is multi-line comment;
]]--

-- This is single-line comment;

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
