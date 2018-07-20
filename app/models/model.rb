
def get_animal(choice1, choice2, choice3)
  
  animals_array = [ 
    [ 
      ["Monkey","Horse"], ["Crab","Butterfly"] 
    ], 
    [ 
      [ "Snake","Tiger"],["Owl","Mouse"] 
    ]
  ]
  
  return animals_array[choice1.to_i][choice2.to_i][choice3.to_i]
end
