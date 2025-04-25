#!/bin/bash

# Define folders to create
folders=(
  "agent"
  "utils"
  "tests"
)

# Create folders
for folder in "${folders[@]}"; do
  mkdir -p "$folder"
done

# Create files with optional content
cat <<EOF > README.md
# ClimaMind

An AI-powered weather agent using Ollama + Gemma and LangGraph.
EOF

touch requirements.txt

cat <<EOF > .env
# Add your API keys and config variables here
EOF

cat <<EOF > main.py
# Entry point for ClimaMind

if __name__ == '__main__':
    print('Starting ClimaMind...')
EOF

cat <<EOF > config.py
# Configuration management for ClimaMind
EOF

touch agent/__init__.py

cat <<EOF > agent/graph.py
# LangGraph logic will go here
EOF

cat <<EOF > agent/weather_tool.py
# Weather fetching tool (e.g., OpenWeatherMap API integration)
EOF

cat <<EOF > agent/model.py
# Ollama + Gemma model loading and querying
EOF

cat <<EOF > utils/logger.py
# Logger setup for ClimaMind
EOF

cat <<EOF > utils/helpers.py
# Miscellaneous helper functions
EOF

cat <<EOF > tests/test_weather_tool.py
# Unit tests for weather_tool
EOF

cat <<EOF > tests/test_graph.py
# Unit tests for LangGraph flow
EOF

echo "✅ Project structure created successfully."
