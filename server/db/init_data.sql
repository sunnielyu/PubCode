﻿﻿INSERT INTO public.pubcode(
	"CodeTitle", "PMID", "PMCID", "CodePubDate", "Authors", "Language", "OS", "Dependencies", "Licensing", "Keywords", "DatasetIDs", "GitHub_URL", "GH_Forks", "GH_OpenIssues", "GH_ClosedIssues", "GH_DateUpdate", "Description", "QuickStart", "Documentation")
	VALUES ('Bowtie', '19261174', 'PMC2690996', '03-04-2009', '[Langmead B, Trapnell C, Pop M, Salzberg SL]', null, null, null, null, 'read alignment, short read, DNA', null, 'https://github.com/BenLangmead/bowtie', 61, 15, 46, '11-03-2017', null, null, null);

﻿INSERT INTO public.pubcode(
	"CodeTitle", "PMID", "PMCID", "CodePubDate", "Authors", "Language", "OS", "Dependencies", "Licensing", "Keywords", "DatasetIDs", "GitHub_URL", "GH_Forks", "GH_OpenIssues", "GH_ClosedIssues", "GH_DateUpdate", "Description", "QuickStart", "Documentation")
	VALUES ('Molmil', '27570544', 'PMC5002144', '08-26-2016', '[Bekker GJ, Nakamura H, Kinjo AR]', 'JavaScript', 'All', null, 'LGPLv3', 'molecular viewer, PDB', null, 'https://github.com/gjbekker/molmil', 1, 1, 7, '05-17-2017', 'Molmil is a feature-rich molecular viewer which has support for many file formats.', 'After loading a structure in Molmil, the structure can be rotated by pressing and holding the left mouse button and moving the mouse left-to-right and top-to-bottom. To zoom in or zoom out either use the mouse''s scroll button or hold the mouse''s right button and move the mouse top-to-bottom. To find out more information about a specific atom or secondary structure element, right click on the atom or secondary structure element. This shows a popup menu with additional information as well as some controls to change the rendering style as well as the color of the atom (or the residue/chain it''s part of). Selecting multiple atoms enables users to calculate the distance, angle and dihedral angle between atoms. Furthermore, pressing and holding the Ctrl button after selecting an atom will temporarily recenter the camera to rotate around the selected atom. On touch-screen interfaces such as tablets and smartphones, swipe the image to the left, right, top or bottom to rotate the image. Use a pinching motion with two fingers to zoom in or zoom out. To move the image, use two fingers to swipe to the left, right, top or bottom. To select an atom or secondary structure element, press and hold on the atom for about a second and the popup menu will show up. In the top left corner the main menu can be found which can be used to load files from the local hard drive or load a PDB entry or chem_comp entry by ID. Via this menu screenshots and movies (if additional software is running on the users'' client machine) can be made and the scene can be exported as a .ply or .stl file (which can be used by many 3D printing software packages). Finally, a settings menu and full-screen option is available from the main menu. In the top right corner is the scene menu which lists which entries have been loaded and can also be used to change the styling and coloring of entries, chains and residues.', 'https://github.com/gjbekker/molmil/wiki/Molmil-API');