/*==============================================================================
  Object      : VW_DEVOPS_TEST_SUMMARY
  Layer       : Gold
  Description : Summary view used to validate the full deployment path
==============================================================================*/

CREATE OR REPLACE VIEW
    {{ target_database }}.ANALYTICS.VW_DEVOPS_TEST_SUMMARY
COMMENT = 'Test Gold summary view deployed through the SCO CI/CD process'
AS
SELECT
    COUNT(*)        AS RECORD_COUNT,
    MAX(_LOADED_AT) AS LAST_LOADED_AT
FROM
    {{ source_database }}.SAP_SUCCESSFACTORS.VW_DEVOPS_TEST;