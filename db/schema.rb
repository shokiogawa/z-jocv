# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_26_125501) do

  create_table "answers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "a"
    t.bigint "exam_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exam_id"], name: "index_answers_on_exam_id"
  end

  create_table "contents", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "c"
    t.index ["post_id"], name: "index_contents_on_post_id"
  end

  create_table "exams", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "topic_id"
    t.bigint "user_id"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_exams_on_topic_id"
    t.index ["user_id"], name: "index_exams_on_user_id"
  end

  create_table "favorites", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_favorites_on_post_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "kinds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "k"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "points", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "p"
    t.bigint "t_content_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["t_content_id"], name: "index_points_on_t_content_id"
  end

  create_table "post_kind_relationships", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "kind_id"
    t.index ["kind_id"], name: "index_post_kind_relationships_on_kind_id"
    t.index ["post_id"], name: "index_post_kind_relationships_on_post_id"
  end

  create_table "posts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.string "ex"
    t.string "url"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "t_content_id"
    t.index ["t_content_id"], name: "index_posts_on_t_content_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "relatives", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "post_id"
    t.bigint "t_content_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_relatives_on_post_id"
    t.index ["t_content_id"], name: "index_relatives_on_t_content_id"
  end

  create_table "s_contents", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "image"
    t.string "stitle"
    t.text "content"
    t.bigint "t_content_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["t_content_id"], name: "index_s_contents_on_t_content_id"
  end

  create_table "sexams", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "image"
    t.string "stitle"
    t.text "content"
    t.bigint "exam_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exam_id"], name: "index_sexams_on_exam_id"
  end

  create_table "t_contents", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "topic_id"
    t.bigint "user_id"
    t.string "image"
    t.text "c"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_t_contents_on_topic_id"
    t.index ["user_id"], name: "index_t_contents_on_user_id"
  end

  create_table "textbooks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.bigint "textbook_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["textbook_id"], name: "index_topics_on_textbook_id"
    t.index ["user_id"], name: "index_topics_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "country"
    t.string "job"
    t.string "year"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "answers", "exams"
  add_foreign_key "contents", "posts"
  add_foreign_key "exams", "topics"
  add_foreign_key "exams", "users"
  add_foreign_key "favorites", "posts"
  add_foreign_key "favorites", "users"
  add_foreign_key "points", "t_contents"
  add_foreign_key "post_kind_relationships", "kinds"
  add_foreign_key "post_kind_relationships", "posts"
  add_foreign_key "posts", "t_contents"
  add_foreign_key "posts", "users"
  add_foreign_key "relatives", "posts"
  add_foreign_key "relatives", "t_contents"
  add_foreign_key "s_contents", "t_contents"
  add_foreign_key "sexams", "exams"
  add_foreign_key "t_contents", "topics"
  add_foreign_key "t_contents", "users"
  add_foreign_key "topics", "textbooks"
  add_foreign_key "topics", "users"
end
