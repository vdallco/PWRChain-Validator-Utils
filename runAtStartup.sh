#!/bin/bash
SERVICE_NAME="PWRChainValidatorService"
if [ $# -eq 0 ]; then
  SERVICE_DESCRIPTION="Service to automatically start PWR chain validator node upon startup"
  SCRIPT_PATH="/home/ubuntu/runValidator.sh"
  if [ -f "/etc/systemd/system/${SERVICE_NAME}.service" ]; then
    echo "Service file already exists"
  else
    cat << EOF > "/etc/systemd/system/${SERVICE_NAME}.service"
    [Unit]
    Description=${SERVICE_DESCRIPTION}
    After=multi-user.target

    [Service]
    WorkingDirectory=/home/ubuntu/
    Type=forking
    ExecStart=${SCRIPT_PATH}

    [Install]
    WantedBy=multi-user.target
EOF

    chmod 777 "/etc/systemd/system/${SERVICE_NAME}.service"
  fi
  systemctl daemon-reload
  systemctl enable ${SERVICE_NAME}.service
  systemctl start ${SERVICE_NAME}.service
  echo "${SERVICE_NAME} has been created, enabled, and started."
else
  echo "Disabling systemd service"
  systemctl disable ${SERVICE_NAME}.service
  systemctl stop ${SERVICE_NAME}.service
  echo "${SERVICE_NAME} has been stopped and disabled."
fi