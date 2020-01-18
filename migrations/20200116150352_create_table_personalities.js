
exports.up = function(knex) {
  return knex.schema
    .createTable('gca_personalities', function (table) {
      table.string('id', 1).primary();
      table.string('initial_en', 1).notNullable();
      table.string('initial_ar', 1).notNullable();
      table.string('title_en', 100).notNullable();
      table.string('title_ar', 100).notNullable();
      table.string('alias_en', 100).notNullable();
      table.string('alias_ar', 100).notNullable();
      table.text('description_en').notNullable();
      table.text('description_ar').notNullable();
    });
};

exports.down = function(knex) {
  return knex.schema.dropTable('gca_personalities');
};
