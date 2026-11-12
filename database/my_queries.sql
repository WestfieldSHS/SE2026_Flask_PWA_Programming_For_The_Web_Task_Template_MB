/*
SELECT * FROM `media-copy`;

SELECT * FROM "table-name";
CREATE TABLE mediacopy(tvID INTEGER NOT NULL PRIMARY KEY, name TEXT NOT NULL, hyperlink TEXT NOT NULL, slogan TEXT NOT NULL, genre TEXT NOT NULL,about TEXT NOT NULL,stars TEXT NOT NULL,platform TEXT NOT NULL,status TEXT NOT NULL,image TEXT NOT NULL);

INSERT INTO mediacopy(name,hyperlink,slogan,genre,about,stars,platform,status,image)
VALUES (
    "Cyberpunk Edgerunners", 
    "https://www.themoviedb.org/tv/105248-cyberpunk-edgerunners", 
    "New Legends. Same Night City",
    "Anime, Dystopian, Sci-Fi, Action-Adventure", 
    "A Street Kid trying to survive in a technology and body modification-obsessed city of the future. Having everything to lose, he chooses to stay alive by becoming an Edgerunner, a Mercenary outlaw also known as an Edgerunner.", 
    "KENN, Koki Uchiyama, Momoka Terasawa", 
    "Netflix", 
    "Watched", 
    "https://image.tmdb.org/t/p/w1280/v3JuB15WybKmxDeT1hWdK3j6eSJ.jpg"
);

INSERT INTO mediacopy(name,hyperlink,slogan,genre,about,stars,platform,status,image)
VALUES (
    "Criminal Minds", 
    "https://www.themoviedb.org/tv/4057-criminal-minds", 
    "To catch a criminal, you have to think like one.",
    "Mystery, Psychological, Crime, Drama", 
    "The FBI's Behavioral Analysis Unit in Quantico helps police solve violent serial crimes using profiling. Team members analyze evidence and psychology to catch unknown subjects, but their demanding work affects personal lives.", 
    "Kirsten Vangsness, A.J. Cook, Matthew Gray Gubler", 
    "Disney+", 
    "Watched", 
    "https://image.tmdb.org/t/p/w1280/hWSb4UnIjlTvnvrP98NbFSO60HA.jpg"
);

INSERT INTO mediacopy(name,hyperlink,slogan,genre,about,stars,platform,status,image)
VALUES (
    "NCIS: Los Angeles", 
    "https://www.themoviedb.org/tv/17610-ncis-los-angeles",
    "New city. New team. Same attitude.", 
    "Crime, Action, Drama, Comedy", 
    "Follows the undercover agents assigned to the Office of Special Projects (OSP for short), a special branch of the Naval Criminal Investigative Service (also known as NCIS) that investigate terrorism and National Security threats.", 
    "Chris O'Donnell, Daniela Ruah, LL Cool J", 
    "7Plus", 
    "Watching", 
    "https://static.tvmaze.com/uploads/images/medium_portrait/444/1110924.jpg"
);

INSERT INTO mediacopy(name,hyperlink,slogan,genre,about,stars,platform,status,image)
VALUES (
    "Resident Evil (2026)", 
    "https://www.themoviedb.org/movie/1423191-resident-evil", 
    "A new era of evil.",
    "Horror, Sci-Fi, Adventure, Comedy", 
    "Medical courier Bryan unwittingly finds himself fighting for survival as one fateful, horrifying night collapses around him in chaos.", 
    "Austin Abrams", 
    "n/a", 
    "Watched", 
    "https://image.tmdb.org/t/p/w1280/i7UyjfPio0VFHB9rBUZSFyhOoM8.jpg"
);

INSERT INTO mediacopy(name,hyperlink,slogan,genre,about,stars,platform,status,image)
VALUES (
    "Project Hail Mary (2026)", 
    "https://www.themoviedb.org/movie/687163-project-hail-mary", 
    "Believe in the Hail Mary",
    "Sci-Fi, Comedy, Adventure", 
    "Science teacher Ryland Grace wakes up on a spaceship light years from home with no recollection of who he is or how he got there. As his memory returns, he begins to uncover his mission: solve the riddle of the mysterious substance causing the sun to die out. He must call on his scientific knowledge and unorthodox ideas to save everything on Earth from extinction.", 
    "Ryan Gosling, Sandra Huller, James Ortiz", 
    "Amazon Prime Video", 
    "Watched", 
    "https://image.tmdb.org/t/p/w1280/iOb2fjXLbpJgyQXe46n1WtGCnaa.jpg"
);

INSERT INTO mediacopy(name,hyperlink,slogan,genre,about,stars,platform,status,image)
VALUES (
    "The Office (US)", 
    "https://www.themoviedb.org/tv/2316-the-office", 
    "A comedy for anyone whose boss is an idiot.",
    "Sit-Com, Mockumentary, Drama, Comedy, Romance", 
    "A mockumentary on a group of typical office workers, where the workday consists of ego clashes, inappropriate behavior, tedium and romance.", 
    "John Krasinski, Jenna Fischer, Rainn Wilson, Steve Carell", 
    "Netflix, Disney Plus, Prime Video", 
    "Watched", 
    "https://image.tmdb.org/t/p/w1280/7DJKHzAi83BmQrWLrYYOqcoKfhR.jpg"
);