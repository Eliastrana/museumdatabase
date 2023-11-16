-- Artist Inserts
INSERT INTO Artist (ArtistID, FirstName, LastName, Birthdate, Nationality, Era) VALUES
(1, 'Leonardo', 'da Vinci', '1452-04-15', 'Italian', 'Renaissance'),
(2, 'Vincent', 'Van Gogh', '1853-03-30', 'Dutch', 'Post-Impressionism'),
(3, 'Pablo', 'Picasso', '1881-10-25', 'Spanish', 'Cubism'),
(4, 'Claude', 'Monet', '1840-11-14', 'French', 'Impressionism'),
(5, 'Salvador', 'Dali', '1904-05-11', 'Spanish', 'Surrealism'),
(6, 'Georgia', 'O Keeffe', '1887-11-15', 'American', 'Modernism'),
(7, 'Frida', 'Kahlo', '1907-07-06', 'Mexican', 'Surrealism'),
(8, 'Rembrandt', NULL, '1606-07-15', 'Dutch', 'Baroque'),
(9, 'Johannes', 'Vermeer', '1632-10-31', 'Dutch', 'Baroque'),
(10, 'Edvard', 'Munch', '1863-12-12', 'Norwegian', 'Expressionism');

-- ArtworkType Inserts
INSERT INTO ArtworkType (TypeID, Type) VALUES
(1, 'Oil on Canvas'),
(2, 'Fresco'),
(3, 'Mixed Media'),
(4, 'Watercolor on Paper'),
(5, 'Acrylic on Canvas'),
(6, 'Etching');

-- Artwork Inserts for Famous Artists
INSERT INTO Artwork (ArtworkID, ArtistID, Title, Description, Type, ProductionYear, Dimensions, Status, SaleStatus) VALUES
(1, 1, 'Mona Lisa', 'A portrait of a woman', 1, 1503, '77 cm x 53 cm', 'exhibited', 'not for sale'),
(2, 2, 'Starry Night', 'Depiction of night sky', 1, 1889, '73.7 cm x 92.1 cm', 'exhibited', 'not for sale'),
(3, 3, 'Guernica', 'A mural-sized canvas depicting the suffering of war', 1, 1937, '349 cm x 776 cm', 'exhibited', 'not for sale'),
(4, 4, 'Water Lilies', 'Series of approximately 250 oil paintings', 1, 1919, 'Variable dimensions', 'exhibited', 'not for sale'),
(5, 5, 'The Persistence of Memory', 'Famous surrealistic painting', 1, 1931, '24 cm x 33 cm', 'exhibited', 'not for sale'),
(6, 6, 'Red Canna', 'Close-up floral subject', 5, 1924, '91 cm x 76 cm', 'exhibited', 'for sale'),
(7, 7, 'The Two Fridas', 'Double self-portrait', 1, 1939, '173 cm x 173 cm', 'exhibited', 'for sale'),
(8, 8, 'The Night Watch', 'Group portrait of a militia company', 1, 1642, '363 cm x 437 cm', 'exhibited', 'not for sale'),
(9, 9, 'Girl with a Pearl Earring', 'Tronie of a girl with a headscarf and a pearl earring', 1, 1665, '44.5 cm x 39 cm', 'exhibited', 'not for sale'),
(10, 10, 'The Scream', 'Iconic expressionist painting', 3, 1893, '91 cm x 73.5 cm', 'exhibited', 'not for sale'),
(11, 1, 'The Last Supper', 'Mural painting depicting Jesus and his disciples', 2, 1498, '460 cm x 880 cm', 'exhibited', 'not for sale'),
(12, 2, 'Sunflowers', 'Series of still life paintings', 1, 1888, 'Variable dimensions', 'exhibited', 'for sale'),
(13, 3, 'Les Demoiselles d Avignon', 'Large oil painting', 1, 1907, '244 cm x 234 cm', 'storage', 'not for sale'),
(14, 4, 'Impression, Sunrise', 'Oil painting that gave name to the Impressionism movement', 1, 1872, '48 cm x 63 cm', 'storage', 'for sale'),
(15, 5, 'Dream Caused by the Flight of a Bee Around a Pomegranate a Second Before Awakening', 'Surrealist painting', 1, 1944, '51 cm x 41 cm', 'storage', 'for sale'),
(16, 6, 'Sky Above Clouds IV', 'Large-scale painting', 5, 1965, '243.8 cm x 731.5 cm', 'storage', 'not for sale'),
(17, 7, 'Self-portrait with Thorn Necklace and Hummingbird', 'Self-portrait of Frida Kahlo', 1, 1940, '61.25 cm x 47 cm', 'storage', 'for sale'),
(18, 8, 'Self-Portrait with Two Circles', 'One of Rembrandts late self-portraits', 1, 1665, '114.3 cm x 94 cm', 'storage', 'not for sale'),
(19, 9, 'The Milkmaid', 'Oil on canvas painting', 1, 1658, '45.5 cm x 41 cm', 'exhibited', 'not for sale'),
(20, 10, 'Madonna', 'Expressionist painting', 1, 1894, '90 cm x 68 cm', 'exhibited', 'not for sale');

-- Exhibition Inserts
INSERT INTO Exhibition (ExhibitionID, ExhibitionTitle, StartDate, EndDate, Location, Curator, ExhibitionCategory, TypeID) VALUES
(1, 'Masters of Renaissance', '2024-01-01', '2024-06-30', 'Uffizi Gallery', 'Laura Bianchi', 'Renaissance', 2),
(2, 'Impressionist Marvels', '2024-07-01', '2024-12-31', 'Musée d Orsay', 'Étienne Moreau', 'Impressionism', 1),
(3, 'Surrealism Unveiled', '2025-01-01', '2025-06-30', 'Tate Modern', 'Sarah Johnson', 'Surrealism', 5),
(4, 'The Modernists', '2025-07-01', '2025-12-31', 'Museum of Modern Art', 'Richard Lee', 'Modernism', 3);

-- Sale Inserts
INSERT INTO Sale (SaleID, ArtworkID, SaleDate, SalePrice, Buyer, PaymentMethod, Seller) VALUES
(1, 6, '2023-11-15', 2000000.00, 'Collector A', 'Wire Transfer', 'Private Gallery'),
(2, 12, '2023-12-01', 1500000.00, 'Collector B', 'Credit Card', 'Private Collector'),
(3, 14, '2024-01-10', 1000000.00, 'Collector C', 'Bank Cheque', 'Art Auction House');
