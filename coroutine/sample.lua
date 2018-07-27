local co = coroutine.create(function (a, b)
      -- for i=1, 2 do
      -- 	 print("hi", i)
      -- 	 coroutine.yield()
      -- end
      print('co', coroutine.yield(a+b, a-b))
end)

print(co)

print(coroutine.status(co))

print(coroutine.resume(co, 30, 10))
print(coroutine.status(co))
 coroutine.resume(co)
-- print(coroutine.status(co))
-- print(coroutine.resume(co))
-- print(coroutine.status(co))
-- print(coroutine.resume(co))
-- print(coroutine.status(co))

-- test io.input if it is needed to close the file
