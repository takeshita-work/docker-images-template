docker-compose `
  -p "${global:projectName}" `
  -f ./docker-compose/compose.yml `
  exec {software}{version} /bin/bash