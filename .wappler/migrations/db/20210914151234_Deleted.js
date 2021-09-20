
exports.up = function(knex) {
  return knex.schema
    .dropTable('Block_list')
};
