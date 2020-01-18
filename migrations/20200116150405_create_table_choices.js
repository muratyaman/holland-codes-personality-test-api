
exports.up = function(knex) {
  return knex.schema
    .createTable('gca_choices', function (table) {
      table.integer('id').primary();
      table.string('title_en', 100).notNullable();
      table.string('title_ar', 100).notNullable();
      table.integer('question_id').notNullable().index();
      table.boolean('active').notNullable().index();
      table.integer('sort_idx').notNullable().index();
      
      table.index(['active', 'question_id', 'sort_idx']);
      
      table.foreign('question_id').references('gca_questions.id')
        .onUpdate('cascade').onDelete('cascade');
    });
};

exports.down = function(knex) {
  return knex.schema.dropTable('gca_choices');
};
