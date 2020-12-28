--Users
local Users = {
    Prefeito = 1234,
    Engenheiro = 1937
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
--Funções para abrir as portas

--Porta Central
function CentralDoor()
        Clear()
    print("Sua porta foi aberta!")
        Wait(1.5)
        Clear()
end

--Porta Reator
function NukeDoor()
        Clear()
    print("Sua porta da Nuke foi aberta!") 
        Wait(1.5)
        Clear()
end

--Abrir Todas as Portas
function AllDoors()
    Clear()
        print("Todas as portas foram abertas!") 
        Wait(1.5)
        Clear()   
end

--Prefeito Init2
function Funclist0()
    print("1 - Abrir Porta Central \n2 - Abrir porta Reactor")
    local inside = io.read()
    if inside == "1" then
         CentralDoor()
    elseif inside == "2" then
         AllDoors()
    end
    
end

--Engenheiro Init2

function Funclist1()
    print("Digite o numero da funcao! \nVoce tem acesso a essas funcoes: \n1 - Abrir Porta Central \n2 - Abrir porta Reactor \n3 - Abrir Todas as Portas")
        _G.wrong = true
        local inside = io.read()
        --Adicionar Funções 
    if inside == "1" then
        CentralDoor() -- Função de abrir Central Door
    elseif inside == "2" then
        NukeDoor()
    elseif inside == "3" then
        AllDoors()
    else 
        Clear()
        print("A funcao " .. inside .. " nao existe! Tente novamente!")
        Wait(1.5)
        Clear()
        Funclist1()
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
        Clear()
        Funclist0()
    elseif input == Users.Engenheiro then
        Clear()
        print("Bem vindo Engenheiro Chefe")
        Clear()
        Funclist1() 
        
    else
        wrong = true  
    end
end

