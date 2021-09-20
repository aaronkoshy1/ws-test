
exports.up = function(knex) {
  return knex.schema
    .dropTable('devices')
};

exports.down = function(knex) {
  return knex.schema
    .createTable('devices', function (table) {
      table.integer('user_id').notNullable();
      table.string('device_id', 120).primary().notNullable();
      table.enum('type').notNullable();
      table.string('device_token', 120).notNullable();
    })
};
