## Cloudbuild Trigger Terraform Module

Creates Artifact Docker repository

### Variables

```
trigger_name        - Name of the Trigger (Required)
description         - Description of the Trigger (Optional)
github_owner        - Github owner/organization repo is a member of (default: broadinstitute)
github_repo         - Github repo name (Required)
branch_name         - Branch that the Trigger watches (Required)
included_files      - The folder/files that the trigger will watch for changes (Optional)
ignored_files       - A list of folder/files/regex that the trigger will ignore changes on (Optional)
substitutions       - A map of substitutions used in trigger (Optional)
filename            - The path to cloudbuild yaml file (Default: cloudbuild.yaml)
```

### Outputs

The module will output the details of the trigger
