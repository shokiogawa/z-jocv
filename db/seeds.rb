# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Kind.create(
    [
        {k: "Science"},
        {k: "Mathematics"},
        {k: "Language"},
        {k: "English"},
        {k: "Culture"},
        {k: "Physical education"},
        {k: "Society"},
        {k: "Other"},
    ]
    )
Textbook.create(
    [
        {grade: "Grade8"},
        {grade: "Grade9"},
        {grade: "Grade10"},
        {grade: "Grade11"},
    ]
)