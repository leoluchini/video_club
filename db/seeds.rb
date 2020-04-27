# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.create([
               { title: "Star Wars", plot: "Taking all six films as a single story, Star Wars tells the story of the rise and fall of one of the most powerful Jedis in history, Anakin Skywalker. Anakin's talent is disovered, he rises in the ranks of the Jedi, is misled by his own fears, corrupted by power, and redeemed by the love of his son." },
               { title: "Lord of the Rings", plot: "Frodo Baggins is a hobbit that his uncle Bilbo bears the powerful One Ring, capable of granting unlimited power to whoever possesses it, in order to destroy it. However, very powerful evil forces want to take it away from him." }
             ])

season = Season.create(title: "Prision Break", plot: "Lincoln Burrows (Dominic Purcell) has been framed for the murder of the Vice Presidents brother, and is now awaiting execution on death row. Lincolns brother, Michael Scofield (Wentworth Miller), makes it his mission to deliberately get sent to the same prison as his brother, and break him out before his execution.", number: 1)
Episode.create(title: "Allen", plot: "Michael Scofield and Fernando Sucre (Amaury Nolasco) face a lockdown in order for the guards to search cells for contraband, when they're about to throw away a knife, they were stopped by Bellick (Wade Williams), who sends Sucre to SHU. Warden Pope (Stacy Keach) calls off the search for Michael's cell, but Bellick feels determined to, and sneaks into his cell when the prisoners are away, and finds the name \"Allen Schweitzer\". Bellick runs the name on the database, only to find no one matching it.", number:2, film_id: season.id)
Episode.create(title: "Pilot", plot: "Michael Scofield receives a mysterious body tattoo, and then strips his apartment of articles of various people from Fox River, along with a hard disk which he throws into a river", number:1, film_id: season.id)
