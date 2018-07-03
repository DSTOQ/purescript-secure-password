const setup = require("./output/Main").setup;

console.log(setup({
    calcs: 40e9,
    periods: require("./dictionaries/periods"),
    namedNumbers: require("./dictionaries/named-numbers"),
    characterSets: require("./dictionaries/character-sets"),
    dictionary: require("./dictionaries/top10k"),
    patterns: require("./dictionaries/patterns"),
})("HowSecureIsMyPassword?"))
