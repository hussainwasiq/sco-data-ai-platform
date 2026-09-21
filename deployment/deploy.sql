/*==============================================================================
  SCO DATA & AI PLATFORM
  MASTER DEPLOYMENT FILE

  The caller supplies the target Bronze, Silver and Gold database names.
==============================================================================*/


/* Deploy Bronze objects. */

EXECUTE IMMEDIATE FROM
    '../snowflake/bronze/sap_successfactors/001_create_raw_devops_test.sql'
USING
(
    target_database => '{{ bronze_database }}'
);


/* Deploy Silver objects. */

EXECUTE IMMEDIATE FROM
    '../snowflake/silver/sap_successfactors/001_create_devops_test_view.sql'
USING
(
    target_database => '{{ silver_database }}',
    source_database => '{{ bronze_database }}'
);


/* Deploy Gold objects. */

EXECUTE IMMEDIATE FROM
    '../snowflake/gold/analytics/001_create_devops_test_summary.sql'
USING
(
    target_database => '{{ gold_database }}',
    source_database => '{{ silver_database }}'
);