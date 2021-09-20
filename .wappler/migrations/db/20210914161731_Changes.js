
exports.up = function(knex) {
  return knex.schema
    .table('Contacts', function (table) {
      table.string('phone');
    })
    .table('Conversation', function (table) {
      table.string('title');
      table.string('creator_id');
      table.string('channel_id');
      table.string('created_at');
      table.string('updated_at');
    })
    .table('Devices', function (table) {
      table.string('device_id');
      table.string('type');
      table.string('device_token');
    })
};

exports.down = function(knex) {
  return knex.schema
    .table('Contacts', function (table) {
      table.dropColumn('phone');
    })
    .table('Conversation', function (table) {
      table.dropColumn('title');
      table.dropColumn('creator_id');
      table.dropColumn('channel_id');
      table.dropColumn('created_at');
      table.dropColumn('updated_at');
    })
    .table('Devices', function (table) {
      table.dropColumn('device_id');
      table.dropColumn('type');
      table.dropColumn('device_token');
    })
};
