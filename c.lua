local w = '荏'
local a = w:byte(1)
local b = w:byte(2)
local c = w:byte(3)

function pbh(a)
  print(string.format("%X",a))
end

function sln(x,n)
  -- n bit left
  return math.floor(x*2^n)
end
function srn(x,n)
  -- n bit right
  return math.floor(x/2^n)
end
function ml(x,n)
  -- n bit right
  return math.floor(x%(2^n))
end
pbh(ml(0x22,8))
assert(ml(0x02,2) == 0x2)

print(a)
pbh(a)
local e = srn(a,4)
pbh(e)


assert(e == 0xE)
local z = a-0xE0
pbh(z)
assert(z == 8)
print('----')
print(b)
pbh(b)
local l2 = srn(b,6)
pbh(l2)
assert(l2 == 2)
local r6 = ml(b,6)
pbh(r6)
assert(0xD == r6)
local y = r6
print('---')
print(c)
pbh(c)
local l2 = srn(c,6)
pbh(l2)
assert(l2 == 2)
local r6 = ml(c,6)
pbh(r6)
assert(0xF == r6)
local x = r6
print('---')
local zzzz = sln(z,12)
local yyyy = sln(y,6)
local xxxx = x
local code_point_3b = zzzz+yyyy+xxxx
pbh(code_point_3b)
assert(0x834F == code_point_3b)
print('is')
print(w)
