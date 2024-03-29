---
name: Foundation Layer ToDo GCP Network
about: ToDo for the GCP Foundation Layers GCP Networks
title: "[WIP] Ensure a GCP Network { VPC Subnet } named {GCP NETWORK NAME} exists in the {ENV} environment"
labels: ["ToDo", "WIP", "gcp-network"]
assignees:
  - first
  - second

---

## Desired GCP Infrastructure State

 - [ ] Ensure a GCP Network exists and is named {GCP NETWORK NAME}

 - [ ] Ensure the GCP Network is created in the GCP Project {GCP PROJECT NAME}

 - [ ] Ensure the GCP Network is a { Shared Host Standalone} type VPC

 - [ ] Ensure the GCP Subnet is located in the {GCP REGION} GCP Region and in these GCP Zones {a b c d}

 - [ ] Ensure the GCP Network has {NUMBER} subnets 

 - [ ] Ensure the GCP Network has the following IP Spacing - {BASE IP - /8 /12 /16 /24 /32}

---

The Terraform workspace will be contained in a Git directory here:

`FoundationLayer/GCP_Networks/GCP_Networks_{ENV}/{GCP_NETWORK_NAME}`

--- 

## Current GCP Infrastructure State

This GCP Network does not exist on the GCP API
