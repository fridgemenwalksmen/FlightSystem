INSERT INTO Airports
    (AirportCode, AirportName, City, Country)
VALUES
    ('JNB', 'O.R. Tambo International Airport', 'Johannesburg', 'South Africa'),
    ('CPT', 'Cape Town International Airport', 'Cape Town', 'South Africa'),
    ('DUR', 'King Shaka International Airport', 'Durban', 'South Africa');
GO

INSERT INTO Passengers
    (FirstName, LastName, IDNumber, Email, PhoneNumber)
VALUES
    ('Janco', 'Burger', '9001015009087', 'janco@example.com', '0821234567'),
    ('Thabo', 'Mokoena', '9205055009088', 'thabo@example.com', '0832345678'),
    ('Sarah', 'Williams', '9507075009089', 'sarah@example.com', '0713456789'),
    ('Liam', 'Smith', '8808085009090', 'liam@example.com', '0724567890'),
    ('Nomsa', 'Dlamini', '9309095009091', 'nomsa@example.com', '0745678901');
GO

INSERT INTO Flights
    (FlightNumber, AirportID, DepartureDateTime, ArrivalDateTime, Capacity)
VALUES
    ('SA101', 1, '2026-10-05 08:00:00', '2026-10-05 10:15:00', 180),
    ('SA102', 2, '2026-10-06 09:30:00', '2026-10-06 11:30:00', 180),
    ('SA103', 3, '2026-10-07 12:00:00', '2026-10-07 14:00:00', 160),
    ('SA104', 1, '2026-10-08 15:00:00', '2026-10-08 17:15:00', 200),
    ('SA105', 2, '2026-10-09 18:30:00', '2026-10-09 20:30:00', 160);
GO

USE [Flight System];
GO

-- BOOKINGS
INSERT INTO Bookings
    (BookingReference, PassengerID, FlightID, BookingDate, BookingStatus)
VALUES
    ('BK1001', 1, 1, '2026-09-20 10:00:00', 'Confirmed'),
    ('BK1002', 2, 2, '2026-09-21 11:30:00', 'Confirmed'),
    ('BK1003', 3, 3, '2026-09-22 14:15:00', 'Confirmed');
GO

-- TICKETS
INSERT INTO Tickets
    (TicketNumber, BookingID, IssueDate, TicketStatus, Price)
VALUES
    ('TKT10001', 1, '2026-09-20 10:05:00', 'Issued', 1850.00),
    ('TKT10002', 2, '2026-09-21 11:35:00', 'Issued', 1650.00),
    ('TKT10003', 3, '2026-09-22 14:20:00', 'Issued', 1450.00);
GO

-- PAYMENTS
INSERT INTO Payments
    (BookingID, PaymentDate, Amount, PaymentMethod, PaymentStatus)
VALUES
    (1, '2026-09-20 10:10:00', 1850.00, 'Card', 'Paid'),
    (2, '2026-09-21 11:40:00', 1650.00, 'EFT', 'Paid'),
    (3, '2026-09-22 14:25:00', 1450.00, 'Card', 'Paid');
GO