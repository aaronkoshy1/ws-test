
exports.up = function(knex) {
  return knex.schema
    .table('Users', function (table) {
      table.integer('user_id').alter().unsigned();
    })
};

exports.down = function(knex) {
  return knex.schema
    .table('Users', function (table) {
      table.integer('user_id').alter();
    })
};
