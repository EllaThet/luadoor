--Users
local Users = {
    Prefeito = 1234,
    Engenheiro = 3654
}
--Sleep

function Wait(seconds)
    local start = os.time()
    repeat until os.time() > start + seconds
end

--Clear Function 

function Clear()
    os.execute("cls")
end

--Init2
function Funclist()
    print("1 - Abrir Porta Central \n2 - Abrir porta Reactor")
    if io.read() == "1" then
        Clear()
        print("Sua porta foi aberta!")
        Wait(3)
    end
    
end
--Mecanismo de login 

local wrong = false 

while true do
    print("Por favor digite sua senha!")
    if wrong then
        Clear()
        print("Senha incorreta tente novamente!")
        wrong = false 
    end
    local input = tonumber(io.read())
    if input == Users.Prefeito then 
        Clear()
        print("Bem vindo Prefeito")
        Funclist()
            Wait(3)
        Clear()
    elseif input == Users.Prefeito2 then
        Clear()
        print("Bem vindo Engenheiro Chefe")
        Funclist() -- Funclist Função
        --Wait(3) -- Função Sleep
        --Clear()
    else
        wrong = true  
    end
end

