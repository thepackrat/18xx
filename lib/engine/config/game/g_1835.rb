# frozen_string_literal: true

# TODO: figure out the status of the following in this config.
# trains are correct
# cert limits are correct
# cash is correct
# phases are checked.
# tiles are not correct.
# market is correct
# map hexes are not correct
# companies are correct.
# minors are correct.
# privates are partially correct.

# File original exported from 18xx-maker/export-rb
# https://github.com/18xx-maker/export-rb
# rubocop:disable Lint/RedundantCopDisableDirective, Layout/LineLength, Layout/HeredocIndentation

module Engine
  module Config
    module Game
      module G1835
        JSON = <<-'DATA'
{
  "filename": "1835",
  "modulename": "1835",
  "currencyFormatStr": "%dM",
  "bankCash": 12000,
  "certLimit": {
    "3": 19,
    "4": 15,
    "5": 12,
    "6": 11,
    "7": 9
  },
  "startingCash": {
    "3": 600,
    "4": 475,
    "5": 390,
    "6": 340,
    "7": 310
  },
  "capitalization": "full",
  "layout": "pointy",
  "mustSellInBlocks": false,
  "locationNames": {
    "A11": "Kiel"
  },
  "tiles": {
    "3": 2,
    "5": 2,
    "6": 2,
    "7": 2,
    "8": 5,
    "9": 5
  },
  "market": [
    [
      "",
      "",
      "",
      "",
      "132",
      "148",
      "166",
      "186",
      "208",
      "232",
      "258",
      "286",
      "316",
      "348",
      "382",
      "418"
    ],
    [ "",
      "",
      "98",
      "108",
      "120",
      "134",
      "150",
      "168",
      "188",
      "210",
      "234",
      "260",
      "288",
      "318",
      "350",
      "384"
    ],
    [ "82",
      "86",
      "92p",
      "100",
      "110",
      "122",
      "136",
      "152",
      "170",
      "190",
      "212",
      "236",
      "262",
      "290",
      "320"
    ],
    [ "78",
      "84p",
      "88p",
      "94",
      "102",
      "112",
      "124",
      "138",
      "154p",
      "172",
      "192",
      "214"
    ],
    [ "72",
      "80p",
      "86",
      "90",
      "96",
      "104",
      "114",
      "126",
      "140"
    ],
    [ "64",
      "74",
      "82",
      "88",
      "92",
      "98",
      "106"
    ],
    [ "54",
      "66",
      "76",
      "84",
      "90"
    ]
  ],
  "companies": [
    {
      "name": "Leipzig-Dresdner Bahn",
      "sym": "LD",
      "value": 190,
      "revenue": 20,
      "desc": "Leipzig-Dresdner Bahn - Sachsen Direktor Papier",
            "abilities": [
                {
                    "type": "shares",
                    "shares": [
                        "SX_0",
                        "SX_1"
                    ]
                },
                {
                    "type": "no_buy"
                },
                {
                    "type": "close",
                    "when": "bought_train",
                    "corporation": "SX"
                }
            ]
    },
    {
      "name": "Ostbayrische Bahn",
      "sym": "OBB",
      "value": 120,
      "revenue": 10,
      "desc": "Ostbayrische Bahn - 2 Tiles on M15, M17 extra (one per OR) and without cost",
      "abilities": [
                {
                    "type": "tile_lay",
                    "description": "Place a free track tile at m15, M17 at any time during the corporation's operations.",
                    "owner_type": "player",
                    "hexes": [
                        "M15", "M17"
                    ],
                    "tiles": [
                        "3",
                        "4",
                        "58"
                    ],
                    "free": true,
                    "count": 1
                }
            ]
    },
    {
      "name": "Nürnberg-Fürth",
      "sym": "NF",
      "value": 100,
      "revenue": 5,
      "desc": "Nürnberg-Fürth Bahn, Director of AG may lay token on L14 north or south"
    },
    {
      "name": "Hannoversche Bahn",
      "sym": "HB",
      "value": 160,
      "revenue": 30,
      "desc": "10 Percent Share of Preussische Bahn on Exchange",
       "abilities": [
            {
                    "type": "exchange",
                    "corporation": "PR",
                    "owner_type": "player",
                    "when" : [
                          "Phase 2.3",
                          "Phase 2.4",
                          "Phase 3.1"],
                    "from": "ipo"
            }
        ]
    },
    {
      "name": "Pfalzbahnen",
      "sym": "PB",
      "value": 150,
      "revenue": 15,
      "desc": "Can lay a tile on L6 and Token on L6 if Baden AG is active already",
      "abilities": [
                {
                    "type": "teleport",
                    "owner_type": "player",
                    "free_tile_lay": true,
                    "hexes": [
                      "L6"
                    ],
                    "tiles": [
                        "210",
                        "211",
                        "212",
                        "213",
                        "214",
                        "215"
                    ]
                }
            ]
    },
    {
      "name": "Braunschweigische Bahn",
      "sym": "BB",
      "value": 130,
      "revenue": 25,
      "desc": "Can be exchanged for a 10% share of Preussische Bahn",
        "abilities": [
              {
                    "type": "exchange",
                    "corporation": "PR",
                    "owner_type": "player",
                    "when" : [
                          "Phase 2.3",
                          "Phase 2.4",
                          "Phase 3.1"],
                    "from": "ipo"
              }
        ]
    }
  ],
  "minors": [
    {
      "sym": "VP1",
      "name": "Bergisch Märkische Bahn",
      "logo": "1835/PR",
      "tokens": [
        0
      ],
      "coordinates": "H2",
      "color": "black"
    },
    {
      "sym": "VP2",
      "name": "Berlin Potsdamer Bahn",
      "logo": "1835/PR",
      "tokens": [
        0
      ],
      "coordinates": "E19",
      "color": "black"
    },
    {
      "sym": "VP3",
      "name": "Magdeburger-Bahn",
      "logo": "1835/PR",
      "tokens": [
        0
      ],
      "coordinates": "F14",
      "color": "black"
    },
    {
      "sym": "VP4",
      "name": "Köln-Mindener Bahn",
      "logo": "1835/PR",
      "tokens": [
        0
      ],
      "coordinates": "G5",
      "color": "black"
    },
    {
      "sym": "VP5",
      "name": "Berlin Stettiner Bahn",
      "logo": "1835/PR",
      "tokens": [
        0
      ],
      "coordinates": "E19",
      "color": "black"
    },
    {
      "sym": "VP6",
      "name": "Altona Kiel Bahn",
      "logo": "1835/PR",
      "tokens": [
        0
      ],
      "coordinates": "C11",
      "color": "black"
    }
  ],
 "corporations": [
    {
      "sym": "BY",
      "name": "Bayrische Eisenbahn",
      "logo": "1835/BY",
      "tokens": [
        0,
        0,
        0,
        0,
        0
      ],
      "coordinates" : "O15",
      "color": "Blue"
    },
    {
      "sym": "OL",
      "name": "Oldenburgische Eisenbahn",
      "logo": "1835/OL",
      "tokens": [
        0,
        0
      ],
      "coordinates": "D6",
      "color": "gray"
    },
    {
      "sym": "SX",
      "name": "Sächsische Eisenbahn",
      "logo": "1835/SX",
      "tokens": [
        0,
        0,
        0
      ],
      "coordinates": "H16",
      "color": "red"
    },
    {
      "sym": "BA",
      "name": "Badische Eisenbahn",
      "logo": "1835/BA",
      "tokens": [
        0,
        0
      ],
      "coordinates": "L6",
      "color": "brown"
    },
    {
      "sym": "HE",
      "name": "Hessische Eisenbahn",
      "logo": "1835/HE",
      "tokens": [
        0,
        0
      ],
      "coordinates": "J8",
      "color": "green"
    },
    {
      "sym": "WT",
      "name": "Württembergische Eisenbahn",
      "logo": "1835/WT",
      "tokens": [
        0,
        0
      ],
      "coordinates": "M9",
      "color": "yellow"
    },
    {
      "sym": "MS",
      "name": "Eisenbahn Mecklenburg Schwerin",
      "logo": "1835/MS",
      "tokens": [
        0,
        0
      ],
      "coordinates": "C13",
      "color": "violet"
    },
    {
      "sym": "PR",
      "name": "Preussische Eisenbahn",
      "logo": "1835/PR",
      "tokens": [
        0,
        0,
        0,
        0,
        0
      ],
      "coordinates": "E19",
      "color": "black"
    }
  ],
  "trains": [
    {
      "name": "2",
      "distance": 2,
      "price": 80,
      "rusts_on": "4",
      "num": 9
    },
    {
      "name": "2+2",
      "distance": 2,
      "price": 120,
      "rusts_on": "4+4",
      "num": 4
    },
    {
      "name": "3",
      "distance": 3,
      "price": 180,
      "rusts_on": "6",
      "num": 4
    },
    {
      "name": "3+3",
      "distance": 3,
      "price": 270,
      "rusts_on": "6+6",
      "num": 3
    },
    {
      "name": "4",
      "distance": 4,
      "price": 360,
      "num": 3
    },
    {
      "name": "4+4",
      "distance": 4,
      "price": 440,
      "num": 1
    },
    {
      "name": "5",
      "distance": 5,
      "price": 500,
      "num": 2
    },
    {
      "name": "5+5",
      "distance": 5,
      "price": 600,
      "num": 1
    },
    {
      "name": "6",
      "distance": 6,
      "price": 600,
      "num": 2
    },
    {
      "name": "6+6",
      "distance": 6,
      "price": 720,
      "num": 4
    }
  ],
  "hexes": {
              "white": {
                        "": [
                          "A13",
                          "B10",
                          "B12",
                          "B14"
                            ],
                          "city=revenue:0": [
                         "A11"
                          ]
                        },
              "yellow": {
                          "city=revenue:20;path=a:2,b:_0": [
                          "C13"
                          ]
                        }
            },
  "phases": [
              {
                "name": "1.1",
                "on": "2",
                "train_limit": {
                  "minor":2,
                  "major":4
                },
                "tiles": [
                  "yellow"
                ],
                "operating_rounds": 1
              },
              {
                "name": "1.2",
                "on": "2+2",
                "train_limit": {
                  "minor":2,
                  "major":4
                },
                "tiles": [
                  "yellow"
                ],
                "operating_rounds": 1
              },
              {
                "name": "2.1",
                "on": "3",
                "train_limit": {
                  "minor":2,
                  "major":4
                },
                "tiles": [
                  "yellow",
                  "green"
                ],
                "operating_rounds": 2
              },
              {
                "name": "2.2",
                "on": "3+3",
                "train_limit": {
                    "major" : 4,
                    "minor" : 2
                          },
                "tiles": [
                  "yellow",
                  "green"
                ],
                "operating_rounds": 2
              },
{
                "name": "2.3",
                "on": "4",
                "train_limit": {
                    "major" : 3 ,
                    "minor" : 1
                          },
                "tiles": [
                  "yellow",
                  "green"
                ],
                "operating_rounds": 2
              },
              {
                "name": "2.4",
                "on": "4+4",
                "train_limit": {
                    "prussian" : 4,
                    "major" : 3 ,
                    "minor" : 1
                          },
                "tiles": [
                  "yellow",
                  "green"
                ],
                "operating_rounds": 2
              },
              {
                "name": "3.1",
                "on": "5",
                "train_limit": {
                    "prussian" : 4,
                    "major" : 3 ,
                    "minor" : 1
                          },
                "tiles": [
                  "yellow",
                  "green"
                ],
                "operating_rounds": 3,
                "events": {
                  "close_companies": true
                }
              },
              {
                "name": "3.2",
                "on": "5+5",
                "train_limit": {
                    "prussian" : 3 ,
                    "major" : 2
                          },
                "tiles": [
                  "yellow",
                  "green",
                  "brown"
                ],
                "operating_rounds": 3
              },
              {
                "name": "3.3",
                "on": "6",
                "train_limit": {
                    "prussian" : 3 ,
                    "major" : 2
                          },
                "tiles": [
                  "yellow",
                  "green",
                  "brown"
                ],
                "operating_rounds": 3
              },
              {
                "name": "3.4",
                "on": "6+6",
                "train_limit": {
                    "prussian" : 3 ,
                    "major" : 2
                          },
                "tiles": [
                  "yellow",
                  "green",
                  "brown"
                ],
                "operating_rounds": 3
              }
    ]
}
        DATA
      end
    end
  end
end

# rubocop:enable Lint/RedundantCopDisableDirective, Layout/LineLength, Layout/HeredocIndentation