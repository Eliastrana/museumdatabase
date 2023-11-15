
-- Artist
CREATE TABLE Artist (
    ArtistID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Birthdate DATE,
    Nationality VARCHAR(50),
    Era VARCHAR(50),
    Style VARCHAR(50)
);

-- Artwork
CREATE TABLE Artwork (
    ArtworkID INT PRIMARY KEY,
    ArtistID INT,
    Title VARCHAR(255),
    Description TEXT,
    Type VARCHAR(50),
    ProductionYear INT,
    Dimensions VARCHAR(50),
    Status VARCHAR(20) CHECK (Status IN ('storage', 'exhibited', 'not available')),
    FOREIGN KEY (ArtistID) REFERENCES Artist(ArtistID)
);

-- Exhibition
CREATE TABLE Exhibition (
    ExhibitionID INT PRIMARY KEY,
    ExhibitionTitle VARCHAR(255),
    StartDate DATE,
    EndDate DATE,
    Location VARCHAR(100),
    Curator VARCHAR(100),
    ExhibitionCategory VARCHAR(50)
);

-- Sale
CREATE TABLE Sale (
    SaleID INT PRIMARY KEY,
    ArtworkID INT,
    SaleDate DATE,
    SalePrice DECIMAL(10, 2),
    Buyer VARCHAR(255),
    PaymentMethod VARCHAR(50),
    Seller VARCHAR(255),
    FOREIGN KEY (ArtworkID) REFERENCES Artwork(ArtworkID)
);
