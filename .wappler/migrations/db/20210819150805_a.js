
exports.up = function(knex) {
  return knex.schema
    .table('users', function (table) {
      table.renameColumn('id', 'user_id');
      table.enum('industry');
    })
};

exports.down = function(knex) {
  return knex.schema
    .table('users', function (table) {
      table.renameColumn('user_id', 'id');
      table.dropColumn('industry');
    })
};
