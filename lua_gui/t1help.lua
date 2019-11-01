

local tableUtils=require("tableUtils")

t1 = {}
t1.deepak = {1,2,3}
t1.kkr = {1,2,3,4}
t2 = {2,3,5,6,7}

t3 = tableUtils.mergeTable(t2,t1)

for k,v in pairs(t3) do
  print(k,v)
end