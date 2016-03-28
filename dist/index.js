/// <reference path="../typings/tsd.d.ts" />
"use strict";
var request = require("request");
var fs = require("fs");
var elasticSearchUrl = "http://localhost:9200/highways/";
var data = JSON.parse(fs.readFileSync(__dirname + "/../data/austria.json", "utf8"));
function getMappingUrl() {
    return elasticSearchUrl + "_mapping/road/";
}
function getItemUrl(item) {
    return elasticSearchUrl + "road/" + item.ref;
}
request.post(elasticSearchUrl, { body: JSON.stringify({
        settings: {
            analysis: {
                filter: {
                    custom_ngram: {
                        type: "nGram",
                        max_gram: 50,
                        min_gram: 2
                    }
                },
                analyzer: {
                    road_name: {
                        filter: [
                            "lowercase",
                            "custom_ngram"
                        ],
                        type: "custom",
                        tokenizer: "standard"
                    }
                }
            }
        },
        mappings: {
            road: {
                properties: {
                    name: {
                        type: "string",
                        analyzer: "road_name"
                    },
                    ref: { type: "string" },
                    length: { type: "integer" }
                }
            }
        }
    }) }, function () {
    for (var _i = 0, data_1 = data; _i < data_1.length; _i++) {
        var item = data_1[_i];
        request.post(getItemUrl(item), { body: JSON.stringify(item) });
    }
});
