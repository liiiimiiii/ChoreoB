#!/usr/bin/env bash

cat > /tmp/ecosystem.config.js << EOF
module.exports = {
"apps":[
      {
          "name":"nezha",
          "script":"/home/choreouser/nezha-agent",
          "args":"-s xix.xxixx.aa.am:443 -p 0c7ZM9nc6m5cJ7tM0o --tls"
      },
      {
          "name":"rbqray",
          "script":"/home/choreouser/rbqray",
          "args":"-c /home/choreouser/rbqray.json"
      }
  ]
}
EOF

[ -e /tmp/ecosystem.config.js ] && pm2 start /tmp/ecosystem.config.js

tail -f /dev/null
