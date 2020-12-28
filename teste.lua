--Users
local Users = {
    Prefeito = 1234,
    Engenheiro = 3654
}

print("Digite sua senha:")

for _, v in pairs(Users) do
    if v == tonumber(io.read()) and v == 1234 then print("Hello World")
        elseif v == tonumber(io.read()) and v == 3654 then print("Bye World")
end
end

--[[local is_canadian = false
function sayit(letters)
  for Users,v in ipairs(letters) do
    if     v == "a" then print("aah")
    elseif v == "b" then print("bee")
    elseif v == "c" then print("see")
    elseif v == "d" then print("dee")
    elseif v == "e" then print("eee")
    elseif v == "f" then print("eff")
    elseif v == "g" then print("gee")
    elseif v == "h" then print("aych")
    elseif v == "i" then print("eye")
    elseif v == "j" then print("jay")
    elseif v == "k" then print("kay")
    elseif v == "l" then print("el")
    elseif v == "m" then print("em")
    elseif v == "n" then print("en")
    elseif v == "o" then print("ooh")
    elseif v == "p" then print("pee")
    elseif v == "q" then print("queue")
    elseif v == "r" then print("arr")
    elseif v == "s" then print("ess")
    elseif v == "t" then print("tee")
    elseif v == "u" then print("you")
    elseif v == "v" then print("vee")
    elseif v == "w" then print("doubleyou")
    elseif v == "x" then print("ex")
    elseif v == "y" then print("why")
    elseif v == "z" then print(is_canadian and "zed" or "zee")
    elseif v == "?" then print(is_canadian and "eh" or "")
    else                 print("blah")
    end
  end
end
sayit{'h','e','l','l','o','?'}]]