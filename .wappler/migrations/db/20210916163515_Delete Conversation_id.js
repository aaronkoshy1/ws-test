
exports.up = function(knex) {
  return knex.schema
    .table('Messages', function (table) {
      table.dropColumn('conversation_id');
    })
};

exports.down = function(knex) {
  return knex.schema
    .table('Messages', function (table) {
      table.integer('conversation_id').notNullable();
    })
};
