# Murmurs of a Hash

Thin jruby wrapper around a java MurmurHash class. Mostly b/c I'm too lazy to port
the code to ruby right now and we need the exact implementation in this Java class,
not one of the other million implementations available in Ruby already.

If it's useful to you, use it. If not, I'm sorry. Either way, we provide no warranties
for this gem.

I believe [this](https://github.com/indeedeng/util/blob/master/util-core/src/main/java/com/indeed/util/core/hash/MurmurHash.java) is the original source of the MurmurHash.java class.

And [this](https://sites.google.com/site/murmurhash/) is the original publisher of the algorithm.

# Disclaimer

I don't really understand hashing algorithms, bit shifting, Ruby, Java, or why
the earth revolves around the sun. Feel free to make fun of me for this awful,
awful gem.

Also feel free to help me write better ruby by creating an issue or a pull request.
You know what to do.

# License

MIT [license](LICENSE)
