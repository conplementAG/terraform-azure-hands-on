#!/bin/bash

terraform init -upgrade

terraform workspace new $environment
terraform workspace select $environment