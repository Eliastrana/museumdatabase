-- Velger alle bildene fra utstillingen med ID 1
SELECT 
    artwork.Title, 
    COALESCE(CONCAT(artist.FirstName, ' ', artist.LastName), artist.FirstName) AS ArtistName, 
    artwork.Description, 
    artwork.SaleStatus, 
    exhibition.ExhibitionTitle 
FROM artwork
INNER JOIN exhibition ON artwork.Type = exhibition.TypeID
JOIN artist ON artwork.ArtistID = artist.ArtistID
WHERE exhibition.TypeID = 1;

-- Velger alle bilder som er "Oil on canvas" og "Surrealistisk"
SELECT * FROM artwork
LEFT JOIN artist ON artwork.ArtistID = artist.ArtistID
WHERE artwork.Type = 1 AND artist.Era = "Surrealism";