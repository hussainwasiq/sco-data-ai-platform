/*==============================================================================
  Object      : RAW_DEVOPS_TEST
  Layer       : Bronze
  Source      : SAP SuccessFactors
  Description : Test table for validating the SCO CI/CD deployment process
==============================================================================*/

CREATE TABLE IF NOT EXISTS
    {{ target_database }}.SAP_SUCCESSFACTORS.RAW_DEVOPS_TEST
(
    ID              VARCHAR(16777216)
        COMMENT 'Test record identifier',

    DESCRIPTION     VARCHAR(16777216)
        COMMENT 'Test record description',

    _LOADED_AT      TIMESTAMP_NTZ(9)
                    DEFAULT CURRENT_TIMESTAMP()
        COMMENT 'Timestamp when the record was loaded into Snowflake',

    _SOURCE_FILE    VARCHAR(16777216)
        COMMENT 'Name of the source file',

    _BATCH_ID       VARCHAR(16777216)
        COMMENT 'Identifier of the ingestion batch'
)
COMMENT = 'Test Bronze table deployed through the SCO CI/CD process';