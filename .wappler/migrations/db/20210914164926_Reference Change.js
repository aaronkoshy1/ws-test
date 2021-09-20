
exports.up = function(knex) {
  return knex.schema
    .table('Devices', function (table) {
      table.integer('user_id').alter().unsigned();
    })
};

exports.down = function(knex) {
  return knex.schema
    .table('Devices', function (table) {
      table.integer('user_id').alter();
    })
};
