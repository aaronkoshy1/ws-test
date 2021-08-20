
exports.up = function(knex) {
  return knex.schema
    .table('users', function (table) {
      table.datetime('most_recent_login');
    })
};

exports.down = function(knex) {
  return knex.schema
    .table('users', function (table) {
      table.dropColumn('most_recent_login');
    })
};
