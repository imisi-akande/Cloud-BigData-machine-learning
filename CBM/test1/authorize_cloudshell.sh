#!/bin/bash
# Add ip address to cloud sql access list so as to provide access on Google Cloud SQL

gcloud sql instances patch relation \
    --authorized-networks `wget -qO - http://ipecho.net/plain`