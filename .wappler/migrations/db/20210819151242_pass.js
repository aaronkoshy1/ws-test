
exports.up = function(knex) {
  return knex.schema
    .table('users', function (table) {
      table.string('pass_hash', 255);
      table.string('pass_salt', 15);
      table.string('role', 25);
    })
};

exports.down = function(knex) {
  return knex.schema
    .table('users', function (table) {
      table.dropColumn('pass_hash');
      table.dropColumn('pass_salt');
      table.dropColumn('role');
    })
};
