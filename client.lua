-- Configuración de Discord Rich Presence
Citizen.CreateThread(function()
    -- Reemplaza con el Client ID de tu aplicación en Discord
    local appId = 'TU_CLIENT_ID_AQUI'

    -- Configuración inicial
    SetDiscordAppId(appId)

    -- Imagen grande (nombre del asset en Rich Presence)
    SetDiscordRichPresenceAsset('nombre_imagen_grande')
    SetDiscordRichPresenceAssetText('Tu Servidor Roleplay') -- Texto al pasar el ratón

    -- Imagen pequeña (opcional)
    SetDiscordRichPresenceAssetSmall('nombre_imagen_pequeña')
    SetDiscordRichPresenceAssetSmallText('Servidor Activo')

    -- Añadir botones
    SetDiscordRichPresenceAction(0, "Únete a Discord", "https://discord.gg/TU_INVITACION_AQUI")
    SetDiscordRichPresenceAction(1, "Visita nuestra web", "https://tu-sitio-web.com")

    while true do
        -- Actualizar el Rich Presence con información dinámica
        local playerName = GetPlayerName(PlayerId())
        local playerCount = #GetActivePlayers()
        local maxPlayers = 64 -- Cambia esto según tu configuración del servidor

        -- Establecer el texto personalizado
        SetRichPresence(string.format('%s | %d/%d jugadores', playerName, playerCount, maxPlayers))

        -- Actualizar cada 15 segundos
        Citizen.Wait(15000)
    end
end)
