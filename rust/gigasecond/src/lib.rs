use chrono::{DateTime, Utc};
use chrono::Duration;

// Returns a Utc DateTime one billion seconds after start.
pub fn after(start: DateTime<Utc>) -> DateTime<Utc> {
    return start + Duration::seconds(1_000_000_000)
}
