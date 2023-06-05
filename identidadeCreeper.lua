os.execute('chcp 65001')
os.execute('cls')


------ Criatura

local monster = "Pikachu"
local description = "Cuidado com a eletricidade deste bichinho, ela é muito mais do que 220 volts!"
local emoji = "⚡"
local favoriteTime = "Dia"

------ Atributos
local attackAttribute = 8
local defenseAttribute = 5
local lifeAttribute = 10
local speedAttribute = 8
local inteligenceAttribute = 6

----- Função que recebe um atributo e nos retorna uma barra de progresso em string / texto

local function getProgressBar(attribute)
    local fullChar = "⬜"
    local emptyChar = "⬛"

    local result = ""
    for i = 1, 10, 1 do
        if attribute >= i then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end

----- Cartão
print('=============================================================')
print('| '.. monster)
print('| '.. description)
print('| ')
print('| Horário Favorito: '.. favoriteTime)
print('| Emoji Favorito: '.. emoji)
print('| ')
print('| Atributos: ')
print('| - Ataque:       '.. getProgressBar(attackAttribute))
print('| - Defesa:       '.. getProgressBar(defenseAttribute))
print('| - Vida:         '.. getProgressBar(lifeAttribute))
print('| - Velocidade:   '.. getProgressBar(speedAttribute))
print('| - Inteligência: '.. getProgressBar(inteligenceAttribute))
print('| ')
print('=============================================================')