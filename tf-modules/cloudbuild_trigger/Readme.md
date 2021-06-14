## Cloudbuild Trigger Terraform Module

Creates Artifact Docker repository

### Variables

```
trigger_name        - Name of the Trigger (Required)
description         - Description of the Trigger (Required)
branch_name         - Branch that the Trigger watches (Required)
included_files      - The folder/files that the trigger will watch for changes (Required)
filename            - The cloudbuild yaml file (Required)
container_name      - The name of the container built by docker (Optional)
container_tag       - The tag of the container built by docker (Optional)
cloudbuild_dir_path - The path cloudbuild will use as the working dir (Optional)
dns_zone            - The dns zone (Optional)
repo_path           - The path to the registry repo for docker images (Optional)
state_bucket        - The bucket the Terraform state is stored in (Optional)
```

### Outputs

The module will output the details of the trigger
