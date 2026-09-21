/*==============================================================================
  Object      : VW_DEVOPS_TEST
  Layer       : Silver
  Description : Cleansed view over the Bronze CI/CD test table
==============================================================================*/

CREATE OR REPLACE VIEW
    {{ target_database }}.SAP_SUCCESSFACTORS.VW_DEVOPS_TEST
COMMENT = 'Test Silver view deployed through the SCO CI/CD process'
AS
SELECT
    ID,
    TRIM(DESCRIPTION) AS DESCRIPTION,
    _LOADED_AT,
    _SOURCE_FILE,
    _BATCH_ID
FROM
    {{ source_database }}.SAP_SUCCESSFACTORS.RAW_DEVOPS_TEST;