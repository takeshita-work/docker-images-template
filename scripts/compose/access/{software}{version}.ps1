docker-compose `
  -p "${global:projectName}" `
  -f ./tests/compose.yml `
  exec {software}{version} /bin/bash