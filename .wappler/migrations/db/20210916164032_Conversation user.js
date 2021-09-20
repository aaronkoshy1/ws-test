
exports.up = function(knex) {
  return knex.schema
    .table('Conversation', function (table) {
      table.dropColumn('user_id');
    })
};

exports.down = function(knex) {
  return knex.schema
    .table('Conversation', function (table) {
      table.increments('user_id').primary().notNullable();
    })
};
