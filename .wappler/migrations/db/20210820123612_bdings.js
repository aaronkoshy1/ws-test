
exports.up = function(knex) {
  return knex.schema
    .createTable('buildings', function (table) {
      table.increments('id');
    })
};

exports.down = function(knex) {
  return knex.schema
    .dropTable('buildings')
};
