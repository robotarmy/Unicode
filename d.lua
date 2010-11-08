local w = '荏'



local a = w:byte(1)
local b = w:byte(2)
local c = w:byte(3)
function unicode(...)
  local s = ""
  for i, v in ipairs{...} do
    s = s .. string.char(v)
  end
print(s)
end
unicode(a,b,c)
