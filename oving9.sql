-- Artist
CREATE TABLE Artist (
    ArtistID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Birthdate DATE,
    Nationality VARCHAR(50),
    Era VARCHAR(50)
);

-- ArtworkType
CREATE TABLE ArtworkType (
    TypeID INT PRIMARY KEY,
    Type TEXT
);

-- Artwork
CREATE TABLE Artwork (
    ArtworkID INT PRIMARY KEY,
    ArtistID INT,
    Title VARCHAR(255),
    Description TEXT,
    Type INT,
    ProductionYear INT,
    Dimensions VARCHAR(50),
    Status VARCHAR(20) CHECK (Status IN ('storage', 'exhibited', 'not available')),
    SaleStatus VARCHAR(20) CHECK (SaleStatus IN ('for sale', 'sold', 'not for sale')),
    FOREIGN KEY (ArtistID) REFERENCES Artist(ArtistID),
    FOREIGN KEY (Type) REFERENCES ArtworkType(TypeID)
);

-- Exhibition
CREATE TABLE Exhibition (
    ExhibitionID INT PRIMARY KEY,
    ExhibitionTitle VARCHAR(255),
    StartDate DATE,
    EndDate DATE,
    Location VARCHAR(100),
    Curator VARCHAR(100),
    ExhibitionCategory VARCHAR(50),
    TypeID INT, -- Reference to the ArtworkType
    FOREIGN KEY (TypeID) REFERENCES ArtworkType(TypeID)
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

-- Update SaleStatus to 'sold' when a new sale is inserted
DELIMITER //
CREATE TRIGGER update_sale_status
AFTER INSERT ON Sale
FOR EACH ROW
BEGIN
    UPDATE Artwork
    SET SaleStatus = 'sold'
    WHERE Artwork.ArtworkID = NEW.ArtworkID;
END;
//
DELIMITER ;

DELIMITER //

CREATE TRIGGER check_sale_status
BEFORE INSERT ON Sale
FOR EACH ROW
BEGIN
    DECLARE current_status VARCHAR(20);

    -- Get the SaleStatus of the Artwork
    SELECT SaleStatus INTO current_status
    FROM Artwork
    WHERE ArtworkID = NEW.ArtworkID;

    -- Check if the SaleStatus is 'for sale'
    IF current_status != 'for sale' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot add to sale, Artwork is not marked as for sale';
    END IF;
END;

//
DELIMITER ;

