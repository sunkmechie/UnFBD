#!/bin/bash

# app/package.json
cat > app/package.json << EOF
{
  "name": "unfbd-app",
  "version": "1.0.0",
  "main": "App.js",
  "scripts": {
    "start": "expo start",
    "android": "expo start --android",
    "ios": "expo start --ios",
    "web": "expo start --web"
  },
  "dependencies": {},
  "devDependencies": {},
  "private": true
}
EOF

# packages/ui/package.json
cat > packages/ui/package.json << EOF
{
  "name": "@unfbd/ui",
  "version": "1.0.0",
  "main": "src/index.js",
  "scripts": {
    "test": "echo \\"No tests yet\\" && exit 0"
  },
  "dependencies": {},
  "devDependencies": {},
  "private": true
}
EOF

# packages/core/package.json
cat > packages/core/package.json << EOF
{
  "name": "@unfbd/core",
  "version": "1.0.0",
  "main": "src/index.js",
  "scripts": {
    "test": "echo \\"No tests yet\\" && exit 0"
  },
  "dependencies": {},
  "devDependencies": {},
  "private": true
}
EOF

# packages/fluidaf/package.json
cat > packages/fluidaf/package.json << EOF
{
  "name": "@unfbd/fluidaf",
  "version": "1.0.0",
  "main": "src/index.js",
  "scripts": {
    "test": "echo \\"No tests yet\\" && exit 0"
  },
  "dependencies": {},
  "devDependencies": {},
  "private": true
}
EOF

echo "Minimal package.json files created successfully."
