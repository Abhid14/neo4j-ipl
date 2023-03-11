
// Add Teams 

CREATE (rcb:Team {name: 'Royal Challengers Bangalore', homeground: 'M. Chinnaswamy Stadium'}),
(mi:Team {name: 'Mumbai Indians', homeground: 'Wankhede Stadium'}),
(csk:Team {name: 'Chennai Super Kings', homeground: 'M. A. Chidambaram Stadium'}),
(dc:Team {name: 'Delhi Capitals', homeground: 'Arun Jaitley Stadium'}),
(kkr:Team {name: 'Kolkata Knight Riders', homeground: 'Eden Gardens'}),
(kxip:Team {name: 'Kings XI Punjab', homeground: 'PCA Stadium, Mohali'}),
(rr:Team {name: 'Rajasthan Royals', homeground: 'Sawai Mansingh Stadium'}),
(srh:Team {name: 'Sunrisers Hyderabad', homeground: 'Rajiv Gandhi International Cricket Stadium'});



// Add Coach

CREATE (:Coach {name: 'Stephen Fleming', nationality: 'New Zealand', team: 'Chennai Super Kings'}),
(:Coach {name: 'Anil Kumble', nationality: 'India', team: 'Kings XI Punjab'}),
(:Coach {name: 'Kumar Sangakkara', nationality: 'Sri Lanka', team: 'Rajasthan Royals'}),
(:Coach {name: 'Ricky Ponting', nationality: 'Australia', team: 'Delhi Capitals'}),
(:Coach {name: 'Brendon McCullum', nationality: 'New Zealand', team: 'Kolkata Knight Riders'}),
(:Coach {name: 'Trevor Bayliss', nationality: 'Australia', team: 'Sunrisers Hyderabad'}),
(:Coach {name: 'Mahela Jayawardene', nationality: 'Sri Lanka', team: 'Mumbai Indians'}),
(:Coach {name: 'Mike Hesson', nationality: 'New Zealand', team: 'Royal Challengers Bangalore'});


// Create Relationsh 
MATCH (t:), (c:Coach)
WHERE t.name = ""
CREATE (c)-[:WAS_COACH_FOR]->(t);






MATCH (player:Player)-[:IS_CAPTAIN]->(team:Team)
WHERE team.name = 'Royal Challengers Bangalore'
RETURN player.role as captain


MATCH (n) WHERE size(keys(n)) = 0 DELETE n
MATCH (N:) WHERE N
// CREATE (rcb_p1)-[:HAS_PLAYED_FOR {salary: 2.5 crore, captain: true}]->(rcb)
CREATE (rcb_p1)-[:HAS_PLAYED_FOR {salary: 2.5 crore}]->(rcb)

// Match Team and add players


MATCH (rcb:Team {name: 'Royal Challengers Bangalore'})
CREATE (rcb_p1:Player {name: 'Virat Kohli', age: 33, role: 'Batsman'})-[:HAS_PLAYED_FOR]->(rcb),
(rcb_p2:Player {name: 'AB de Villiers', age: 37, role: 'Batsman'})-[:HAS_PLAYED_FOR]->(rcb),
(rcb_p3:Player {name: 'Yuzvendra Chahal', age: 31, role: 'Bowler'})-[:HAS_PLAYED_FOR]->(rcb),
(rcb_p4:Player {name: 'Mohammed Siraj', age: 27, role: 'Bowler'})-[:HAS_PLAYED_FOR]->(rcb),
(rcb_p5:Player {name: 'Glenn Maxwell', age: 33, role: 'All-rounder'})-[:HAS_PLAYED_FOR]->(rcb)

MATCH (mi:Team {name: 'Mumbai Indians'})
CREATE (mi_p1:Player {name: 'Rohit Sharma', age: 34, role: 'Batsman'})-[:HAS_PLAYED_FOR]->(mi),
(mi_p2:Player {name: 'Jasprit Bumrah', age: 27, role: 'Bowler'})-[:HAS_PLAYED_FOR]->(mi),
(mi_p3:Player {name: 'Hardik Pandya', age: 28, role: 'All-rounder'})-[:HAS_PLAYED_FOR]->(mi),
(mi_p4:Player {name: 'Quinton de Kock', age: 28, role: 'Wicket-keeper'})-[:HAS_PLAYED_FOR]->(mi),
(mi_p5:Player {name: 'Suryakumar Yadav', age: 31, role: 'Batsman'})-[:HAS_PLAYED_FOR]->(mi)

MATCH (csk:Team {name: 'Chennai Super Kings'})
CREATE (csk_p1:Player {name: 'MS Dhoni', age: 40, role: 'Wicket-keeper'})-[:HAS_PLAYED_FOR]->(csk),
(csk_p2:Player {name: 'Ravindra Jadeja', age: 33, role: 'All-rounder'})-[:HAS_PLAYED_FOR]->(csk),
(csk_p3:Player {name: 'Deepak Chahar', age: 28, role: 'Bowler'})-[:HAS_PLAYED_FOR]->(csk),
(csk_p4:Player {name: 'Faf du Plessis', age: 37, role: 'Batsman'})-[:HAS_PLAYED_FOR]->(csk),
(csk_p5:Player {name: 'Ambati Rayudu', age: 36, role: 'Batsman'})-[:HAS_PLAYED_FOR]->(csk)

MATCH (dc:Team {name: 'Delhi Capitals'})
CREATE (dc_p1:Player {name: 'Rishabh Pant', age: 24, role: 'Wicket-keeper batsman'})-[:HAS_PLAYED_FOR]->(dc),
(dc_p2:Player {name: 'Shikhar Dhawan', age: 36, role: 'Top-order batsman'})-[:HAS_PLAYED_FOR]->(dc),
(dc_p3:Player {name: 'Kagiso Rabada', age: 26, role: 'Fast bowler'})-[:HAS_PLAYED_FOR]->(dc),
(dc_p4:Player {name: 'Ravichandran Ashwin', age: 35, role: 'Spin bowler'})-[:HAS_PLAYED_FOR]->(dc),
(dc_p5:Player {name: 'Prithvi Shaw', age: 22, role: 'Opening batsman'})-[:HAS_PLAYED_FOR]->(dc)

MATCH (kkr:Team {name: 'Kolkata Knight Riders'})
CREATE (kkr_p1:Player {name: 'Shubman Gill', age: 22, role: 'Top-order batsman'})-[:HAS_PLAYED_FOR]->(kkr),
(kkr_p2:Player {name: 'Eoin Morgan', age: 35, role: 'Middle-order batsman'})-[:HAS_PLAYED_FOR]->(kkr),
(kkr_p3:Player {name: 'Andre Russell', age: 33, role: 'All-rounder'})-[:HAS_PLAYED_FOR]->(kkr),
(kkr_p4:Player {name: 'Pat Cummins', age: 28, role: 'Fast bowler'})-[:HAS_PLAYED_FOR]->(kkr),
(kkr_p5:Player {name: 'Varun Chakravarthy', age: 29, role: 'Spinner'})-[:HAS_PLAYED_FOR]->(kkr)


MATCH (kxip:Team {name: 'Kings XI Punjab'})
CREATE (kxip_p1:Player {name: 'KL Rahul', age: 29, role: 'Batsman'})-[:HAS_PLAYED_FOR]->(kxip),
(kxip_p2:Player {name: 'Mayank Agarwal', age: 30, role: 'Batsman'})-[:HAS_PLAYED_FOR]->(kxip),
(kxip_p3:Player {name: 'Chris Gayle', age: 42, role: 'Batsman'})-[:HAS_PLAYED_FOR]->(kxip),
(kxip_p4:Player {name: 'Mohammed Shami', age: 30, role: 'Bowler'})-[:HAS_PLAYED_FOR]->(kxip),
(kxip_p5:Player {name: 'Ravi Bishnoi', age: 21, role: 'Bowler'})-[:HAS_PLAYED_FOR]->(kxip)

MATCH (rr:Team {name: 'Rajasthan Royals'})
CREATE (rr_p1:Player {name: 'Sanju Samson', age: 27, role: 'Batsman'})-[:HAS_PLAYED_FOR]->(rr),
(rr_p2:Player {name: 'Jos Buttler', age: 31, role: 'Batsman'})-[:HAS_PLAYED_FOR]->(rr),
(rr_p3:Player {name: 'Ben Stokes', age: 29, role: 'All-rounder'})-[:HAS_PLAYED_FOR]->(rr),
(rr_p4:Player {name: 'Jofra Archer', age: 26, role: 'Bowler'})-[:HAS_PLAYED_FOR]->(rr),
(rr_p5:Player {name: 'Rahul Tewatia', age: 28, role: 'All-rounder'})-[:HAS_PLAYED_FOR]->(rr)