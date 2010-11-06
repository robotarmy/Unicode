function equals(func,object)
  if func ~= object then
    print "expected equality : "
    print "is "
    print(func)
    print "wanted "
    print(object)
  end
end

function a()
  local w = '荏'
  print(w)
  equals(string.len(w),1)
end

a()
