fx_version 'cerulean'
game 'gta5'

author 'Your Name'
description 'Advanced cinematic death screen and EMS dispatch resource for QBCore'
version '1.0.0'

lua54 'yes'

shared_scripts {
    'config.lua',
    '@qb-core/shared/locale.lua',
}

client_scripts {
    'client/main.lua',
}

server_scripts {
    'server/main.lua',
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js',
}

escrow_ignore {
    'config.lua',
    'client/main.lua',
    'server/main.lua',
    'html/**',
}

dependencies {
    'qb-core',
}
