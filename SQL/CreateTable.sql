CREATE TABLE Airports
(
    AirportID INT IDENTITY(1,1) NOT NULL,
    AirportCode CHAR(3) NOT NULL,
    AirportName VARCHAR(100) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Country VARCHAR(50) NOT NULL,

    CONSTRAINT PK_Airports
        PRIMARY KEY (AirportID),

    CONSTRAINT UQ_Airports_AirportCode
        UNIQUE (AirportCode)
);
GO

CREATE TABLE Passengers
(
    PassengerID INT IDENTITY(1,1) NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    IDNumber VARCHAR(20) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(20) NOT NULL,

    CONSTRAINT PK_Passengers
        PRIMARY KEY (PassengerID),

    CONSTRAINT UQ_Passengers_IDNumber
        UNIQUE (IDNumber),

    CONSTRAINT UQ_Passengers_Email
        UNIQUE (Email)
);
GO

CREATE TABLE Flights
(
    FlightID INT IDENTITY(1,1) NOT NULL,
    FlightNumber VARCHAR(10) NOT NULL,
    AirportID INT NOT NULL,
    DepartureDateTime DATETIME2 NOT NULL,
    ArrivalDateTime DATETIME2 NOT NULL,
    Capacity INT NOT NULL,

    CONSTRAINT PK_Flights
        PRIMARY KEY (FlightID),

    CONSTRAINT UQ_Flights_FlightNumber
        UNIQUE (FlightNumber),

    CONSTRAINT FK_Flights_Airports
        FOREIGN KEY (AirportID)
        REFERENCES Airports(AirportID),

    CONSTRAINT CK_Flights_Capacity
        CHECK (Capacity > 0),

    CONSTRAINT CK_Flights_DateTime
        CHECK (ArrivalDateTime > DepartureDateTime)
);
GO

CREATE TABLE Bookings
(
    BookingID INT IDENTITY(1,1) NOT NULL,
    BookingReference VARCHAR(10) NOT NULL,
    FlightID INT NOT NULL,
    BookingDate DATETIME2 NOT NULL
        DEFAULT GETDATE(),
    BookingStatus VARCHAR(20) NOT NULL,

    CONSTRAINT PK_Bookings
        PRIMARY KEY (BookingID),

    CONSTRAINT UQ_Bookings_BookingReference
        UNIQUE (BookingReference),

    CONSTRAINT FK_Bookings_Flights
        FOREIGN KEY (FlightID)
        REFERENCES Flights(FlightID),

    CONSTRAINT CK_Bookings_Status
        CHECK (BookingStatus IN
        ('Pending', 'Confirmed', 'Cancelled'))
);
GO

CREATE TABLE Tickets
(
    TicketID INT IDENTITY(1,1) NOT NULL,
    TicketNumber VARCHAR(20) NOT NULL,
    BookingID INT NOT NULL,
    IssueDate DATETIME2 NOT NULL
        DEFAULT GETDATE(),
    TicketStatus VARCHAR(20) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,

    CONSTRAINT PK_Tickets
        PRIMARY KEY (TicketID),

    CONSTRAINT UQ_Tickets_TicketNumber
        UNIQUE (TicketNumber),

    CONSTRAINT UQ_Tickets_BookingID
        UNIQUE (BookingID),

    CONSTRAINT FK_Tickets_Bookings
        FOREIGN KEY (BookingID)
        REFERENCES Bookings(BookingID),

    CONSTRAINT CK_Tickets_Price
        CHECK (Price >= 0),

    CONSTRAINT CK_Tickets_Status
        CHECK (TicketStatus IN
        ('Issued', 'Cancelled', 'Used'))
);
GO

CREATE TABLE Payments
(
    PaymentID INT IDENTITY(1,1) NOT NULL,
    BookingID INT NOT NULL,
    PaymentDate DATETIME2 NOT NULL
        DEFAULT GETDATE(),
    Amount DECIMAL(10,2) NOT NULL,
    PaymentMethod VARCHAR(20) NOT NULL,
    PaymentStatus VARCHAR(20) NOT NULL,

    CONSTRAINT PK_Payments
        PRIMARY KEY (PaymentID),

    CONSTRAINT FK_Payments_Bookings
        FOREIGN KEY (BookingID)
        REFERENCES Bookings(BookingID),

    CONSTRAINT CK_Payments_Amount
        CHECK (Amount > 0),

    CONSTRAINT CK_Payments_Method
        CHECK (PaymentMethod IN
        ('Card', 'Cash', 'EFT')),

    CONSTRAINT CK_Payments_Status
        CHECK (PaymentStatus IN
        ('Pending', 'Paid', 'Failed', 'Refunded'))
);
GO