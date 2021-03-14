use chrono::{Duration, NaiveTime, Timelike};
use std::fmt;

#[derive(Debug)]
pub struct Clock { 
    clock_format: NaiveTime
}

impl Clock {
    pub fn new(hours: i32, minutes: i32) -> Self {
        Clock {
            clock_format: NaiveTime::from_hms(((24 + hours % 24) % 24) as u32, 0, 0)
                + Duration::minutes(minutes as i64),
        }
    }

    pub fn add_minutes(&self, minutes: i32) -> Self {
        Clock {
            clock_format: self.clock_format + Duration::minutes(minutes as i64),
        }
    }
}

impl PartialEq for Clock {
    fn eq(&self, other: &Self) -> bool {
        self.clock_format == other.clock_format
    }
}

impl fmt::Display for Clock {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(
            f,
            "{:0>2}:{:0>2}",
            self.clock_format.hour(),
            self.clock_format.minute()
        )
    }
}
