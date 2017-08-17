BEGIN;

-- Plan the tests
SELECT plan( 2 );

SELECT is(source::VARCHAR, 'mip-cde', 'mip-cde variables should be present')
  FROM meta_variables;

SELECT is(target_table::VARCHAR, 'MIP_CDE_FEATURES', 'Target mip_cde_features table should be present')
  FROM meta_variables;

-- Clean up
SELECT * FROM finish();
ROLLBACK;
