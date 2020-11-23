--
-- PostgreSQL database dump
--

-- Dumped from database version 10.14
-- Dumped by pg_dump version 10.14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: author; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.author (
    id_author integer NOT NULL,
    name_author character varying(15),
    surname_author character varying(20)
);


ALTER TABLE public.author OWNER TO postgres;

--
-- Name: belong; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.belong (
    isbn character varying(20) NOT NULL,
    id_category integer NOT NULL
);


ALTER TABLE public.belong OWNER TO postgres;

--
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books (
    isbn character varying(20) NOT NULL,
    tittle_books character varying(25),
    name_publisher character varying(20),
    book_available character varying(3),
    CONSTRAINT books_book_available_check CHECK (((book_available)::text = ANY ((ARRAY['YES'::character varying, 'NO'::character varying])::text[])))
);


ALTER TABLE public.books OWNER TO postgres;

--
-- Name: borrowing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.borrowing (
    book_id integer NOT NULL,
    id_customer_person character varying(9),
    id_employee_person character varying(9)
);


ALTER TABLE public.borrowing OWNER TO postgres;

--
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    id_category integer NOT NULL,
    tittle_category character varying(40)
);


ALTER TABLE public.category OWNER TO postgres;

--
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    attribute character varying(8),
    id_person character varying(9) NOT NULL
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    id_person character varying(9) NOT NULL
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- Name: final1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.final1 (
    book_id integer NOT NULL,
    isbn character varying(20)
);


ALTER TABLE public.final1 OWNER TO postgres;

--
-- Name: person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person (
    id_person character varying(9) NOT NULL,
    name_person character varying(10),
    surname character varying(20),
    telephone character varying(10)
);


ALTER TABLE public.person OWNER TO postgres;

--
-- Name: write1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.write1 (
    id_author integer NOT NULL,
    isbn character varying(20) NOT NULL
);


ALTER TABLE public.write1 OWNER TO postgres;

--
-- Data for Name: author; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.author (id_author, name_author, surname_author) FROM stdin;
1	Artemas	Hambly
2	Elka	Cramer
3	Belva	Skeldon
4	Shena	Giovannazzi
5	Candi	Sagrott
6	Hyacinthia	Minigo
7	Mendel	Heinish
8	Chancey	Roswarn
9	Briny	Ruprechter
10	Hillel	Culpan
11	Orelie	Poli
12	Rena	Kesteven
13	Shaylyn	Siggs
14	Noella	Coutts
15	Issi	O'Skehan
16	Lillis	Andreu
17	Ailey	Teaze
18	Zacharia	Summerside
19	Cherri	Langeren
20	Ericka	Marjanovic
21	Eleonore	Hanley
22	Lacy	Holberry
23	Bevan	Jamison
24	Mattie	Glasner
25	Jennee	Donnel
26	Afton	Burry
27	Noellyn	Roback
28	Nathanael	McGaughie
29	Konrad	Marney
30	Dominick	Pilsbury
31	Leif	Lacy
32	Maje	Guerre
33	Jill	Broomfield
34	Jewelle	Emmett
35	Chrissie	Justham
36	Jaime	Prantoni
37	Myrle	Vann
38	Gus	Mepsted
39	Eleen	Dillinger
40	Lynelle	Loveitt
41	Nicol	Lander
42	Stanton	Hilling
43	Ham	Bank
44	Gibb	Rudolfer
45	Care	Denney
46	Neville	Creffeild
47	Rosabella	Norley
48	Regan	Ortiga
49	Arni	Simonian
50	Enrika	Auld
51	Ludovika	Kadwallider
52	Nomi	Asaaf
53	Gregg	Burgwin
54	Emeline	Garmons
55	Graehme	Lytton
56	Terrence	Baldinotti
57	Katalin	Stathers
58	Kaile	Clackson
59	Glynn	Giaomozzo
60	Pall	Valiant
61	Paddy	Baraja
62	Art	Youles
63	Everard	Campes
64	Meggie	Yendall
65	Osborn	McClymont
66	Heindrick	Lowndes
67	Veda	Koenraad
68	Gilbertina	Studders
69	Michail	Keymar
70	Jorge	Elvins
71	Finn	Dumbar
72	Carita	Brocket
73	Sara	Frossell
74	Cloe	Wilcott
75	Salvador	Gilbane
76	Catherina	Fardy
77	Keelby	Lavery
78	Dur	Wickstead
79	Twila	Brumpton
80	Kit	Mallebone
81	Teodoro	Propper
82	Augie	Kowal
83	Katalin	Kelland
84	Ruben	Abramowitz
85	Loralee	Kernocke
86	Bear	Netley
87	Harris	Luttger
88	Clemmie	Heckney
89	Selma	Lashford
90	Wilt	Bubear
91	Catherine	Jeacop
92	Laureen	Shilstone
93	Sandor	Rann
94	Thaddeus	Lattos
95	Pauly	Guppey
96	Yasmeen	Wethered
97	Marcus	Ivens
98	Christean	Hilland
99	Tyson	Grutchfield
100	Cinderella	Bartalot
\.


--
-- Data for Name: belong; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.belong (isbn, id_category) FROM stdin;
388603187-X	1003
572362004-5	1005
613170162-8	1012
943544365-6	1026
622268928-0	1038
726193109-8	1044
708203228-5	6787
838709555-9	1047
011485267-7	1048
398323330-9	1050
652248956-2	1064
602675968-9	9089
435105436-0	2345
206139628-3	2676
276401588-7	1070
106390886-8	1071
003359798-7	6564
515840288-4	1073
919992136-7	1079
392936621-5	1081
492210670-7	8001
424304523-2	8002
858029276-X	1082
510477070-2	1091
554579580-4	1097
120652337-9	1098
745051915-1	1110
129041316-9	1123
438737299-0	8100
689546904-4	1137
429406826-4	1139
114555896-8	1141
619546619-0	1155
004541988-4	1159
815118832-4	1160
366580840-5	1163
079421150-X	1167
658994404-0	1174
014544344-2	7900
642767760-8	1176
477741285-7	1185
017161193-4	1191
786106534-0	1194
210613171-2	1207
678114177-5	1210
803274548-3	1213
741296146-2	1224
795600456-X	1225
225305530-1	7901
237359496-X	1229
383857865-1	1232
932601563-7	7902
865724293-1	1236
734795379-0	1244
762305364-7	1262
219680099-6	1268
491730597-7	1277
856137863-8	1282
200233457-9	1284
299825791-7	1288
017624576-6	1296
568732782-7	1297
508630244-7	2345
542983754-7	1299
697255479-9	1301
843419082-6	1306
725858936-8	1308
158806568-5	1322
830957434-7	1327
076031332-6	1331
680965529-8	3000
869110723-5	1342
016881381-5	1352
474820536-9	1373
706027228-3	1374
168335871-6	1377
328893952-5	1384
922147998-6	1388
776819890-5	1389
205685834-7	1397
143994038-X	1401
377944032-6	1404
896742511-2	1405
507465787-3	1415
349310848-6	1419
057726035-9	1431
153054574-9	1432
637883043-6	1435
190610351-8	1437
349090423-0	1444
701840119-4	1451
536194124-7	1457
380177577-1	1464
828725394-2	1468
957351955-0	1469
416361717-5	1470
684481935-8	1473
079219815-8	1478
074358842-8	1487
563110059-2	1488
\.


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books (isbn, tittle_books, name_publisher, book_available) FROM stdin;
388603187-X	Dangerous Pla	Hodkiewicz, Nicolas 	NO
572362004-5	Salvation	Pacocha, Fay and Pfe	YES
613170162-8	Outsiders	Breitenberg-Hickle	NO
943544365-6	Raven	Wiza and Sons	NO
622268928-0	Black Sheep	Green, Wuckert and L	YES
726193109-8	Standard Operating 	Goyette, Boehm and S	NO
708203228-5	Nazis Strike	Yost, Streich and Ma	NO
838709555-9	Gun Fury	Reynolds LLC	NO
011485267-7	Milk and Honey	Dickens, Lynch and M	YES
398323330-9	Human Touch	Bechtelar LLC	YES
652248956-2	Duck Season (Temporada de	Schmeler, Wiegand an	NO
602675968-9	Playing 'In the Company o	Gerhold-Gerhold	NO
435105436-0	Bandidas	Cartwright, Ullrich 	YES
206139628-3	Marilena 	Spinka, Schultz and 	NO
276401588-7	Koi... Mil Gaya	Collins LLC	NO
106390886-8	White Nights	Fay, Kuhic and Larso	NO
003359798-7	Punisher, The	Grimes, Toy and Kuhi	NO
515840288-4	Momma's Man	Quitzon and Sons	NO
919992136-7	Ace of Aces (a.k.a. Super	Padberg-Ruecker	YES
392936621-5	Smokey and the Bandit	Terry, Baumbach and 	NO
492210670-7	Godzilla vs. Megaguirus (	Barrows Inc	NO
424304523-2	Last Train Home	Fay-Koepp	YES
858029276-X	Last Days of Disco, The	Hane, Reilly and Rei	NO
510477070-2	The Ghost Story of Oiwa's	Hane, Bernier and St	NO
554579580-4	Den sommeren jeg fylte 15	Green-Crooks	NO
120652337-9	War of the Dead - Stone's	Wilkinson-Crona	YES
745051915-1	Hothead (Coup de tête)	Marquardt, Kub and L	YES
129041316-9	Kolberg	McKenzie-Jacobi	NO
438737299-0	Pohjanmaa	Jast-Streich	NO
689546904-4	Non-Stop	Dicki-Kuvalis	YES
429406826-4	Wrestling with Alligators	Hyatt and Sons	YES
114555896-8	2001: A Space Odyssey	Marvin-Kuhlman	NO
619546619-0	Gate of Flesh (Nikutai no	Anderson-Schamberger	NO
004541988-4	Stone Angel, The	Leannon, Bogisich an	NO
815118832-4	Kids in the Hall: Same Gu	Berge Inc	YES
366580840-5	Female Trouble	Klocko-O'Connell	NO
079421150-X	Imposter, The	Bruen-Macejkovic	YES
658994404-0	42	Johnston LLC	NO
014544344-2	Challenge of the Masters 	Abernathy, Leannon a	YES
642767760-8	America 3000	Hartmann LLC	YES
477741285-7	SuperBabies: Baby Geniuse	Adams Inc	YES
017161193-4	Night to Remember, A	Schmidt and Sons	YES
786106534-0	Bride Flight	Kirlin-Kshlerin	NO
210613171-2	Heat	Runolfsdottir and So	NO
678114177-5	Who Pulled the Plug? (Göt	Langworth and Sons	NO
803274548-3	Protector, The (a.k.a. Wa	Homenick, Schoen and	NO
741296146-2	Call Me Kuchu	Corkery LLC	YES
795600456-X	Pigsty (Porcile)	Dietrich Inc	NO
225305530-1	Hasty Heart, The	Hauck, Witting and B	YES
237359496-X	Story of Women (Affaire d	Gulgowski, Shanahan 	YES
383857865-1	Fun and Fancy Free	Effertz and Sons	YES
932601563-7	Visitor to a Museum (Pose	Brakus-Jaskolski	YES
865724293-1	21 Jump Street	Beahan-Koepp	YES
734795379-0	Nickelodeon	Bailey, Effertz and 	NO
762305364-7	In Too Deep	Schowalter Inc	YES
219680099-6	Star, The	Wintheiser, Paucek a	NO
491730597-7	Beginning of an Unknown E	Klocko Inc	NO
856137863-8	Busses Roar (Buses Roar)	Waelchi and Sons	NO
200233457-9	Eggs	Muller-Veum	NO
299825791-7	Bon Voyage	Satterfield-Von	NO
017624576-6	Audition (Ôdishon)	Stokes LLC	YES
568732782-7	Sunday	Harvey-Quitzon	NO
508630244-7	Saraband	Boyle-Feest	YES
542983754-7	Castle of Purity (El cast	Toy-Reilly	NO
697255479-9	Incredible Shrinking Man,	Howe, Grimes and Pac	YES
843419082-6	Pervert's Guide to Ideolo	Funk-Frami	NO
725858936-8	American Pie Presents: Ba	Fahey Inc	YES
158806568-5	Unintentional Kidnapping 	Cummerata Group	YES
830957434-7	G.I. Joe: Operation Drago	Satterfield-Rempel	YES
076031332-6	Night of the Hunted, The 	Herzog-Kautzer	YES
680965529-8	Stella	Moen, Osinski and Kl	NO
869110723-5	Fun Size	Johns-Beier	YES
016881381-5	Purple Butterfly (Zi hudi	Armstrong LLC	YES
474820536-9	Cabinet of Dr. Ramirez, T	Flatley, Muller and 	NO
706027228-3	Distance	Dickens-O'Kon	YES
168335871-6	Core, The	Murphy LLC	YES
328893952-5	Men Who Stare at Goats, T	Hintz-Hyatt	NO
922147998-6	Batman: Mask of the Phant	Shanahan Group	NO
776819890-5	Dr. Goldfoot and the Biki	Pouros-Upton	YES
205685834-7	Viva	Heidenreich Inc	YES
143994038-X	Beyond the Door II (Schoc	Altenwerth-Parisian	NO
377944032-6	Almost Married	Boehm Group	YES
896742511-2	Get2Gether, A	Spinka LLC	NO
507465787-3	Sekirei	Rowe LLC	NO
349310848-6	Morphia (Morfiy)	West, Mills and Herm	YES
057726035-9	Thoroughly Modern Millie	Mraz, Roberts and Le	NO
153054574-9	Wild River	Runolfsson-Dickinson	YES
637883043-6	When Father Was Away on B	Cummerata-Kozey	YES
190610351-8	Girl, The	Bartoletti LLC	YES
349090423-0	Young & Beautiful	Padberg, Cronin and 	YES
701840119-4	With a Song in My Heart	Muller, Cummings and	YES
536194124-7	Cloudy with a Chance of M	Wiegand, Schuppe and	NO
380177577-1	My Last Day Without You (	Conroy and Sons	YES
828725394-2	Fruitvale Station	Gaylord Inc	NO
957351955-0	The Emperor of California	Kunze, Abbott and Ke	YES
416361717-5	Last Trapper, The (Le der	Buckridge-Sawayn	NO
684481935-8	Kid, The	Willms Group	NO
079219815-8	Petting Zoo	Altenwerth, Roob and	NO
074358842-8	Ingmar Bergman on Life an	Wilkinson-Kub	NO
563110059-2	Home Run	Wilkinson Inc	YES
\.


--
-- Data for Name: borrowing; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.borrowing (book_id, id_customer_person, id_employee_person) FROM stdin;
756	960	929
704	905	913
724	928	980
713	917	908
707	911	952
751	955	950
721	925	939
723	927	969
767	971	944
763	967	959
779	983	901
714	918	949
752	956	953
772	976	962
761	965	998
101	903	914
712	916	919
780	984	907
781	985	934
750	954	966
791	995	924
743	947	986
754	958	957
769	973	988
733	937	968
785	989	991
727	931	978
783	987	972
747	951	979
777	981	940
734	938	920
757	961	999
770	974	975
719	923	943
778	982	915
786	990	909
738	942	993
717	921	941
400	900	970
728	932	963
705	906	994
744	948	910
773	977	912
742	946	964
741	945	992
792	996	902
729	933	922
722	926	930
793	997	935
703	\N	\N
\.


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category (id_category, tittle_category) FROM stdin;
1003	Film
1005	Sports
1012	Movies
1026	Fashion
1038	Human Rights
1044	Pop Culture
6787	United States
1047	Political Economy
1048	Golf
1050	Superheroes
1064	Comic Books
9089	Extreme Sports
2345	Calligraphy
2676	Agnosticism
1070	Christian
1071	Television
6564	Eastern
1073	Christian Living
1079	Customs & Traditions
1081	Other Religions & Sacred Texts
8001	Theater
8002	Fantasy
1082	Graphic Novels
1091	Military
1097	Historical
1098	Marketing
1110	Music
1123	Leaders & Notable People
8100	Cultural
1137	Women
1139	Comic Strips
1141	Islamic
1155	Performing Arts
1159	Entertainers
1160	DC Comics
1163	Trivia
1167	Brain Teasers
1174	Sci-Fi
7900	Organized Crime
1176	International
1185	Economics
1191	Socialism
1194	Criminal Law
1207	Individual Artists
1210	Art History
1213	Earth-Based Religions
1224	Management
1225	Games
7901	Buddhism
1229	Immigration
1232	Baseball & Softball
7902	Painting
1236	Management
1244	New Age
1262	Ethnic & Cultural
1268	Industries
1277	Astrology
1282	Comparative Religion
1284	Judaism
1288	Canadian Politics
1296	Manga
1297	Philosophy
1299	Civil Rights
1301	Famous Criminals
1306	Humor
1308	Ethnic Studies
1322	History of Religion
1327	Boating & Sailing
1331	National Security
3000	Terrorism
1342	Serial Killers
1352	Camping
1373	Careers
1374	Occult
1377	Murder & Mayhem
1384	Humanities
1388	Comparative Politics
1389	Finance
1397	Inspirational
1401	Anarchy
1404	Democracy
1405	Elections
1415	Basketball
1419	Poverty
1431	Dark Horse
1432	Hinduism
1435	Drawing
1437	Sculpture
1444	Europe
1451	Political Parties
1457	Women's Studies
1464	Word Games
1468	Photography
1469	Marvel
1470	Football
1473	Satire
1478	Small Business
1487	Modern
1488	Noir
1489	Modern Poetry
\.


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (attribute, id_person) FROM stdin;
Teacher	960
Student	905
Other	928
Student	917
Student	911
Student	955
Student	925
Student	927
Student	971
Other	967
Teacher	983
Student	918
Other	956
Teacher	976
Other	965
Teacher	903
Student	916
Other	984
Student	985
Student	954
Student	995
Other	947
Other	958
Other	973
Other	937
Student	989
Other	931
Teacher	987
Teacher	951
Teacher	981
Other	938
Teacher	961
Teacher	974
Student	923
Other	982
Other	990
Other	942
Student	921
Other	900
Teacher	932
Student	906
Other	948
Other	977
Teacher	946
Other	945
Other	996
Other	933
Teacher	926
Other	997
\.


--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee (id_person) FROM stdin;
929
913
980
908
952
950
939
969
944
959
901
949
953
962
998
914
919
907
934
966
924
986
957
988
968
991
978
972
979
940
920
999
975
943
915
909
993
941
970
963
994
910
912
964
992
902
922
930
935
\.


--
-- Data for Name: final1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.final1 (book_id, isbn) FROM stdin;
\.


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.person (id_person, name_person, surname, telephone) FROM stdin;
id_person	name	surname	telephone
960	Emelita	Rutter	4266004508
905	Suellen	Gilliatt	5915962095
928	Shea	Cattermoul	2116944131
917	Greggory	Ismead	8042858379
911	Marilin	Hurlin	8461881723
955	Ezmeralda	Fagge	8339460765
925	Marlyn	Faye	4934541601
927	Cal	Defont	5722757763
971	Kippy	Weavers	6513905833
967	Bronnie	Ausher	8489999886
983	Sydney	Raubheim	1344193535
918	Anetta	Vedyashkin	1052362993
956	Pearle	Splain	2335232858
976	Deedee	Klausen	9135328899
965	Burton	Ivery	8169888080
903	Carmina	Greenaway	6029435656
916	Lynea	Smalcombe	5278916186
984	Rolland	Incogna	9336752858
985	Rickey	Deaconson	1561399959
954	Idaline	Gillford	6111210770
995	Bess	Stockoe	1572408028
947	Nonna	Merrin	2345386914
958	Emelyne	Glossop	4856850054
973	Lillian	Puttergill	6265465363
937	Brig	Haughian	8702959722
989	Magdalen	Virgo	4747254930
931	Ferdinand	Fegan	9132395821
987	Engelbert	Djurevic	3542410968
951	Darcy	McGee	1723635350
981	Cordell	Gronaver	1411909535
938	Gayle	Jeram	2014886267
961	Caresse	Pecht	4728445900
974	Rhiamon	Kraut	9777822026
923	Danny	Giacomuzzi	9389816662
982	Twila	Minster	6479104552
990	Sabine	Maytom	6729880510
942	Calhoun	Giraux	1188548488
921	Stearn	O'Hartigan	7162077406
900	Scotty	Gruczka	2974863742
932	Tabbi	Yewdell	8186854429
906	Artemis	Greenman	2773247196
948	Dionysus	Banford	3092643692
977	Stacee	Reims	3835836770
946	Zitella	Tregale	2394028135
945	Tess	Checkley	5171201539
996	Martie	Fahy	4283092658
933	Venus	Airy	5951503259
926	Kassi	Petrik	9838130238
997	Kip	Wallage	6552508331
904	Alfy	Waddy	1018966193
929	Sandie	Brimmell	1952074655
913	Bancroft	Klesel	1325084378
980	Berta	O'Reilly	2839410019
908	Pancho	McCreery	4516436861
952	Kean	Masi	6077247366
950	Chan	Spadazzi	2624993581
939	Cahra	Pulhoster	9857592456
969	Bradley	Dowson	7854581460
944	Nicholas	Dawe	6493277403
959	Ettore	Theze	6286238544
901	Enrika	Sheddan	8479712651
949	Nicoli	Labbett	3802354805
953	Justinn	Casaccio	2355083844
962	Aylmar	Clausen-Thue	1603039672
998	Eldredge	Canet	6606630286
914	Breena	Chilley	3049452580
919	Anitra	Whitesel	2856786040
907	Ragnar	Callinan	3168143584
934	Sandye	Wildey	9804216365
966	Barbabas	Bulteel	8891321690
924	Allx	Coope	8216367670
986	Melinda	Lowell	7658460419
957	Barb	Kernell	9463988503
988	Flossy	Ashenhurst	8581449652
968	Kristel	Baughen	4946983065
991	Jenn	McSkin	3378858803
978	Jamie	Bryns	8661899292
972	Annie	Crucitti	4911257845
979	Freda	Hartness	1053365519
940	Dav	Doggart	3514347926
920	Brittany	Rooke	4848274005
999	Felicdad	Strutz	1224138053
975	Bjorn	Myles	4368866183
943	Alanson	Rathmell	7187480920
915	Fraser	Poundsford	4835348340
909	Clim	Marton	5878405700
993	Eudora	Schruur	4861168591
941	Mathilda	Lorand	2793843163
970	Antonin	Slowcock	6049119759
963	Cass	Oakenfield	2748210936
994	Florri	Le Provost	9914185796
910	Danila	Stallen	5781913866
912	Siward	Udale	8902376066
964	Moyra	Foyston	4632936439
992	Joyous	Rands	7566946280
902	Jimmy	Elsay	4725972791
922	Esmaria	Schruyer	8955091223
930	Babita	Mizen	5791249364
935	Kendall	Hebbs	1694102322
936	Danette	Eden	2459962654
\.


--
-- Data for Name: write1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.write1 (id_author, isbn) FROM stdin;
1	388603187-X
2	572362004-5
3	613170162-8
4	943544365-6
5	622268928-0
6	726193109-8
7	708203228-5
8	838709555-9
9	011485267-7
10	398323330-9
11	652248956-2
12	602675968-9
13	435105436-0
14	206139628-3
15	276401588-7
16	106390886-8
17	003359798-7
18	515840288-4
19	919992136-7
20	392936621-5
21	492210670-7
22	424304523-2
23	858029276-X
24	510477070-2
25	554579580-4
26	120652337-9
27	745051915-1
28	129041316-9
29	438737299-0
30	689546904-4
31	429406826-4
32	114555896-8
33	619546619-0
34	004541988-4
35	815118832-4
36	366580840-5
37	079421150-X
38	658994404-0
39	014544344-2
40	642767760-8
41	477741285-7
42	017161193-4
43	786106534-0
44	210613171-2
45	678114177-5
46	803274548-3
47	741296146-2
48	795600456-X
49	225305530-1
50	237359496-X
51	383857865-1
52	932601563-7
53	865724293-1
54	734795379-0
55	762305364-7
56	219680099-6
57	491730597-7
58	856137863-8
59	200233457-9
60	299825791-7
61	017624576-6
62	568732782-7
63	508630244-7
64	542983754-7
65	697255479-9
66	843419082-6
67	725858936-8
68	158806568-5
69	830957434-7
70	076031332-6
71	680965529-8
72	869110723-5
73	016881381-5
74	474820536-9
75	706027228-3
76	168335871-6
77	328893952-5
78	922147998-6
79	776819890-5
80	205685834-7
81	143994038-X
82	377944032-6
83	896742511-2
84	507465787-3
85	349310848-6
86	057726035-9
87	153054574-9
88	637883043-6
89	190610351-8
90	349090423-0
91	701840119-4
92	536194124-7
93	380177577-1
94	828725394-2
95	957351955-0
96	416361717-5
97	684481935-8
98	079219815-8
99	074358842-8
100	563110059-2
\.


--
-- Name: author author_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pkey PRIMARY KEY (id_author);


--
-- Name: belong belong_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.belong
    ADD CONSTRAINT belong_pkey PRIMARY KEY (isbn, id_category);


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (isbn);


--
-- Name: borrowing borrowing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borrowing
    ADD CONSTRAINT borrowing_pkey PRIMARY KEY (book_id);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id_category);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id_person);


--
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id_person);


--
-- Name: final1 final1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.final1
    ADD CONSTRAINT final1_pkey PRIMARY KEY (book_id);


--
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id_person);


--
-- Name: write1 write1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.write1
    ADD CONSTRAINT write1_pkey PRIMARY KEY (id_author, isbn);


--
-- Name: belong belong_id_category_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.belong
    ADD CONSTRAINT belong_id_category_fkey FOREIGN KEY (id_category) REFERENCES public.category(id_category) ON DELETE CASCADE;


--
-- Name: belong belong_isbn_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.belong
    ADD CONSTRAINT belong_isbn_fkey FOREIGN KEY (isbn) REFERENCES public.books(isbn) ON DELETE CASCADE;


--
-- Name: borrowing borrowing_id_customer_person_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borrowing
    ADD CONSTRAINT borrowing_id_customer_person_fkey FOREIGN KEY (id_customer_person) REFERENCES public.customer(id_person) ON DELETE CASCADE;


--
-- Name: borrowing borrowing_id_employee_person_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borrowing
    ADD CONSTRAINT borrowing_id_employee_person_fkey FOREIGN KEY (id_employee_person) REFERENCES public.employee(id_person) ON DELETE CASCADE;


--
-- Name: customer customer_id_person_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_id_person_fkey FOREIGN KEY (id_person) REFERENCES public.person(id_person) ON DELETE CASCADE;


--
-- Name: employee employee_id_person_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_id_person_fkey FOREIGN KEY (id_person) REFERENCES public.person(id_person);


--
-- Name: final1 final1_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.final1
    ADD CONSTRAINT final1_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.borrowing(book_id);


--
-- Name: final1 final1_isbn_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.final1
    ADD CONSTRAINT final1_isbn_fkey FOREIGN KEY (isbn) REFERENCES public.books(isbn);


--
-- Name: write1 write1_id_author_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.write1
    ADD CONSTRAINT write1_id_author_fkey FOREIGN KEY (id_author) REFERENCES public.author(id_author) ON DELETE CASCADE;


--
-- Name: write1 write1_isbn_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.write1
    ADD CONSTRAINT write1_isbn_fkey FOREIGN KEY (isbn) REFERENCES public.books(isbn) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

