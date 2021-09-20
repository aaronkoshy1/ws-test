
exports.up = function(knex) {
  return knex.schema
    .table('Devices', function (table) {
      table.integer('user_id').alter().unsigned();
      table.foreign('user_id').references('undefined').inTable('Users').onUpdate('SET DEFAULT').onDelete('NO ACTION');
    })
};

exports.down = function(knex) {
  return knex.schema
    .table('Devices', function (table) {
      table.integer('user_id').alter();
      table.dropForeign('user_id');
    })
};
