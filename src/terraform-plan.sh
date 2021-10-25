#!/bin/bash

. ./terraform-init.sh

terraform plan \
-var subscription_id=$subscription_id \
-var tenant_id=$tenant_id \
-var client_id=$client_id \
-var client_secret=$client_secret \
-var location=$location
