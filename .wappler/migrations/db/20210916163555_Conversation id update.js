
exports.up = function(knex) {
  return knex.schema
    .table('Messages', function (table) {
      table.integer('conversation_id').unsigned();
      table.foreign('conversation_id').references('conversation_id').inTable('Participants').onUpdate('CASCADE').onDelete('CASCADE');
    })
};

exports.down = function(knex) {
  return knex.schema
    .table('Messages', function (table) {
      table.dropForeign('conversation_id');
      table.dropColumn('conversation_id');
    })
};
