#!/usr/bin/bash
#Plan Environment
terraform plan -out plan.out
#Create Environment
terraform apply plan.out
