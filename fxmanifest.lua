fx_version 'bodacious'

resource_manifest {
  server_scripts = {
    "main.lua"
  },
  client_scripts = {}
}

file_version '1.0.0'

description 'FiveM Rich Presence para Discord, que muestra la información del servidor y el número de jugadores.'

dependencies {
  "discord" -- Esto supone que tienes la biblioteca de discordia instalada en tu servidor.
}
