mytable = {"apple", "orange", "banana", "apple", "orange", "banana", "apple", "orange", "banana"}
setmetatable(mytable, {
    __gc = function(self)
        print("GC called ...")
    end
})

print(collectgarbage("count") .. " KB")

mytable = nil

print(collectgarbage("count") .. " KB")
print(collectgarbage("collect"))
print(collectgarbage("count") .. " KB")
