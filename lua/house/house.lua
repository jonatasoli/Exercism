local house = {}

local verses = {
  { action = [[that lay in ]], person = [[the house that Jack built.]]},
  { action = [[that ate ]], person = [[the malt]] },
  { action = [[that killed ]], person = [[the rat]] },
  { action = [[that worried ]], person = [[the cat]] },
  { action = [[that tossed ]], person = [[the dog]] },
  { action = [[that milked ]], person = [[the cow with the crumpled horn]] },
  { action = [[that kissed ]], person = [[the maiden all forlorn]] },
  { action = [[that married ]], person = [[the man all tattered and torn]] },
  { action = [[that woke ]], person = [[the priest all shaven and shorn]] },
  { action = [[that kept ]], person = [[the rooster that crowed in the morn]] },
  { action = [[that belonged to ]], person = [[the farmer sowing his corn]] },
  { action = [[]], person = [[the horse and the hound and the horn]] },
}

house.verse = function(which)
  local phrase = {}
  for j=which, 1, -1 do
    if j == which then
      phrase[which] = "This is "..verses[j].person
    else
    phrase[which] = phrase[which]..'\n'..verses[j].action..verses[j].person
    end
  end
  return phrase[which]
end

house.recite = function()
  local verse = house.verse
  local song =  {}
  for i=1, #verses do
    song[i] = verse(i)
  end
  return table.concat(song,"\n")

end

return house
