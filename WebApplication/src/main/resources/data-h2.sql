
  
INSERT INTO ROUTE (ROUTEID,ROUTENAME,SOURCE,DESTINATION,STATIONS) VALUES
  ('R1', 'Baiyappanahalli-Mysore Road','Baiyappanahalli','Mysore Road','Baiyyappanahalli; Swami Vivekananda Road; Indiranagar;Mahatma Gandhi Road; Cubbon Park; Vidhana Soudha; Majestic; City Railway Station;  Vijayanagar; Mysore Road' ),
  ('R2', 'Nagasandra-Yelachenahalli','Nagasandra','Yelachenahalli','Nagasandra;Dasarahalli;Peenya;Goraguntepalya;Yeshwanthpur;Sandal Soap Factory;Rajajinagar;Majestic;Yelachenahalli');
  

INSERT INTO METRO (METROKEY,METROID,ROUTEID,NOOFCOACHES,CROWDEDSTATUS,CURRENTSTATION,NEXTSTATION) VALUES
  ('1','M1','R1','3','Moderate','Baiyyappanahalli','Baiyyappanahalli'),
  ('2','M1','R1','3','Moderate','Baiyyappanahalli','Swami Vivekananda Road'),
  ('3','M1','R1','3','Moderate','Swami Vivekananda Road',' Indiranagar'),
  ('4','M1','R1','3','Moderate','Indiranagar','Mahatma Gandhi Road'),
  ('5','M1','R1','3','Moderate','Mahatma Gandhi Road','Cubbon Park'),
  ('6','M1','R1','3','Moderate','Cubbon Park','Vidhana Soudha'),
  ('7','M1','R1','3','Moderate','Vidhana Soudha','Majestic'),
  ('8','M1','R1','3','Moderate','Majestic','City Railway Station'),
  ('9','M1','R1','3','Moderate','City Railway Station','Vijayanagar'),
  ('10','M1','R1','3','Moderate','Vijayanagar','Mysore Road'),
  ('11','M2','R2','3','Full','Nagasandra','Nagasandra'),  
  ('12','M2','R2','3','Full','Nagasandra','Dasarahalli'),  
  ('13','M2','R2','3','Full','Dasarahalli','Peenya'),
  ('14','M2','R2','3','Full','Peenya','Goraguntepalya'),
  ('15','M2','R2','3','Full','Goraguntepalya','Yeshwanthpur'),  
  ('16','M2','R2','3','Full','Yeshwanthpur','Sandal Soap Factory'), 
  ('17','M2','R2','3','Full','Sandal Soap Factory','Rajajinagar'),  
  ('18','M2','R2','3','Full','Rajajinagar','Majestic'),
  ('19','M2','R2','3','Full','Majestic','Yelachenahalli');    
  
INSERT INTO METROCOACH (COACHID,COACHNAME,METROID ,CAPACITY,FREESEATS) VALUES
  ('1','C-1','M1',100,50),
  ('2','C-2','M1',100,63),
  ('3','C-3','M1',100,55),
  ('4','C-1','M2',100,71),
  ('5','C-2','M2',100,30),
  ('6','C-3','M2',100,44);
  
