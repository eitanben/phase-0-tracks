highway = {
  best: {
    east: [
      "280",
      "N24",
      [33, "San Carlos Blvd", "Redwood Freeway", "Los Altos Avenue"],
      "Great Sea Side"
    ],

    west: [
      "92",
      "17",
      "San Mateo Bridge"
    ],

    north: [
      "H1",
      "Saint Francis",
      "Stinson Beach"
    ],

    south: [
      "34",
      "Mill Valley Way",
      "Shoreline Loop"
    ]
  },

  worse: {
    east: [
      "Bacardi",
      "Spiced",
      "Captain Morgan"
    ],

    west: [
      "Pinot Noir",
      "Merlot",
      "Cabernet"
    ],

    north: [
      "13",
      "80",
      "Parkway"
    ],

    south: [
      "Half Moon Bay",
      "Dumbarton Bridge",
      "Santa Anita"
    ]
  }
}

p highway [:best][:east][1]
p highway [:worse][:south][2]
p highway [:best] [:east]
p highway [:best] [:east][2][2]
