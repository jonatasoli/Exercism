pub fn verse(n: u32) -> String {
    let last_phrase = match n {
      0 =>  String::from("\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"),
      1 => String::from("\nTake it down and pass it around, no more bottles of beer on the wall.\n"),
      2 => String::from(format!("\nTake one down and pass it around, {} bottle of beer on the wall.\n", n-1)),
      _ => format!("\nTake one down and pass it around, {} bottles of beer on the wall.\n", n - 1),
    };
    let first_phrase = match n {
      0 => String::from("No more bottles of beer on the wall, no more bottles of beer."),
      1 => format!("{} bottle of beer on the wall, {} bottle of beer.", n, n),
      _ => format!("{} bottles of beer on the wall, {} bottles of beer.", n, n),
    };
    first_phrase + &last_phrase
    }

pub fn sing(start: u32, end: u32) -> String {
    let mut song: String = String::new();
    for step in (end..start+1).rev() {
        let mut _verse: String = String::new();
        if end == step {
            _verse = verse(step);
        } else {
            _verse = format!("{}\n", verse(step));
        }
        song.push_str(&_verse);
    }
    song
}
