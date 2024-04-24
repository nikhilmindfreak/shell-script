[Unit]
Description = Backend Service

[Service]
User=expense
Environment=DB_HOST="db.devopsme.online"
ExecStart=/bin/node /app/index.js
SyslogIdentifier=backend

[Install]
WantedBy=multi-user.target