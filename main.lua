-- Importa la biblioteca de Discord
local discord = require("discord")

-- Configura tu ID de aplicación de Discord
local appId = "TU_ID_DE_APLICACIÓN_DE_DISCORD"

-- Configura el nombre de tu servidor de FiveM
local serverName = "Nombre del servidor"

-- Configura la URL de tu servidor de FiveM
local serverUrl = "https://TU_SERVIDOR_DE_FIVEM.COM"

-- Configura la ruta del archivo de logo
local logoPath = "logo.png"

-- Función para actualizar el Rich Presence
function updatePresence(players)
  -- Establece el estado del jugador
  discord.setActivity({
    state = "Jugando a " .. serverName,
    details = "Jugadores conectados: " .. players,
    largeImageKey = "logo",
    smallImageKey = "logo",
  })
end

-- Registra un evento para cuando un jugador se conecte al servidor
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1000)
    local players = GetNumPlayerIndices()
    updatePresence(players)
  end
end)

-- Registra un evento para cuando un jugador se desconecte del servidor
Citizen.RegisterForEvent("playerDropped", function()
  updatePresence(GetNumPlayerIndices())
end)

-- Inicia la biblioteca de Discord
discord.start(appId)

-- Actualiza el Rich Presence al inicio
updatePresence(GetNumPlayerIndices())
