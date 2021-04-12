use std::collections::BTreeMap;

#[derive(Clone, Debug, Default)]
struct Perf {
    played: usize,
    won: usize,
    drawn: usize,
    lost: usize,
    points: usize,
}

impl Perf {
    fn new() -> Self {
        Self::default()
    }
    fn update(&mut self, res: &str) {
        match res {
            "win" => {
                self.won += 1;
                self.points += 3;
            }
            "draw" => {
                self.drawn += 1;
                self.points += 1;
            }
            "loss" => {
                self.lost += 1;
            }
            _ => {}
        }
        self.played += 1;
    }
}

pub fn tally(match_results: &str) -> String {
    let mut scores: BTreeMap<String, Perf> = BTreeMap::new();

    match_results.split('\n').for_each(|m| {
        let v = m.split(';').collect::<Vec<_>>();

        if v.len() == 3 {
            let team1 = String::from(v[0]);
            let team2 = String::from(v[1]);
            let res = String::from(v[2]);
            let (team1_res, team2_res) = get_res(res);

            map_update(&mut scores, team1, team1_res);

            map_update(&mut scores, team2, team2_res);
        }
    });

    let total = {
        let mut total = scores.into_iter().map(|(k, v)| (k, v)).collect::<Vec<_>>();
        total.sort_by_key(|(_, p)| -(p.points as isize));
        total
    };

    let table = total
        .into_iter()
        .map(|(name, perf)| {
            format!(
                "{: <30} | {: >2} | {: >2} | {: >2} | {: >2} | {: >2}",
                name, perf.played, perf.won, perf.drawn, perf.lost, perf.points
            )
        })
        .collect::<Vec<_>>()
        .join("\n");

    format!(
        "Team                           | MP |  W |  D |  L |  P{}{}",
        if table.len() > 0 { "\n" } else { "" },
        table
    )
}

fn get_res(res: String) -> (&'static str, &'static str) {
    if res == "win" {
        ("win", "loss")
    } else if res == "loss" {
        ("loss", "win")
    } else {
        ("draw", "draw")
    }
}

fn map_update(scores: &mut BTreeMap<String, Perf>, team1: String, res: &str) {
    if scores.contains_key(team1.as_str()) {
        let mut perf = scores.get(team1.as_str()).unwrap().clone();
        perf.update(res);
        scores.insert(team1, perf);
    } else {
        let mut perf = Perf::new();
        perf.update(res);
        scores.insert(team1, perf);
    }
}
