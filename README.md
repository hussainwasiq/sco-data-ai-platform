# SCO Data & AI Platform

Version-controlled Snowflake data-platform code for the SCO DevOps proof of concept.

## Environments

- DEV
- UAT
- PROD

## Snowflake layers

- Bronze
- Silver
- Gold

## Deployment

The same parameterized SQL code is promoted through DEV, UAT and PROD.

Environment database names are supplied during deployment and are not hardcoded
inside individual object scripts.
