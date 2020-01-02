
require './db/data_mapper_setup'


def populate_questions_table
  general_knowledge = [["The Plaka is the oldest quarter of which city?","Athens",["Athens", "Prague","Rome","Vienna"]],
    ["What is an axolotl?","A species of salamander",["A nerve in the brain","A multi-axled vehicle","A type of mortice lock","A species of salamander"]],
    ["The Panama Canal was officially opened by which US president?","Woodrow Wilson",["Calvin Coolidge","Herbert Hoover","Theodore Roosevelt","Woodrow Wilson"]],
    ["In which opera did Maria Callas make her last appearance at Covent Garden?","Tosca",["Carmen","Tosca","Madame Butterfly","La Boheme"]],
    ["After Adam, Eve, Cain and Abel who is the next person mentioned in the Bible?","Enoch",["Enoch","Jubal","Lamech","Zillah"]],
    ["What is a kudzu?","Antelope",["Antelope", "Bird","Jewish settlement","Climbing plant"]],
    ["Outlawed from 1603 to 1774, which Scottish clan was known as the Faceless Clan?","MacGregor",["Campbell", "MacGregor","MacLeod","MacDonald"]],
    ["From which country does tennis player Andres Gomez, winner of the 1990 French Championships, come?","Ecuador",["Ecuador", "Peru","Portugal","Spain"]]]

  geography = [["Which US city is located on the Maumee River at Lake Erie?","Toledo",["Detroit","Toledo","Cleveland","Buffalo"]],
    ["Lisbon stands at the mouth of which river?","Tagus",["Seine", "Duoro","Rio Grande","Tagus"]],
    ["What is the longest river in France?","Loire",["Loire", "Seine","Rhone","Gironde"]],
    ["In which Australian state is Darwin?","Northern Territory",["Queensland", "Western Australia","Northern Territory","Tasmania"]],
    ["Apart from Rome, how many cities in Italy have a population of over one million?","Three: Milan, Naples and Turin",["Three: Milan, Naples and Turin", "Two: Genoa and Venice","One:Ancona","Four:Florence, Bologna, Trieste and Palermo"]],
    ["What in America is the Palmetto state?","South Carolina",["Florida", "Louisiana","Alabama","South Carolina"]],
    ["In which ocean is Madagascar?","Indian",["Atlantic", "Pacific","Indian","Arctic"]],
    [" In which US city is the Sears Tower?","Chicago",["Boston","Chicago","St. Louis","San Francisco"]]]

  sport = [["At which sport in the 1960s did Peggy Fleming become a household name?","Figure skating",["Equestrian", "Tennis","Sprinting","Figure skating"]],
    ["Who revolutionised high jumping when he used his flop technique to win an Olympic gold medal in Mexico in 1968?","Dick Fosbury",["Dick Fosbury", "Mick Cadbury","Nick Fosdyke","Vic Foster"]],
    ["What nationality was tennis player John Newcombe?","Australian",["British", "Canadian","Irish", "Australian"]],
    ["About which golfer did the great Bobby Jones remark, ''He is playing an entirely different game, a game I'm not even familiar with'' ?","Jack Nicklaus",["Gary Player", "Tiger Woods","Jack Nicklaus","Peter Allis"]],
    ["Which tennis player, famous for her two-handed backhand and baseline-dominated play was nicknamed ''The Ice Maiden''?","Chris Evert",["Steffi Graf","Chris Evert","Evonne Cawley","Kim Clijsters"]],
    ["Who was the Argentinian racing driver ( 1911 – 1995 ) who won five world championships and was team leader of Mercedes-Benz, Alfa Romeo, Ferrari and Maserati?","Juan Manuel Fangio",["Juan Manuel Fangio","Alberto Ascari","Giuseppe Farina","Jose Gonzales"]],
    ["Which Italian jockey rode his first winner Lizzy Hare, at Goodwood in 1987?","Frankie Dettori",["Giovanni Forte", "Diego Dettori","Uto Viaggi", "Frankie Dettori"]],
    ["With which baseball team did Jose DiMaggio achieve icon status in the 1940s?","New York Yankees",["Chicago Bears", "New York Yankees","Baltimore Batters", "Cleveland Steelers"]]]

  food = [["What type of cheese is Stilton?","Blue",["Blue", "Green","Hard", "Mouldy"]],
    ["What do you add to milk to make porridge?","Oats",["Cruel", "Oats","Sugar", "Whisky"]],
    ["What is minestrone?","Soup",["Cheese", "Noodles","A type of potato", "Soup"]],
    ["What is bottled tomato sauce called?","Ketchup",["Brown sauce", "HP sauce","Ketchup", "Piccalilli"]],
    ["What colour is gin?","Colourless",["Colourless", "Blue","Green", "Yellow"]],
    ["Which fruit is covered with toffee at a fairground?","Apple",["Banana", "Apple","Carrot", "Pear"]],
    ["Which nuts are used to make marzipan?","Almonds",["Almonds", "Chestnuts","Hazelnuts", "Walnuts"]],
    ["What meat dish is Cumberland famous for?","Sausage",["Bacon", "Deep-fried Mars Bars","Ribs", "Sausage"]]]

  british_history = [["Which British monarch succeeded Queen Victoria?","Edward VII",["Elizabeth II", "Edward VI","Edward VII", "George VII"]],
    ["Richard III died at which battle?","Bosworth Field",["Bosworth Field", "Barnet","Hastings", "York"]],
    ["Who was the last viceroy of India?","Lord Louis Mountbatten",["Clive", "George VI","Prince Louis of Battenburg", "Lord Louis Mountbatten"]],
    ["Which English monarch married Eleanor of Aquitaine?","Henry II",["Henry II", "Henry IV","Henry VI", "Henry VIII"]],
    ["Who was the last wife of Henry VIII?","Catherine Parr",["Anne of Cleves", "Catherine of Aragon","Catherine Howard", "Catherine Parr"]],
    ["Which country did Britain fight in the War of Jenkins’ Ear?","Spain",["France", "Ireland","Spain", "Wales"]],
    ["Which King George did Prince Regent become?","George IV",["George IV", "George III","George II", "George I"]],
    ["At the Siege of Mafeking, who led the British forces?","Robert Baden-Powell",["Robert Baden-Powell", "Colonel B. T. Mahon","Fieldmarshal Bernard Montgomery", "Louis Mountbatten"]],
    ["The House of Lancaster kings were all called what?","Henry",["Charles", "Edward","George", "Henry"]],
    ["Apart from Mad George, which kinder nickname did George III have?","Farmer George",["Big George", "Farmer Giles","Farmer George", "Happy George"]]]

  general_knowledge.each do |question|
    Question.create(
      question: question[0],
      answer_1: question[2][0],
      answer_2: question[2][1],
      answer_3: question[2][2],
      answer_4: question[2][3],
      correct_answer: question[1],
      category: 'general_knowledge'
    )
  end

  geography.each do |question|
    Question.create(
      question: question[0],
      answer_1: question[2][0],
      answer_2: question[2][1],
      answer_3: question[2][2],
      answer_4: question[2][3],
      correct_answer: question[1],
      category: 'geography'
    )
  end

  sport.each do |question|
    Question.create(
      question: question[0],
      answer_1: question[2][0],
      answer_2: question[2][1],
      answer_3: question[2][2],
      answer_4: question[2][3],
      correct_answer: question[1],
      category: 'sport'
    )
  end

  food.each do |question|
    Question.create(
      question: question[0],
      answer_1: question[2][0],
      answer_2: question[2][1],
      answer_3: question[2][2],
      answer_4: question[2][3],
      correct_answer: question[1],
      category: 'food'
    )
  end

  british_history.each do |question|
    Question.create(
      question: question[0],
      answer_1: question[2][0],
      answer_2: question[2][1],
      answer_3: question[2][2],
      answer_4: question[2][3],
      correct_answer: question[1],
      category: 'british_history'
    )
  end
end
