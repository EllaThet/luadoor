local component=require("component")
local r=component.redstone
local gpu=component.gpu
local term=require("term")

---- config section
local password="1234"
local delay=5 --time the door stays open
local side=5 --side of the door, test this
-----

local wrong=false

while true do
  term.clear()
  gpu.set(1,1,"Please enter the password")
  if wrong then
    gpu.set(1,1,"Password was wrong, try again")
    wrong=false
  end
  term.setCursor(1,2)
  local input=io.read()
  if input==password then
     r.setOutput(side,15) -- check if this is the correct function
     os.sleep(delay)
     r.setOutput(side,0) -- same here
  else
     wrong=true
  end
end