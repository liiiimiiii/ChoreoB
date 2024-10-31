#!/usr/bin/env bash

cat > /tmp/ecosystem.config.js << EOF
module.exports = {
"apps":[
      {
          "name":"nezha",
          "script":"/home/choreouser/nezha-agent",
          "args":"-s ${NEZHA_SERVER}:${NEZHA_PORT} -p ${NEZHA_KEY} ${NEZHA_TLS}"
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
