#!/bin/bash
set -e

# Location of Burp Suite JAR file
BURP_JAR="./ci-cd/burp/burpsuite_community.jar"

# Target URL for scanning
TARGET_URL=$1

# Output report path
REPORT_PATH="./docs/security-reports/dast-report.html"

if [ -z "$TARGET_URL" ]; then
  echo "Usage: $0 <target-url>"
  exit 1
fi

echo "Starting Burp Suite scan against $TARGET_URL..."

# Run Burp Suite in headless mode with minimal config for DAST scan
java -jar "$BURP_JAR" \
  --project-file=./ci-cd/burp/burp_project.burp \
  --config-file=./ci-cd/burp/burp-config.json \
  --headless \
  --scan-url "$TARGET_URL" \
  --export-report "$REPORT_PATH"

echo "Burp Suite scan completed. Report saved to $REPORT_PATH"
