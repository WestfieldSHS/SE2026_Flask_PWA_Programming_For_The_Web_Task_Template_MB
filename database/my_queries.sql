/*
SELECT * FROM "table-name";
CREATE TABLE tvshow(tvID INTEGER NOT NULL PRIMARY KEY,name TEXT NOT NULL,genre TEXT NOT NULL,about TEXT NOT NULL,stars TEXT NOT NULL,platform TEXT NOT NULL,status TEXT NOT NULL,image TEXT NOT NULL);
where, tvID: unique identifier
name: name of show
hyperlink: link to imdb
genre: turn later into numerical relation to other table of genres
about: blurb
stars: big name actors
platform: what website are they on: also turn into numbers later
status: watching? to be watched? watched?
image: url to image

INSERT INTO media(name,hyperlink,genre,about,stars,platform,status,image) 
VALUES (
    "Cyberpunk Edgerunners", 
    "https://www.tvmaze.com/shows/48945/cyberpunk-edgerunners", 
    "Anime, Dystopian, Sci-Fi, Action-Adventure", 
    "A Street Kid trying to survive in a technology and body modification-obsessed city of the future. Having everything to lose, he chooses to stay alive by becoming an Edgerunner, a Mercenary outlaw also known as a Cyberpunk.", 
    "KENN, Koki Uchiyama, Momoka Terasawa", 
    "Netflix", 
    "Watched", 
    "https://static.tvmaze.com/uploads/images/medium_portrait/498/1246519.jpg"
);

INSERT INTO media(name,hyperlink,genre,about,stars,platform,status,image) 
VALUES (
    "Criminal Minds", 
    "https://www.tvmaze.com/shows/81/criminal-minds", 
    "Mystery, Psychological, Crime, Drama", 
    "The FBI's Behavioral Analysis Unit in Quantico helps police solve violent serial crimes using profiling. Team members analyze evidence and psychology to catch unknown subjects, but their demanding work affects personal lives.", 
    "Kirsten Vangsness, A.J. Cook, Matthew Gray Gubler", 
    "Disney+", 
    "Watched", 
    "https://static.tvmaze.com/uploads/images/medium_portrait/626/1567475.jpg"
);

INSERT INTO media(name,hyperlink,genre,about,stars,platform,status,image) 
VALUES (
    "NCIS: Los Angeles", 
    "https://www.tvmaze.com/shows/72/ncis-los-angeles", 
    "Crime, Action, Drama, Comedy", 
    "Follows the undercover agents assigned to the Office of Special Projects (OSP for short), a special branch of the Naval Criminal Investigative Service (also known as NCIS) that investigate terrorism and National Security threats.", 
    "Chris O'Donnell, Daniela Ruah, LL Cool J", 
    "7Plus", 
    "Watching", 
    "https://static.tvmaze.com/uploads/images/medium_portrait/444/1110924.jpg"
);

INSERT INTO media(name,hyperlink,genre,about,stars,platform,status,image) 
VALUES (
    "Resident Evil (2026)", 
    "https://www.themoviedb.org/movie/1423191-resident-evil", 
    "Horror, Sci-Fi, Adventure, Comedy", 
    "Medical courier Bryan unwittingly finds himself fighting for survival as one fateful, horrifying night collapses around him in chaos.", 
    "Austin Abrams", 
    "n/a", 
    "Watched", 
    "https://image.tmdb.org/t/p/w1280/i7UyjfPio0VFHB9rBUZSFyhOoM8.jpg"
);

INSERT INTO media(name,hyperlink,genre,about,stars,platform,status,image) 
VALUES (
    "Project Hail Mary (2026)", 
    "https://www.themoviedb.org/movie/687163-project-hail-mary", 
    "Sci-Fi, Comedy, Adventure", 
    "Science teacher Ryland Grace wakes up on a spaceship light years from home with no recollection of who he is or how he got there. As his memory returns, he begins to uncover his mission: solve the riddle of the mysterious substance causing the sun to die out. He must call on his scientific knowledge and unorthodox ideas to save everything on Earth from extinction.", 
    "Ryan Gosling, Sandra Huller, James Ortiz", 
    "Amazon Prime Video", 
    "Watched", 
    "https://image.tmdb.org/t/p/w1280/iOb2fjXLbpJgyQXe46n1WtGCnaa.jpg"
);