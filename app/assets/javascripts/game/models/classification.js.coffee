@Classification = Backbone.Model.extend
  
  defaults:
    name: ""
    priority: 0
    patterns: []

priority = 100

###
  Tunic
###

@tunic = new Classification
  name: "Tunic"
  priority: priority--
  patterns:
    [
      [ [1, 0], [2, 0], [0, 1], [1, 1], [2, 1] ],
      [ [1, 0], [0, 1], [1, 1], [0, 2], [1, 2] ]
    ]

###
  Leggings
###

@leggings = new Classification
  name: "Legging"
  priority: priority--
  patterns:
    [
      # [ [1, 0], [0, 1], [0, 2], [1, 2] ],  # Currently disabled due to "gravity" problem
      [ [0, 1], [1, 1], [2, 1], [2, 0] ],
      # [ [1, 0], [1, 1], [1, 2], [0, 2] ],
      [ [0, 1], [1, 0], [2, 0], [2, 1] ],
    ]

###
  Crossbow
###

@crossbow = new Classification
  name: "Crossbow"
  priority: priority--
  patterns:
    [
      [ [-1, 1], [0, 1], [1, 1], [0, 2], [0, 3] ],
      [ [-1, 1], [0, 1], [1, 1], [0, 2], [-2, 1] ],
      [ [-1, 1], [0, 1], [1, 1], [0, 2], [2, 1] ],
      [ [-1, 2], [0, 1], [1, 2], [0, 2], [0, 3] ],
    ]

###
  Sword
###

@longsword = new Classification
  name: "Sword"
  priority: priority--
  patterns:
    [
      [ [1, 0], [2, 0], [3, 0] ],
      [ [0, 1], [0, 2], [0, 3] ]
    ]


###
  Axe
###

@axe = new Classification
  name: "Axe"
  priority: priority--
  patterns:
    [
      [ [1, 0], [2, 0], [1, 1], [1, 2] ],
      [ [1, 0], [2, 0], [2, -1], [2, 1] ],
      [ [0, 1], [0, 2], [1, 1], [2, 1] ],
      [ [0, 1], [0, 2], [-1, 2], [1, 2] ]
    ]

###
  Shield
###

@shield = new Classification
  name: "Shield"
  priority: priority--
  patterns:
    [
      [ [1, 0], [0, 1], [1, 1] ]
    ]


###
  Sword
###

@sword = new Classification
  name: "Sword"
  priority: priority--
  patterns:
    [
      [ [1, 0], [2, 0] ],
      [ [0, 1], [0, 2] ]
    ]