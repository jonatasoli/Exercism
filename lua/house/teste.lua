local house = {}

house.verse = function(which)
  local verses = {
  [[This is the house that Jack built.]],
  [[that ate the malt]],
  [[that killed the rat]],
  [[that worried the cat]],
  [[that tossed the dog]],
  [[that milked the cow with the crumpled horn]],
  [[that kissed the maiden all forlorn]],
  [[that married the man all tattered and torn]],
  [[that woke the priest all shaven and shorn]],
  [[that kept the rooster that crowed in the morn]],
  [[that belonged to the farmer sowing his corn]],
  [[This is the horse and the hound and the horn]],
  }
  for i=1, #verses do
    print(verses[i])
  end
  return verses[which]
end

tt = house.verse
print("Meu print", tt(1))
