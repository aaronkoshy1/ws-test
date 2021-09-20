
exports.up = function(knex) {
  return knex.schema
    .dropTable('devices')
};
