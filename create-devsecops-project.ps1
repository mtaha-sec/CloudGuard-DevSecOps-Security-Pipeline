$project = "my-devsecops-cloud-pipeline"

New-Item -ItemType Directory -Force -Path "$project"
New-Item -ItemType Directory -Force -Path "$project/app/src"
New-Item -ItemType Directory -Force -Path "$project/infrastructure"
New-Item -ItemType Directory -Force -Path "$project/ci-cd/sonarqube"
New-Item -ItemType Directory -Force -Path "$project/ci-cd/snyk"
New-Item -ItemType Directory -Force -Path "$project/ci-cd/burp"
New-Item -ItemType Directory -Force -Path "$project/docs/security-reports"
New-Item -ItemType Directory -Force -Path "$project/.github/workflows"

# Files
New-Item "$project/app/Dockerfile" -ItemType File
New-Item "$project/app/requirements.txt" -ItemType File
New-Item "$project/app/README.md" -ItemType File

New-Item "$project/infrastructure/main.tf" -ItemType File
New-Item "$project/infrastructure/variables.tf" -ItemType File
New-Item "$project/infrastructure/outputs.tf" -ItemType File
New-Item "$project/infrastructure/terraform.tfvars.example" -ItemType File
New-Item "$project/infrastructure/README.md" -ItemType File

New-Item "$project/ci-cd/pipeline.yml" -ItemType File
New-Item "$project/ci-cd/sonarqube/sonar-project.properties" -ItemType File
New-Item "$project/ci-cd/snyk/snyk-config.yaml" -ItemType File
New-Item "$project/ci-cd/burp/burp-launch.sh" -ItemType File
New-Item "$project/ci-cd/burp/burp-config.json" -ItemType File
New-Item "$project/ci-cd/burp/report-parser.py" -ItemType File
New-Item "$project/ci-cd/README.md" -ItemType File

New-Item "$project/docs/architecture.md" -ItemType File
New-Item "$project/docs/README.md" -ItemType File

New-Item "$project/docs/security-reports/sast-report.html" -ItemType File
New-Item "$project/docs/security-reports/sca-report.json" -ItemType File
New-Item "$project/docs/security-reports/dast-report.html" -ItemType File

New-Item "$project/.github/workflows/pipeline.yml" -ItemType File

New-Item "$project/.gitignore" -ItemType File
New-Item "$project/README.md" -ItemType File
New-Item "$project/LICENSE" -ItemType File

