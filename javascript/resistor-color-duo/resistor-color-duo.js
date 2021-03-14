//
// This is only a SKELETON file for the 'Resistor Color Duo' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const decodedValue = array => {
  let resp = ''
  for (const i of array)
    resp += COLORS.indexOf(i).toString()
  
  return parseInt(resp.slice(0,2), 10)
};

export const COLORS = [
      'black',
      'brown',
      'red',
      'orange',
      'yellow',
      'green',
      'blue',
      'violet',
      'grey',
      'white',
    ];
