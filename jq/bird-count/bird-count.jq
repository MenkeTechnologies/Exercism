{
  last_week: .[-2],
  yesterday: .[-1][-2],
  total: .[-1] | add,
  busy_days: [.[-1][] | select(. >= 5)] | length,
  has_day_without_birds: ([ .[-1][] | select(. == 0)] | length > 0)
}
