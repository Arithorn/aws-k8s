#!/bin/bash
terraform plan -out plan.out
terraform apply plan.out
