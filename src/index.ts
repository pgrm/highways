/// <reference path="../typings/tsd.d.ts" />

interface IRoad {
  ref: string;
  name: string;
  length: number;
}

import * as request from "request";
import * as fs from "fs";
import * as uuid from "node-uuid";

const elasticSearchUrl = "http://localhost:9200/highways/";

const data: any[] = JSON.parse(fs.readFileSync(__dirname + "/../data/austria.json", "utf8"));

function getMappingUrl() {
  return elasticSearchUrl + "_mapping/road/";
}

function getItemUrl(item: IRoad) {
  return elasticSearchUrl + "road/" + item.ref;
}

request.post(elasticSearchUrl, {body: JSON.stringify({
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
})}, () => {
  for(const item of data) {
    request.post(getItemUrl(item), { body: JSON.stringify(item) });
  }
});
