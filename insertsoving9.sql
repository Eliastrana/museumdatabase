INSERT INTO Artist (ArtistID, FirstName, LastName, Birthdate, Nationality, Era)
VALUES
(1, 'Claude', 'Monet', '1840-11-14', 'French', 'Impressionist'),
(2, 'Pablo', 'Picasso', '1881-10-25', 'Spanish', 'Cubism'),
(3, 'Georgia', 'O''Keeffe', '1887-11-15', 'American', 'Modern'),
(4, 'Leonardo', 'da Vinci', '1452-04-15', 'Italian', 'Renaissance'),
(5, 'Frida', 'Kahlo', '1907-07-06', 'Mexican', 'Surrealism'),
(6, 'Vincent', 'van Gogh', '1853-03-30', 'Dutch', 'Post-Impressionist'),
(7, 'Rene', 'Magritte', '1898-11-21', 'Belgian', 'Surrealism'),
(8, 'Jackson', 'Pollock', '1912-01-28', 'American', 'Abstract Expressionism'),
(9, 'Rembrandt', 'van Rijn', '1606-07-15', 'Dutch', 'Baroque'),
(10, 'Yayoi', 'Kusama', '1929-03-22', 'Japanese', 'Contemporary'),
(11, 'Salvador', 'Dali', '1904-05-11', 'Spanish', 'Surrealism'),
(12, 'Edvard', 'Munch', '1863-12-12', 'Norwegian', 'Symbolism'),
(13, 'Mary', 'Cassatt', '1844-05-22', 'American', 'Impressionist'),
(14, 'Katsushika', 'Hokusai', '1760-10-31', 'Japanese', 'Edo Period'),
(15, 'Diego', 'Rivera', '1886-12-08', 'Mexican', 'Muralism'),
(16, 'Joan', 'Miró', '1893-04-20', 'Spanish', 'Surrealism'),
(17, 'Winslow', 'Homer', '1836-02-24', 'American', 'Realism'),
(18, 'Gustav', 'Klimt', '1862-07-14', 'Austrian', 'Symbolism'),
(19, 'Caravaggio', 'Michelangelo Merisi da', '1571-09-29', 'Italian', 'Baroque'),
(20, 'Camille', 'Pissarro', '1830-07-10', 'Danish-French', 'Impressionist');


INSERT INTO Artwork (ArtworkID, ArtistID, Title, Description, Type, ProductionYear, Dimensions, Status)
VALUES
(1, 1, 'Water Lilies', 'Series of oil paintings', 'Oil Painting', 1919, '200x180', 'Exhibited'),
(2, 2, 'Guernica', 'Anti-war masterpiece', 'Oil on Canvas', 1937, '349x776', 'Storage'),
(3, 3, 'Red Poppy No. VI', 'Close-up of a flower', 'Oil on Canvas', 1928, '90x60', 'Not Available'),
(4, 4, 'Mona Lisa', 'Portrait of Lisa del Giocondo', 'Oil on Poplar', 1503, '77x53', 'Exhibited'),
(5, 5, 'The Two Fridas', 'Self-portrait with alter ego', 'Oil on Canvas', 1939, '173x173', 'Storage'),
(6, 6, 'Starry Night', 'Night sky with swirling clouds', 'Oil on Canvas', 1889, '73x92', 'Exhibited'),
(7, 7, 'The Son of Man', 'Man with an apple in front of his face', 'Oil on Canvas', 1964, '81x60', 'Not Available'),
(8, 8, 'Number 1A, 1948', 'Drip painting', 'Enamel on Canvas', 1948, '173x266', 'Storage'),
(9, 9, 'The Night Watch', 'Group portrait of a militia company', 'Oil on Canvas', 1642, '363x437', 'Exhibited'),
(10, 10, 'Infinity Mirrored Room', 'Immersive art installation', 'Mixed Media', 1965, 'Variable', 'Exhibited'),
(11, 11, 'The Persistence of Memory', 'Melting clocks', 'Oil on Canvas', 1931, '24x33', 'Exhibited'),
(12, 12, 'The Scream', 'Expression of anxiety', 'Tempera on Board', 1893, '91x73', 'Storage'),
(13, 13, 'The Childs Bath', 'Mother and child scene', 'Oil on Canvas', 1893, '100x80', 'Not Available'),
(14, 14, 'The Great Wave off Kanagawa', 'Woodblock print', 'Ukiyo-e', 1831, '25x37', 'Exhibited'),
(15, 15, 'Man at the Crossroads', 'Fresco mural', 'Fresco', 1933, '625x200', 'Destroyed'),
(16, 16, 'The Tilled Field', 'Abstract landscape', 'Oil on Canvas', 1923, '33x41', 'Exhibited'),
(17, 17, 'Breezing Up (A Fair Wind)', 'Sailboat scene', 'Oil on Canvas', 1876, '61x97', 'Storage'),
(18, 18, 'The Kiss', 'Symbolic painting of love', 'Oil on Canvas', 1907, '180x180', 'Exhibited'),
(19, 19, 'Supper at Emmaus', 'Biblical scene', 'Oil on Canvas', 1601, '141x196', 'Exhibited'),
(20, 20, 'Pumpkin', 'Infinity Mirrored Room with pumpkins', 'Mixed Media', 1994, 'Variable', 'Exhibited');


-- Exhibition
INSERT INTO Exhibition (ExhibitionID, ExhibitionTitle, StartDate, EndDate, Location, Curator, ExhibitionCategory)
VALUES
(1, 'Impressionist Masterpieces', '2023-05-01', '2023-06-01', 'Art Gallery A', 'John Curator', 'Impressionist'),
(2, 'Surrealist Dreams', '2023-07-15', '2023-08-15', 'City Art Museum', 'Alice Curator', 'Surrealism');

-- Sale
INSERT INTO Sale (SaleID, ArtworkID, SaleDate, SalePrice, Buyer, PaymentMethod, Seller)
VALUES
(1, 1, '2023-05-20', 150000.00, 'Art Collector A', 'Credit Card', 'Art Gallery A'),
(2, 5, '2023-06-05', 50000.00, 'Private Collector B', 'Bank Transfer', 'Artist Frida Kahlo'),
(3, 8, '2023-08-01', 200000.00, 'Museum C', 'Cash', 'Art Gallery A');
