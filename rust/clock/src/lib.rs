use std::fmt;
use std::fmt::Formatter;
use chrono::{Duration, NaiveTime};

#[derive(Debug, PartialEq)]
pub struct Clock { 
    pub clock_format: NaiveTime,
    _secret: (),
}

impl Clock {
    pub fn new(hours: i32, minutes: i32) -> Self {
        Clock {
            clock_format: NaiveTime::from_hms( 0, 0, 0)
                + Duration::hours(hours as i64)
                + Duration::minutes(minutes as i64),
            _secret: (),
        }
    }

    pub fn add_minutes(&self, minutes: i32) -> Self {
        Clock {
            clock_format: self.clock_format + Duration::minutes(minutes as i64),
            _secret: (),
        }
    }
}


impl fmt::Display for Clock {
    fn fmt(&self, f: &mut Formatter<'_>) -> fmt::Result {
        let formatted_time = &self.clock_format.format("%H:%M").to_string();
        write!(f, "{}", formatted_time)
    }
}
