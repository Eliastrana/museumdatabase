-- Velger alle bildene fra utstillingen med ID 1
SELECT * FROM artwork
INNER JOIN exhibition ON artwork.Type = exhibition.TypeID
WHERE exhibition.TypeID = 1;

-- Velger alle bilder som er "Oil on canvas" og "Surrealistisk"
SELECT * FROM artwork
LEFT JOIN artist ON artwork.ArtistID = artist.ArtistID
WHERE artwork.Type = 1 AND artist.Era = "Surrealism";