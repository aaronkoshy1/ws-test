
exports.up = function(knex) {
  return knex.schema
    .dropTable('Block_list')
};

exports.down = function(knex) {
  return knex.schema
    .createTable('Block_list', function (table) {
      table.increments('id').primary().notNullable();
    })
};
