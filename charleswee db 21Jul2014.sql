-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 21, 2014 at 05:28 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `charleswee`
--
CREATE DATABASE IF NOT EXISTS `charleswee` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `charleswee`;

-- --------------------------------------------------------

--
-- Table structure for table `district_postal`
--

CREATE TABLE IF NOT EXISTS `district_postal` (
  `district_id` tinyint(3) DEFAULT NULL,
  `postal` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district_postal`
--

INSERT INTO `district_postal` (`district_id`, `postal`) VALUES
(1, '01'),
(1, '02'),
(1, '03'),
(1, '04'),
(1, '05'),
(1, '06'),
(2, '07'),
(2, '08'),
(4, '09'),
(4, '10'),
(5, '11'),
(5, '12'),
(5, '13'),
(3, '14'),
(3, '15'),
(3, '16'),
(6, '17'),
(7, '18'),
(7, '19'),
(8, '20'),
(8, '21'),
(9, '22'),
(9, '23'),
(10, '24'),
(10, '25'),
(10, '26'),
(10, '27'),
(11, '28'),
(11, '29'),
(11, '30'),
(12, '31'),
(12, '32'),
(12, '33'),
(13, '34'),
(13, '35'),
(13, '36'),
(13, '37'),
(14, '38'),
(14, '39'),
(14, '40'),
(14, '41'),
(15, '42'),
(15, '43'),
(15, '44'),
(15, '45'),
(16, '46'),
(16, '47'),
(16, '48'),
(17, '49'),
(17, '50'),
(18, '51'),
(18, '52'),
(19, '53'),
(19, '54'),
(19, '55'),
(20, '56'),
(20, '57'),
(21, '58'),
(21, '59'),
(22, '60'),
(22, '61'),
(22, '62'),
(22, '63'),
(22, '64'),
(23, '65'),
(23, '66'),
(23, '67'),
(23, '68'),
(24, '69'),
(24, '70'),
(24, '71'),
(25, '72'),
(25, '73'),
(27, '75'),
(27, '76'),
(26, '77'),
(26, '78'),
(28, '79'),
(28, '80'),
(17, '81'),
(19, '82');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE IF NOT EXISTS `property` (
  `property_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `dev` varchar(50) DEFAULT NULL,
  `top` date DEFAULT NULL,
  `tenure` varchar(15) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `payment` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `eli` varchar(50) DEFAULT NULL,
  `avail` varchar(50) DEFAULT NULL,
  `psf` varchar(50) DEFAULT NULL,
  `block` varchar(50) DEFAULT NULL,
  `storey` varchar(50) DEFAULT NULL,
  `num_unit` varchar(50) DEFAULT NULL,
  `stat` char(1) DEFAULT 'A',
  `image` varchar(50) DEFAULT NULL,
  `postal` varchar(6) DEFAULT NULL,
  `pdf` varchar(50) DEFAULT NULL,
  `image2` varchar(50) DEFAULT NULL,
  `image3` varchar(50) DEFAULT NULL,
  `desc` varchar(1000) DEFAULT NULL,
  `num_storey` tinyint(3) DEFAULT NULL,
  `map` varchar(1000) DEFAULT NULL,
  `pdf2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`property_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`property_id`, `name`, `addr`, `district`, `dev`, `top`, `tenure`, `area`, `payment`, `price`, `eli`, `avail`, `psf`, `block`, `storey`, `num_unit`, `stat`, `image`, `postal`, `pdf`, `image2`, `image3`, `desc`, `num_storey`, `map`, `pdf2`) VALUES
(1, 'Ardmore', '3 Ardmore Park ', '13', 'Botanica Pte Ltd (Wheelock Properties)', '0000-00-00', 'Freehold', '434,323 sq ft', 'Normal Progressive', 'Price on ask', 'Singapore/PR only', 'Dec 2012', '$1000-$2000', '2', '30', '84', 'A', 'ardmore_three.png', '', 'ardmore_three.pdf', '', '', '', 0, 'https://maps.google.com.sg/maps?q=3+Ardmore+Park+&amp;hl=en&amp;sll=1.343642,103.824234&amp;sspn=0.567011,0.386581&amp;hnear=3+Ardmore+Park,+259950&amp;t=m&amp;ie=UTF8&amp;hq=&amp;ll=1.308378,103.828571&amp;spn=0.017719,0.012081&amp;z=14&amp;iwloc=A&amp;output=embed', NULL),
(2, 'Clermont Residence', '3 Wallich Street', '2', 'GuocoLand', '2019-12-31', '99years', '434,323 sq ft', NULL, NULL, 'Singapore/PR only', 'Dec 2012', '$1000-$2000', '2', '30', '43', 'A', 'clermont_residence.bmp', '078882', 'clermont_residence.pdf', NULL, NULL, '<ul>\r\n<li>Tallest residences in Singapore at 290m AMSL. 180 degree&nbsp;views of the dazzling cityscape and the Straits of&nbsp;Singapore</li>\r\n<li>Live-Work-Play-Relax lifestyle, Integrated&nbsp;development comprising Luxuriously appointed&nbsp;apartments, Grade-A offices, 5-star Hotel, lifestyle&nbsp;retail shops, City Room&nbsp;</li>\r\n<li>Direct connectivity to Tanjong Pagar MRT station&nbsp;</li>\r\n<li>Located at the heart of the Central Business District,&nbsp;gateway connecting Raffles Place, Marina Bay and&nbsp;the upcoming Tanjong Pagar Waterfront City&nbsp;</li>\r\n<li>Developed by Guocoland. Designed by acclaimed&nbsp;architect Skidmore, Owings &amp; Merrill LLP (SOM)&nbsp;</li>\r\n</ul>', 0, 'https://maps.google.com.sg/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=3+Wallich+Street&amp;aq=&amp;sll=1.306895,103.828526&amp;sspn=0.017719,0.012081&amp;ie=UTF8&amp;hq=&amp;hnear=3+Wallich+St&amp;t=m&amp;z=14&amp;ll=1.276785,103.845067&amp;output=embed', NULL),
(3, 'Waterbank at Dakota', 'Dakota Crescent', '16', 'UOL Development (Dakota) Pte Ltd', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '616', 'P', 'waterbank_at_dakota.jpg', '470134', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Volari @ Balmoral ', '12 Balmoral Road', NULL, 'City Developments Ltd', '2014-06-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', 'P', 'volari_at_balmoral.jpg', '259820', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Ventura Heights', '69 - 69P Jalan Lim Tai See / 71 - 71Z Jalan Lim Tai See', '', 'ACT Nobel Homes Pte Ltd', '2011-12-31', 'Freehold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40', 'P', 'ventura_heights.jpg', '', 'ventura_heights.pdf', NULL, NULL, '', 0, NULL, NULL),
(13, 'Concourse Skyline', '296, 298, 302 Beach Road', '7', 'Hong Fok Land Ltd', '0000-00-00', '99years', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '360', 'A', 'concourse_skyline.jpg', '199599', '', NULL, NULL, '', 0, 'https://maps.google.com.sg/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=296+Beach+Road&amp;aq=&amp;sll=1.301371,103.861664&amp;sspn=0.017719,0.012081&amp;ie=UTF8&amp;hq=&amp;hnear=296+Beach+Rd,+199599&amp;ll=1.30136,103.861656&amp;spn=0.017719,0.012081&amp;t=m&amp;z=14&amp;output=embed', NULL),
(14, 'Corals at Keppel Bay', '1,3,5,7,9,11,13,15,17,19 and 21 Keppel Bay Drive', '4', 'Keppel Bay Pte Ltd', '2018-07-31', '99years', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '366', 'A', 'coral_at_keppel_bay.png', '098012', 'coral_at_keppel_bay.pdf', NULL, NULL, '<ul>\r\n<li>Luxury Urban Marina Living</li>\r\n<li>High-end residential, near city, retail, major transportation&nbsp;nodes and opposite Sentosa Island and Resorts World</li>\r\n<li>Located within the Alexandra / Harbourfront business corridor</li>\r\n<li>5-minute drive from the CBD and Marina Bay downtown</li>\r\n<li>Marina at Keppel Bay with premium berthing and lifestyle&nbsp;facilities</li>\r\n<li>Distinctive architecture design by Daniel Libeskind</li>\r\n<li>Premier developer offering fittings of exceptional quality&nbsp;include brands from Zucchetti, Poliform De Dietrich and&nbsp;Toto</li>\r\n<li>Good potential capital appreciation with the development of a&nbsp;new commercial belt in the South</li>\r\n</ul>', 0, 'https://maps.google.com.sg/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=keppel+bay+dr&amp;aq=&amp;sll=1.266093,103.817174&amp;sspn=0.01772,0.012081&amp;ie=UTF8&amp;hq=&amp;hnear=Keppel+Bay+Dr&amp;ll=1.266093,103.817174&amp;spn=0.01772,0.012081&amp;t=m&amp;z=14&amp;iwloc=A&amp;output=embed', NULL),
(15, 'DUO Residences', '1 Fraser Street', '7', 'M+S Pte Ltd', '2017-12-31', '99years', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '660', 'A', 'duo_residences.png', '189350', 'duo_residences.pdf', NULL, NULL, '<div>\r\n<ul>\r\n<li>Exclusive living in the heart of the city</li>\r\n<li>Distinctive design by Internationally acclaimed&nbsp;architect &ndash; Ole Scheeren</li>\r\n<li>Integrated Development &ndash; Luxury Residences,&nbsp;Grade A Offices, Retail, 5-star Hotel</li>\r\n<li>Direct connection to Bugis MRT Station (East/West&nbsp;Line and upcoming Downtown Line)</li>\r\n<li>Rising 49-storey high, residents can enjoy&nbsp;panorama of dazzling city skyline, Marina Bay and&nbsp;sea views</li>\r\n</ul>\r\n</div>', 0, 'https://maps.google.com.sg/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=1+Fraser+Street&amp;aq=&amp;sll=1.300213,103.857031&amp;sspn=0.017719,0.012081&amp;ie=UTF8&amp;hq=&amp;hnear=1+Fraser+St,+189350&amp;t=m&amp;z=14&amp;ll=1.300213,103.857031&amp;output=embed', NULL),
(16, 'Fulcrum', 'No. 33 Fort Road', '15', 'CEL - Fort Pte Ltd', '0000-00-00', 'Freehold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '128', 'A', 'fulcrum.png', '439092', 'fulcrum.pdf', NULL, NULL, '<div>\r\n<ul>\r\n<li>Within close proximity to Mountbatten and Dakota MRT Station</li>\r\n<li>Breathtaking views towards the sea and CBD</li>\r\n<li>Minutes drive to shopping amenities, international and local&nbsp;educational institutions</li>\r\n<li>10 mins to chain of fine dining at Kallang Leisure Park and Stadium&nbsp;Waterfront</li>\r\n<li>Excellent connectivity via East Coast and Marina Coastal Highway Conveniently located near major employment centres &ndash; CBD,&nbsp;Marina Bay, Ubi Tech Park and Changi Airport</li>\r\n<li>Eastern Region Line scheduled to be completed by 2020</li>\r\n</ul>\r\n</div>', 0, 'https://maps.google.com.sg/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=No.+33+Fort+Road&amp;aq=&amp;sll=1.300213,103.857031&amp;sspn=0.017719,0.012081&amp;ie=UTF8&amp;hq=&amp;hnear=33+Fort+Rd,+439092&amp;t=m&amp;z=14&amp;ll=1.298745,103.884906&amp;output=embed', NULL),
(17, 'Gallop Green', '13,15,17 & 19 Woollerton Park', '10', 'Straits Developments Private Limited ', '0000-00-00', 'Freehold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30', 'A', 'gallop_green.jpg', '257534', 'gallop_green.pdf', NULL, NULL, '<div>Description of Development : 13 units of 3 level townhouse (including 1 level of basement)</div>\r\n<div>40 units of Apartments (5, 4 &amp; 3 bedrooms)&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>Unit Size : Townhouse &ndash; 4,188sft to 5,102sft&nbsp;</div>\r\n<div>Apartments &ndash; 2,992sft to 3,757sft&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>No. of unit sold : 30 units comprising of&nbsp;</div>\r\n<div>* 2 townhouses&nbsp;</div>\r\n<div>* 28 apartments&nbsp;</div>\r\n<div><br /></div>\r\n<div>Car parking : 91 basement car parking lots&nbsp;</div>\r\n<div>Townhouses have own car porch&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>Facilities : Function room, Games room, Gymnasium, Changing room with&nbsp;</div>\r\n<div>Sauna &amp; Steam bath, Swimming pool, Children&rsquo;s pool, Tennis court,&nbsp;</div>\r\n<div>Children&rsquo;s playground and Jogging track</div>', 0, 'https://maps.google.com.sg/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=13+Woollerton+Park&amp;aq=&amp;sll=1.298745,103.884906&amp;sspn=0.017719,0.012081&amp;ie=UTF8&amp;hq=&amp;hnear=13+Woollerton+Park,+257534&amp;t=m&amp;ll=1.315368,103.808398&amp;spn=0.020594,0.027466&amp;z=15&amp;iwloc=A&amp;output=embed', NULL),
(18, 'Goodwood Residence', '261 Bt Timah Road', '10', 'Guocoland', '2013-12-31', 'Freehold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '210', 'A', 'goodwood_residence.jpg', '259703', 'goodwood_residence.pdf', NULL, NULL, '<div>BCA Green Mark Platinum Award</div>\r\n<div>Green space, green walls, green living, smart water management system</div>\r\n<div><br /></div>\r\nReactional Facilities: Tree-lined boulevard, tennis courts, courtyard, concierge, pavilion for meditation, pavilion for massage, swimming pool, children''s pool, jacuzzi, pool deck, grand lawn, garden walk, clubhouse, outdoor fitness area, playgorund, retreat gardens', 0, 'https://maps.google.com.sg/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=261+Bt+Timah+Road+&amp;aq=&amp;sll=1.315368,103.808978&amp;sspn=0.017719,0.012081&amp;ie=UTF8&amp;hq=&amp;hnear=261+Bukit+Timah+Rd,+259703&amp;t=m&amp;ll=1.314081,103.835993&amp;spn=0.015016,0.018239&amp;z=15&amp;iwloc=A&amp;output=embed', NULL),
(19, 'Holland Residences', '1, 3 & 5 Taman Warna Road', '10', 'Holland Village Development Pte Ltd', '2013-12-31', 'Freehold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '83', 'A', 'holland_residences.png', '276337', 'holland_residences.pdf', NULL, NULL, '<div>\r\n<ul>\r\n<li>83 exclusive units set in a serene water village</li>\r\n<li>Choose from 1br/2br/3br/4br apartments &amp; penthouses</li>\r\n<li>Walking distance to Holland Village and future Holland Village</li>\r\n<li>MRT station</li>\r\n<li>Minutes to Dempsey Hill, Rochester Park &amp; Botanic Gardens</li>\r\n<li>Luxuriously appointed with premium finishes &amp; fittings</li>\r\n<li>No restriction on foreign ownership</li>\r\n</ul>\r\n</div>', 0, 'https://maps.google.com.sg/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=1+Taman+Warna+276337&amp;aq=&amp;sll=1.311658,103.799472&amp;sspn=0.017719,0.012081&amp;ie=UTF8&amp;hq=&amp;hnear=1+Taman+Warna,+276337&amp;t=m&amp;ll=1.311636,103.799515&amp;spn=0.015016,0.018239&amp;z=15&amp;iwloc=A&amp;output=embed', NULL),
(20, 'Terraces at Kerong Walk', '2, 4, 6, 8 Kerong Walk', '27', '', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'A', 'kerong_walk.png', '757127', 'kerong_walk.pdf', NULL, NULL, '', 0, 'https://maps.google.com.sg/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=2+kerong+walk+757127&amp;aq=&amp;sll=1.464715,103.797912&amp;sspn=0.283492,0.193291&amp;ie=UTF8&amp;hq=&amp;hnear=2+Kerong+Ln&amp;t=m&amp;z=14&amp;ll=1.459442,103.838896&amp;output=embed', NULL),
(21, 'Wak Hassan', '51, 53 Wak Hassan Drive', '27', '', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'A', 'wak_hassan.png', '757147', 'wak_hassan.pdf', NULL, NULL, '<div>A Luxurious Semi-detached Dwelling with 4 Bedrooms and a Roof Terrace</div>\r\n<div>Tenure of Land: Leasehold 99 year from 18 July 2008</div>\r\n<div>Land area: 350.7 sqm/3,774.9 sqft</div>\r\n<div>Estimated Floor Area (including Roof Terrace): 724.38sqm/7,797sqft</div>\r\n<div>Estimated Roof Terrace Area: 1031.39 sqft</div>', 0, 'https://maps.google.com.sg/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=51,+53+Wak+Hassan+Drive&amp;aq=&amp;sll=1.459442,103.838896&amp;sspn=0.017718,0.012081&amp;ie=UTF8&amp;hq=&amp;hnear=51+Wak+Hassan+Dr&amp;t=m&amp;ll=1.459865,103.83831&amp;spn=0.015015,0.018239&amp;z=15&amp;iwloc=A&amp;output=embed', NULL),
(22, 'Leedon Residence', 'Leedon Road', '10', 'Guoco Land', '0000-00-00', 'Freehold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '381', 'A', 'leedon_residences.png', '267935', NULL, NULL, NULL, '<ul>\r\n<li>Rare 5 hectares of Freehold land in Prime District 10&nbsp;(approximately 522,000 sq.ft)</li>\r\n<li>Nestled amidst Good Class Bungalow</li>\r\n<li>Renowned architect, SCDA</li>\r\n<li>Minutes away from Dempsey Village, Holland Village, and&nbsp;</li>\r\n<li>Orchard Road</li>\r\n<li>Proximity to Prestigious Schools</li>\r\n</ul>', 0, 'https://maps.google.com.sg/maps?q=Leedon+Road&amp;ie=UTF8&amp;hq=&amp;hnear=Leedon+Rd&amp;gl=sg&amp;t=m&amp;ll=1.31451,103.797626&amp;spn=0.015016,0.018239&amp;z=15&amp;iwloc=A&amp;output=embed', NULL),
(23, 'Mon Jervois ', '39, 41, 43, 45, 47 Jervois Road', '10', 'Singland Development (Jervois) Pte Ltd', '0000-00-00', '99years', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '109', 'A', 'mon_jervois.jpg', '249078', 'mon_jervois.pdf', NULL, NULL, '<div>\r\n<ul>\r\n<li>Exclusive and prestigious prime residential address in District 10&nbsp;surrounded by Good Class Bungalows</li>\r\n<li>Close proximity to the bustling Orchard Road, CBD, Marina Bay, Science Parks, One North, Fusionpolis, Biopolis, Vivocity &amp; Sentosathat will boost high capital appreciation and rental yield</li>\r\n<li>Well-connected to major arterial roads such as Alexandra Road,&nbsp;Tanglin Road, River Valley Road and expressways such as CTE, AYE&nbsp;&amp; EC</li>\r\n<li>Functional layouts furnished with premium fittings, finishes &amp;&nbsp;appliances (Miele, Hansgrohe, Laufen) and high quality kitchen &amp;&nbsp;wardrobe system</li>\r\n<li>Fine selection of schools conveniently accessible (Crescent Girl&rsquo;s&nbsp;School, Gan Eng Seng School, ISS International School, Overseas&nbsp;Family School, Norwegian &amp; Finnish Supplementary School</li>\r\n<li>Voluminous and generous layout boasting high ceiling heights</li>\r\n</ul>\r\n</div>\r\n<div><br /></div>', 0, 'https://maps.google.com.sg/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=39+jervois+rd&amp;aq=&amp;sll=1.293702,103.825779&amp;sspn=0.070878,0.048323&amp;ie=UTF8&amp;hq=&amp;hnear=39+Jervois+Rd&amp;t=m&amp;ll=1.293573,103.822646&amp;spn=0.015017,0.018239&amp;z=15&amp;iwloc=A&amp;output=embed', NULL),
(24, 'Pavilion Park Phase 2J', 'Pavilion Circle', '23', 'Allgreen Properties Ltd', '2014-12-31', 'Freehold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '42', 'A', 'pavilion_park.png', '658471', 'pavilion_park.pdf', NULL, NULL, '', 0, 'https://maps.google.com.sg/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Pavilion+Circle&amp;aq=&amp;sll=1.343642,103.824234&amp;sspn=0.567011,0.386581&amp;ie=UTF8&amp;hq=&amp;hnear=Pavilion+Cir&amp;t=m&amp;ll=1.369341,103.752136&amp;spn=0.015016,0.018239&amp;z=15&amp;iwloc=A&amp;output=embed', NULL),
(25, 'RiverSails', 'Upper Serangoon Crescent', '19', '', '2017-09-30', '99years', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '920', 'A', 'riversails.png', '534032', 'riversails.pdf', NULL, NULL, '<ul>\r\n<li>Riverfront lifestyle in close proximity to Sungei Serangoon, Punggol Park &amp; Punggol&nbsp;Waterway Park</li>\r\n<li>Easily accessible via major expressways &ndash; KPE, CTE, SLE</li>\r\n<li>Well connected to Kangkar LRT and Ranggung LRT, as well as Buangkok &amp;&nbsp;Hougang MRT stations&nbsp;</li>\r\n<li>Host of various educational institutions eg Holy Innocent&rsquo;s Pri Sch, Mee Toh Sch,&nbsp;Nan Chiau Pri Sch and Nan Chiau High Sch&nbsp;</li>\r\n<li>Within easy reach to nearby amenities eg Hougang Mall, Compass Point, Rivervale&nbsp;Plaza &amp; Rivervale Mall</li>\r\n<li>Good rental &amp; investment potential</li>\r\n<li>Established Track Record of Allgreen Properties Ltd (Portfolio includes Pavilion&nbsp;Park, Viva, Holland Residences and Rivieria 38)</li>\r\n</ul>', 0, 'https://maps.google.com.sg/maps/ms?ie=UTF8&amp;t=m&amp;oe=UTF8&amp;msa=0&amp;msid=205658311195272984657.0004c114085a0d87ae64c&amp;ll=1.379595,103.902946&amp;spn=0.001877,0.00228&amp;z=18&amp;iwloc=0004c11420f823fbbb3e4&amp;output=embed', NULL),
(26, 'The Creek @ Bukit', '19 Toh Tuck Rd', '21', 'Chiu Teng', '0000-00-00', 'Freehold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '260', 'A', 'the_creek.png', '596683', 'the_creek.pdf', NULL, NULL, '', 0, 'https://maps.google.com.sg/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Toh+Tuck+Road+&amp;aq=&amp;sll=1.357664,103.882521&amp;sspn=0.070876,0.048323&amp;ie=UTF8&amp;hq=&amp;hnear=Toh+Tuck+Rd&amp;t=m&amp;ll=1.339695,103.765912&amp;spn=0.015016,0.018239&amp;z=15&amp;iwloc=A&amp;output=embed', NULL),
(27, 'The Trilinq ', '28/28A/28B/28C Jalan Lempeng ', '5', 'Clementi Development Pte Ltd', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '755', 'A', 'the_trilinq.png', '128807', 'the_trilinq.pdf', NULL, NULL, '<ul>\r\n<li>Strategically located near Clementi Town Centre</li>\r\n<li>Stunning 36-storey condo with wide selection of 1 to 4 BR and PH</li>\r\n<li>Spectacular views towards Sungei Ulu Pandan and Pandan Reservoir</li>\r\n<li>Excellent connectivity via AYE and PIE</li>\r\n<li>Approx 5 min stroll to Clementi MRT</li>\r\n<li>Approx 15 min drive to Orchard, CBD, Marina Bay Sands</li>\r\n</ul>', 36, 'https://maps.google.com.sg/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=28+Jalan+Lempeng&amp;aq=&amp;sll=1.343664,103.768122&amp;sspn=0.017719,0.012081&amp;ie=UTF8&amp;hq=&amp;hnear=28+Jalan+Lempeng&amp;t=m&amp;ll=1.3179,103.761449&amp;spn=0.015016,0.018239&amp;z=15&amp;iwloc=A&amp;output=embed', NULL),
(28, 'Trizon', '2 / 6 / 8 Ridgewood Close ', '10', 'Ideal Homes Pte Ltd', '0000-00-00', 'Freehold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '289', 'A', 'trizon.jpg', '276693', 'trizon.pdf', NULL, NULL, '', 0, 'https://maps.google.com.sg/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=2++Ridgewood+Close+&amp;aq=&amp;sll=1.317894,103.761465&amp;sspn=0.017719,0.012081&amp;ie=UTF8&amp;hq=&amp;hnear=2+Ridgewood+Close,+276693&amp;t=m&amp;ll=1.317042,103.778486&amp;spn=0.015016,0.018239&amp;z=15&amp;iwloc=A&amp;output=embed', NULL),
(29, 'Thomson Three', '21 - 45 Bright Hill Drive', '20', 'Singland / UOL', '2017-02-28', '99years', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '435', 'A', 'thomson_three.jpg', '', 'thomson_three.pdf', NULL, NULL, '', 0, NULL, NULL),
(30, 'V on Shenton', '5 Shenton Way', '1', 'UIC', '2017-12-31', '99years', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '510', 'A', 'v_on_shenton.jpg', '068808', 'v_on_shenton.pdf', NULL, NULL, '<div>\r\n<ul>\r\n<li>Design by renowned architect, Ben Van Berkel of UN&nbsp;Studio (Local Architect A61)</li>\r\n<li>1 Office Tower (24-storeys) and 1 Residential Tower (53-storeys) with 1 Facilities Deck on 8th storey and 2 Sky&nbsp;Gardens on 24th and 34th storey</li>\r\n<li>Located within the Marina Bay area, and part of the&nbsp;exciting new Downtown Live-Work-Play lifestyle.&nbsp;Breathtaking views of Singapore CBD</li>\r\n<li>Developed by one of Singapore&rsquo;s leading developers &ndash; UIC</li>\r\n</ul>\r\n</div>', 0, 'https://maps.google.com.sg/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=5+Shenton+Way&amp;aq=&amp;sll=1.343746,103.824045&amp;sspn=0.567011,0.386581&amp;ie=UTF8&amp;hq=&amp;hnear=5+Shenton+Way,+068808&amp;t=m&amp;ll=1.278042,103.849726&amp;spn=0.015017,0.018239&amp;z=15&amp;iwloc=A&amp;output=embed', NULL),
(31, 'Vermont on Cairnhill', '12, 12a & 12b Cairnhill Rise', '9', 'Bukit Sembawang View Pte Ltd', '2014-12-31', 'Freehold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '158', 'A', 'vermont_on_cairnhill.jpg', '229745', 'vermont_on_cairnhill.pdf', NULL, NULL, '<ul>\r\n<li>Coveted District 09 address</li>\r\n<li>Within walking distance to Orchard Shopping Belt and Newton MRT</li>\r\n<li>North South orientation for most units</li>\r\n<li>Nestled on elevated land with panoramic views of the city and its&nbsp;surrounding</li>\r\n<li>Each unit is luxuriously appointed and finished with the highest quality&nbsp;fittings and appliances&nbsp;</li>\r\n<li>Exclusive recreational facilities</li>\r\n</ul>', 0, 'https://maps.google.com.sg/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=12+cairnhill+rise&amp;aq=&amp;sll=1.278042,103.850284&amp;sspn=0.01772,0.012081&amp;ie=UTF8&amp;hq=&amp;hnear=12+Cairnhill+Rise,+229745&amp;t=m&amp;ll=1.30859,103.838696&amp;spn=0.015016,0.018239&amp;z=15&amp;iwloc=A&amp;output=embed', NULL),
(32, 'Five Chancery', '', '', '', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'P', 'five_chancery.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(33, 'Aalto', '191, 193 Meyer Road', '15', 'Hong Leong Holdings Ltd', NULL, 'Freehold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '196', 'P', 'aalto.jpg', '437980', NULL, NULL, NULL, '', 0, NULL, NULL),
(34, 'Archipelago', '0 Bedok Reservoir Road ', '16', 'United Venture Developement Pte Ltd', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '577', 'P', 'archipelago.jpg', '470700', NULL, NULL, NULL, '', 0, NULL, NULL),
(35, 'Ascentia Sky', '1, 3 Alexandra View ', '', '', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'P', 'ascentia_sky.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(36, 'Belle Vue Residences ', '15, 17, 19, 21, 23, 25, 27, 31, 33 Oxley Walk ', '', 'WingQuest Investment Pte Ltd', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '176', 'P', 'belle_vue_residences.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(37, 'Blossom Residences', 'Segar Road', '', 'City Developements Limited / Leonie Court Pte Ltd', '2014-11-30', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '493', 'P', 'botannia.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(38, 'Buckley Classique', '9, 11 Buckley Road ', '', 'CDL', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '64', 'P', 'buckley_classicque.png', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(39, 'Canberra Residences', '501 - 525 Canberra Drive  ', '', 'MCC Land (Singapore) Pte Ltd', '2015-11-10', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '320', 'P', 'canberra_residences.jpg', '', NULL, NULL, NULL, '', 0, '', NULL),
(40, 'Centennia Suites', '100 Kim Seng Road', '', 'Lippo Real Estate Pte. Limited', '2015-12-31', 'Freehold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'P', 'centennia_suites.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(41, 'Cube 8', 'Thomson Road ', '', 'CDL', '2014-12-31', 'Freehold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '177', 'P', 'cube8.jpg', '', NULL, NULL, NULL, '', 36, NULL, NULL),
(42, 'Dakota Residences ', '34, 36, 38, 40, 42 Dakota Crescent ', '', '', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'P', 'dakota_esidences.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(43, 'D''Mira', '31 Boon Teck Road', '12', 'MCL Land (Development) Pte Ltd', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '65', 'P', 'dmira.jpg', '329602', NULL, NULL, NULL, '', 72, NULL, NULL),
(44, 'Echelon', 'Alexandra View', '', '', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '508', 'P', 'echelon.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(45, 'Ferrell Residences', '327 Bukit Timah Road', '', '', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'P', 'ferrell_residences.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(46, 'Foresque Residences', 'Chestnut Avenue ', '', '', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'P', 'foresque_residences.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(47, 'Grange Infinite ', 'Grange Road ', '', '', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '68', 'P', 'grange_infinite.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(48, 'H2O Residences', 'Sengkang West/Fernvale Link', '', 'CDL', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '521', 'P', 'h2o_residences.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(49, 'Hedges Park Condo', 'Upp Changi Road ', '', '', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'P', 'hedges_park.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(50, 'Hijauan On Cavenagh ', 'Cavenagh Road', '', '', '0000-00-00', 'Freehold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '41', 'P', 'hijauan_on_cavenagh.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(51, 'Hundred Trees ', '81, 83, 85, 87, 89, 91, 93, 95 West Coast Drive ', '', 'Grande-Terre Properties Pte Ltd', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '396', 'P', 'hundred_trees.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(52, 'Madison Residences ', '355 Bukit Timah Road', '10', 'Keppel Land', '2014-07-31', 'Freehold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '56', 'P', 'madison_residences.jpg', '259724', NULL, NULL, NULL, '', 0, NULL, NULL),
(53, 'Martin Place Residences ', '2, 6 Martin Place Road', '', 'FCL Land Pte Ltd', '2011-12-31', 'Freehold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '302', 'P', 'martin_place_residences.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(54, 'Meier Suites ', 'Margate Road', '', 'SB (Meyer) Development Pte Ltd', '2014-12-31', 'Freehold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '55', 'P', 'meier_suites.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(55, 'Nassim Park Residences ', '15 - 21 Nassim Road', '', 'Nassim Park Developments Pte Ltd', '0000-00-00', 'Freehold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'P', 'nassim_park.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(56, 'Oasis @ Elias ', 'Elias Road ', '', 'CEL Development Pte Ltd', '2012-12-31', '99years', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'P', 'oasis_at_elias.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(57, 'One Canberra EC', 'Canberra Drive ', '', '', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '665', 'P', 'one_canberra.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(58, 'Optima @ Tanah Merah ', 'New Upper Changi Road / Tanah Merah Kechil Ave ', '', 'TID Pte Ltd', '2014-06-30', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '297', 'P', 'optima_at_tanah_merah.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(59, 'Parkview Eclat ', 'Grange Road ', '', 'Chyau Fwu', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '35', 'P', 'parkview eclat.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(60, 'Reflections at Keppel Bay', 'Keppel Bay Drive ', '', 'Keppel Bay Pte Ltd', '2013-06-30', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1129', 'P', 'reflections_at_keppel_bay.JPG', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(61, 'Ritz Carlton Residences', 'Cairnhill Road ', '9', 'Royce Properties Pte Ltd', '2013-05-31', 'Freehold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58', 'P', 'ritz_carlton_residences.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(62, 'Seletar Park Residence', 'Seletar Road', '', 'Tuan Sing', '2016-10-31', '99years', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '276', 'P', 'seletar_park_residence.png', '', NULL, NULL, NULL, '', 0, '', NULL),
(63, 'Sui Generis ', '19, 21, 23 Balmoral Crescent ', '', 'Balmoral Development Pte Ltd', '2010-12-31', 'Freehold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40', 'P', 'sui_generis.jpg', '', NULL, NULL, NULL, '', 0, '', NULL),
(64, 'The Arte at Thomson ', '21 & 23 Jalan Raja Udang ', '', 'City Developments Limited', '2012-12-31', 'Freehold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '336', 'P', 'the_arte.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(65, 'The Canopy EC', '71, 73, 75, 77, 79, 81, 83 & 85 Yishun Avenue 11 ', '', 'MCC Land (Singapore) Pte Ltd', '2014-04-30', '99years', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '406', 'P', 'the_canopy.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(66, 'The Hamilton Scotts ', '37 Scotts Road ', '', 'Hayden Properties Pte Ltd', '2014-06-30', 'Freehold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '54', 'P', 'the_hamilton_scotts.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(67, 'The Meyerise ', '93, 97 Meyer Road ', '', '', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'P', 'the_meyerise.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(68, 'The Minton', '2 - 14 Hougang Street 11', '', '', '0000-00-00', '99years', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1145', 'P', 'the_minton.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(69, 'The Nautical ', '93, 95, 97, 99 Jalan Sendudok ', '', '', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'P', 'the_nautical.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(70, 'The Orange Grove', '38 Orange Grove Road ', '10', 'Ho Bee Developments Pte Ltd', '2011-09-30', 'Freehold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '72', 'P', 'the_orange_grove.jpg', '258364', NULL, NULL, NULL, '', 0, NULL, NULL),
(71, 'The Quartz', '51, 53, 55, 57, 59, 61, 63, 65, 67 and 69 Compassvale Bow', '', ' Winterhall Pte Ltd', '2010-06-30', '99years', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '625', 'P', 'the_quartz.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(72, 'The Rainforest EC', 'Choa Chua Kang Ave 3 ', '', '', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'P', 'the_rainforest_ec.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(73, 'W Residences Sentosa', 'Sentosa Cove ', '', 'Cityview Place Holdings Pte Ltd', '2012-10-31', '99years', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '228', 'P', 'the_residences_at_w.jpg', '', NULL, NULL, NULL, '', 0, '', NULL),
(74, 'The Sanctuary @ Geylang', '1, 3, 5 Lorong 30 Geylang ', '', '1L30G Pte Ltd', '2014-12-31', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21', 'P', 'the_sanctuary.jpg', '', NULL, NULL, NULL, '', 0, '', NULL),
(75, 'The Topiary Executive Condo', 'Fernvale Lane ', '', '', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'P', 'the_topiary.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(76, 'The Vision ', 'West Coast Crescent ', '', 'Grand Waterfront Development Pte Ltd', '2015-03-31', '99years', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'P', 'the_vision.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(77, 'Thomson Grand', 'Upper Thomson Rd ', 'PED', '', '2014-12-31', '99years', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '361', 'P', 'thomson_grand.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(78, 'Three Balmoral ', '3 Balmoral Road ', '', 'Tong Eng Brothers', '2015-09-30', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40', 'P', 'three_balmoral.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(79, 'Tresor ', '26, 28 Duchess Road ', '', 'Keppel Land Realty Pte Ltd', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '62', 'P', 'tresor.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(80, 'Trevista ', 'Junction of Lorong 2/3 Toa Payoh ', '', 'Choice Homes Gamma Pte Ltd', '2012-12-31', '99years', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '590', 'P', 'trevista.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(81, 'Trilight ', '7, 9 Newton Road ', '', 'Pacific Rover Pte Ltd ', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'P', 'trilight.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(82, 'Twin Fountains EC', 'Woodlands Drive 16 / Avenue 6 ', '', 'Frasers Centrepoint Ltd & Lum Chang', '2016-10-31', '99years', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'P', 'twin_fountains.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(83, 'Twin Peaks', 'Leonie Hill Road ', '', 'OUE ', '2015-02-28', '99years', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '462', 'P', 'twin_peaks.jpg', '', NULL, NULL, NULL, '', 0, NULL, NULL),
(84, 'Twin Waterfalls EC', '108 Punggol Walk', '19', 'Frasers Centrepoint Limited', '0000-00-00', '99years', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '728', 'P', 'twin_waterfalls.png', '828764', NULL, NULL, NULL, '', 0, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
