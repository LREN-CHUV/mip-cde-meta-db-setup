BEGIN;

-- Plan the tests
SELECT plan( 8 );

SELECT has_table( 'meta_variables' );

SELECT has_column( 'meta_variables', 'id' );
SELECT has_column( 'meta_variables', 'source' );
SELECT has_column( 'meta_variables', 'target_table' );
SELECT has_column( 'meta_variables', 'hierarchy' );
SELECT col_is_pk(  'meta_variables', 'id' );

SELECT is(source::VARCHAR, 'harmonized', 'harmonized variables should be present')
  FROM meta_variables;

SELECT is(target_table::VARCHAR, 'harmonized_DATA', 'Target harmonized table should be present')
  FROM meta_variables;

-- Clean up
SELECT * FROM finish();
ROLLBACK;
