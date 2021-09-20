
exports.up = function(knex) {
  return knex.schema
    .table('Participants', function (table) {
      table.dropColumn('users_id');
    })
};

exports.down = function(knex) {
  return knex.schema
    .table('Participants', function (table) {
      table.integer('users_id');
    })
};
