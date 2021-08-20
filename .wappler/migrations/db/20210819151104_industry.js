
exports.up = function(knex) {
  return knex.schema
    .table('users', function (table) {
      table.enum('industry');
    })
};

exports.down = function(knex) {
  return knex.schema
    .table('users', function (table) {
      table.dropColumn('industry');
    })
};
