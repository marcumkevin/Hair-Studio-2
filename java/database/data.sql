BEGIN TRANSACTION;

INSERT INTO end_user (username,password_hash,role) VALUES ('client','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_CLIENT');
INSERT INTO end_user (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

INSERT INTO service (name, type, base_time_minutes, description)
VALUES	('1 Hour Cut', 'haircut', 60, E'60 minute customized haircut.\n*If you go more than 4 months between haircuts or your hair is above average thickness, please book 1.5 hours.'),
		('1.5 Hour Cut', 'haircut', 90, E'90 minute customized haircut if you\'re going for a change, if you haven\'t had a cut in more than 4 months, or if you hair is above average thickness and/or length.\n*If you want a really big change, please book a 2 hour cut.'),
		('2 Hour Cut', 'haircut', 120, E'120 minute customized haircut if you\'re going for a really big change, and would like extra time to talk about and practice your skills for maintaining your style at home, or if you haven\'t had a cut in more than a year.'),
		('Bang Trim ONLY', 'haircut', 30, E'30 minute appointment for a bang trim ONLY.\n**This is not a full haircut appointment**'),

		('1 Hour Color', 'color', 60, E'60 minute customized color if you would like a glaze for adding vibrance and shine to your existing color or in between lightening sessions.\n*If your hair is above average thickness and/or length please book 1.5 hours.'),
	   	('1.5 Hour Color', 'color', 90, E'90 minute customized color if you would like root coverage, all over color, or some face framing highlights.\n*If your hair is above average thickness and/or length please book 2 hours.\n**This is NOT for retouches on highlights, blonding, or platinum retouch, or for any client who is wanting to make a change from their existing root formula. If you are thinking of going lighter, or want to switch up your look, please choose a longer time. Unsure? Book a consultation!'),
		('2 Hour Color', 'color', 120, E'120 minute customized color if you would like root coverage, all over color, or a partial lightening session (balayage or highlights).\n*If your hair is above average thickness and/or length, please book 2.5 hours.\n**If you are looking to switch up your overall look or are wanting to go lighter, please book 2.5 hours.\n**The more time you book, the lighter you can be, or the more change we can give you. Unsure? Book a consultation!'),
		('2.5 Hour Color', 'color', 150, E'150 minute customized color if you would like a partial lightening session (balayage or highlights with root color).\n*The more time you book, the lighter you can be, or the more change we can give you. Unsure? Book a consultation!'),
		('3 Hour Color', 'color', 180, E'180 minute customized color if you would like a full lightening service (balayage or highlights).\n*If your hair is above average thickness and/or length, please book 3.5 hours.\n**The more time you book, the lighter you can be, or the more change we can give you. Unsure? Book a consultation!'),
		('3.5 Hour Color', 'color', 210, E'210 minute customized color if you would like a full lightening service (balayage or highlights). This time is great for all over color with dimension or highlights on hair above average thickness and/or length, if it\'s been a while, or if you are ready for some change.\n*The more time you book, the lighter you can be, or the more change we can give you. Unsure? Book a consultation!'),
		('4 Hour Color', 'color', 240, E'240 minute customized color if you would like a transformation! Full micro-highlighting (baby lights) services with root color.\n*If your hair is above average thickness and/or length, please book 4.5 hours.\n**The more time you book, the lighter you can be, or the more change we can give you. Unsure? Book a consultation!'),
		('4.5 Hour Color', 'color', 270, E'270 minute customized color if you would like a transformation! Full micro-highlighting (baby lights) services with root color.\n*The more time you book, the lighter you can be, or the more change we can give you. Unsure? Book a consultation!'),
		('5 Hour Color', 'color', 300, E'300 minute customized color if you would like a full overhaul on your hair: if you haven\'t had maintenance on your current color in over 6 months or if you want to make a major change (4+ levels).'),

		('1.5 Hour Vivid Color', 'vivid color', 90, E'90 minute customized color if you would like non-dimensional vivid root coverage without prior lightening. This timing is also good for a small color block look (e.g. a pop of color in your bang area).\n*If your hair is above average thickness and/or length, please book 2 hours.\n**The more time you book, the more change we can give you. Unsure? Please book a consultation!'),
		('2 Hour Vivid Color', 'vivid color', 120, E'120 minute customized color if you would like non-dimensional vivid root coverage or all over color without prior lightening. This timing is also good for a small color block look (e.g. a pop of color in your bang area).\n*The more time you book, the more change we can give you. Unsure? Book a consultation!'),
		('2.5 Hour Vivid Color', 'vivid color', 150, E'150 minute customized color if you would like non-dimensional vivid root coverage or all over color without prior lightening. This timing is also good for a medium color block look (e.g. peek-a-boo color framing your face).\n*The more time you book, the more change we can give you. Unsure? Book a consultation!'),
		('3 Hour Vivid Color', 'vivid color', 180, E'180 minute customized color if you would like non-dimensional partial vivid color with prior lightening. This timing is also good for a large color block look (e.g. no more than half of the hair colored).\n*If your hair is above average thickness and/or length, please book 3.5 hours.\n**The more time you book, the more change we can give you. Unsure? Book a consultation!'),
		('3.5 Hour Vivid Color', 'vivid color', 210, E'210 minute customized color if you would like dimensional partial vivid color with prior lightening.\n*If your hair is above average length and/or thickness, please book 4 hours.\n**The more time you book, the more change we can give you. Unsure? Book a consultation!'),
		('4 Hour Vivid Color', 'vivid color', 240, E'240 minute customized color if you would like dimensional partial vivid color with prior lightening. Already have a full head of vivids? This is also good for a full vivids color session and root coverage with minimal root growth up to 1.5 inches. Includes root lightening and color application.\n*The more time you book, the more change we can give you. Unsure? Book a consultation!' ),
		('4.5 Hour Vivid Color', 'vivid color', 270, E'270 minute customized color if you would like dimensional full vivid color with prior lightening. Already have a full head of vivids? This is also good for a full vivids color session and root coverage of up to 2 inches. Includes root lightening and color application.\n*The more time you book, the more change we can give you. Unsure? Book a consultation!'),
		('5 Hour Vivid Color', 'vivid color', 300, E'300 minute customized color if you would like a dimensional full vivid color with lightening and up to 3 color options. Already have a full head of vivids? This is also good for a full vivids color session and root coverage of up to 3 inches. Includes root lightening and color application.\n*The more time you book, the more change we can give you. Unsure? Book a consultation!' ),
		('6 Hour Vivid Color', 'vivid color', 360, E'360 minute customized color if you would like to do a full dimensional vivid look. This would include full lightening and multiple color options. This is a customized transformational session (e.g. mermaid or rainbow hair). Already have a full head of vivids? This is also good for a full vivids color session and root coverage of up to 5 inches. Includes root lightening and color application.' ),

		('1 Hour Styling', 'styling', 60, E'60 minute customized styling session if you would like a blowout. May include loose waves or flat iron work.\n*If your hair is above average thickness and/or length, please book 1.5 hours.'),
		('1.5 Hour Styling', 'styling', 90, E'90 minute customized styling session if you would like a blowout and have hair above average thickness and/or length. May include loose waves or flat iron work.'),

		('Hourly Session Consultation', 'consult', 60, 'Sit back and let us take care of your hair! This consultation will let you know how many hours your service will cost.'),
		('Hourly Session Phone Consultation', 'consult', 60, E'Want the flexibility to chat without visiting the salon? Book a phone call with a stylist to get the professional guidance you\'re looking for!\n*The stylist will contact you via phone at the time of your consultation appointment.'),
		('Hourly Vivids Session Consultation', 'consult', 60, 'Sit back and let us take care of your hair! This consultation will let you know how many hours your service will cost.'),
		('Hourly Vivids Session Phone Consultation', 'consult', 60, E'Want the flexibility to chat without visiting the salon? Book a phone call with a stylist to get the professional guidance you\'re looking for!\n*The stylist will contact you via phone at the time of your consultation appointment.');


COMMIT TRANSACTION;