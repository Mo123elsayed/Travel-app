// this file contain all data about the application

import './models/category.dart';
import './models/trip.dart';

const Categories_data = [
  Category(
    id: 'c1',
    title: 'Mountains',
    imageUrl: 'assets/images/جبال.jpeg',
  ),
  Category(
    id: 'c2',
    title: 'Lakes',
    imageUrl: 'assets/images/بحيرات.jpeg',
  ),
  Category(
    id: 'c3',
    title: 'Beaches',
    imageUrl: 'assets/images/شاطئ-الأول.png',
  ),
  Category(
    id: 'c4',
    title: 'Deserts',
    imageUrl: 'assets/images/الصحراء-الكبرى.png',
  ),
  Category(
    id: 'c5',
    title: 'History Towns',
    imageUrl: 'assets/images/المدينة-الثانية.png',
  ),
  Category(
    id: 'c6',
    title: 'Others',
    imageUrl: 'assets/images/رياضة-التثلج.png',
  ),
];

const Trips_data = [
  Trip(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'The Alps',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl: 'assets/images/جبال-الألب.jpg',
    durationTrip: 20,
    activities: [
      'Visit Archeaological sites',
      'The Tour on Foot',
      'Visit Malls',
      'Eat Launch',
      'Enjoy with scenery'
    ],
    programTrip: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار سيت أميت ,تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'South Mountains',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl: 'assets/images/جبال-الجنوب.png',
    durationTrip: 10,
    activities: [
      'Visit Archeaological sites',
      'The Tour on Foot',
      'Visit Malls',
      'Eat Launch',
      'Enjoy with scenery'
    ],
    programTrip: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm3',
    categories: [
      'c1',
    ],
    title: 'High Mountains',
    tripType: TripType.Recovery,
    season: Season.Winter,
    imageUrl: 'assets/images/جبال-مرتفعة.png',
    durationTrip: 45,
    activities: [
      'Visit Archeaological sites',
      'The Tour on Foot',
      'Visit Malls',
      'Eat Launch',
      'Enjoy with scenery'
    ],
    programTrip: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm4',
    categories: [
      'c2',
      'c1',
    ],
    title: 'The Great Lake',
    tripType: TripType.Activities,
    season: Season.Spring,
    imageUrl: 'assets/images/البحيرة-الكبرى.png',
    durationTrip: 60,
    activities: [
      'Visit Archeaological sites',
      'The Tour on Foot',
      'Visit Malls',
      'Eat Launch',
      'Enjoy with scenery'
    ],
    programTrip: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور ',
      'أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm5',
    categories: [
      'c2',
      'c1',
    ],
    title: 'Small Lakes',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl: 'assets/images/البحيرات-الصغرى.png',
    durationTrip: 15,
    activities: [
      'Visit Archeaological sites',
      'The Tour on Foot',
      'Visit Malls',
      'Eat Launch',
      'Enjoy with scenery'
    ],
    programTrip: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm6',
    categories: [
      'c2',
    ],
    title: 'Emerald Lake',
    tripType: TripType.Exploration,
    season: Season.Summer,
    imageUrl: 'assets/images/بحيرة-الزمرد.png',
    durationTrip: 240,
    activities: [
      'Visit Archeaological sites',
      'The Tour on Foot',
      'Visit Malls',
      'Eat Launch',
      'Enjoy with scenery'
    ],
    programTrip: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm7',
    categories: [
      'c3',
    ],
    title: 'The First Beach',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl: 'assets/images/شاطئ-الأول.png',
    durationTrip: 20,
    activities: [
      'Visit Archeaological sites',
      'The Tour on Foot',
      'Visit Malls',
      'Eat Launch',
      'Enjoy with scenery'
    ],
    programTrip: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm8',
    categories: [
      'c3',
    ],
    title: 'The Great Beach',
    tripType: TripType.Recovery,
    season: Season.Spring,
    imageUrl: 'assets/images/الشاطىء-الكبير.png',
    durationTrip: 35,
    activities: [
      'Visit Archeaological sites',
      'The Tour on Foot',
      'Visit Malls',
      'Eat Launch',
      'Enjoy with scenery'
    ],
    programTrip: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm9',
    categories: [
      'c3',
    ],
    title: 'Rock Beach',
    tripType: TripType.Exploration,
    season: Season.Summer,
    imageUrl: 'assets/images/شاطىء-الصخور.png',
    durationTrip: 45,
    activities: [
      'Visit Archeaological sites',
      'The Tour on Foot',
      'Visit Malls',
      'Eat Launch',
      'Enjoy with scenery'
    ],
    programTrip: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm10',
    categories: [
      'c4',
    ],
    title: 'The Great Desert',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl: 'assets/images/الصحراء-الكبرى.png',
    durationTrip: 30,
    activities: [
      'Visit Archeaological sites',
      'The Tour on Foot',
      'Visit Malls',
      'Eat Launch',
      'Enjoy with scenery'
    ],
    programTrip: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm11',
    categories: [
      'c4',
      'c1',
    ],
    title: 'Western Desert',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl: 'assets/images/الصحراء-الغربية.png',
    durationTrip: 30,
    activities: [
      'Visit Archeaological sites',
      'The Tour on Foot',
      'Visit Malls',
      'Eat Launch',
      'Enjoy with scenery'
    ],
    programTrip: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm12',
    categories: [
      'c4',
    ],
    title: 'Sand Desert',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl: 'assets/images/الصحراء-الرملية.png',
    durationTrip: 30,
    activities: [
      'Visit Archeaological sites',
      'The Tour on Foot',
      'Visit Malls',
      'Eat Launch',
      'Enjoy with scenery'
    ],
    programTrip: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm13',
    categories: [
      'c5',
    ],
    title: 'First Town',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl: 'assets/images/المدينة-الأولى.png',
    durationTrip: 30,
    activities: [
      'Visit Archeaological sites',
      'The Tour on Foot',
      'Visit Malls',
      'Eat Launch',
      'Enjoy with scenery'
    ],
    programTrip: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm14',
    categories: [
      'c5',
    ],
    title: 'Second Town',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl: 'assets/images/المدينة-الثانية.png',
    durationTrip: 30,
    activities: [
      'Visit Archeaological sites',
      'The Tour on Foot',
      'Visit Malls',
      'Eat Launch',
      'Enjoy with scenery'
    ],
    programTrip: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm15',
    categories: [
      'c5',
    ],
    title: 'The Old City',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl: 'assets/images/المدينة-القديمة.png',
    durationTrip: 30,
    activities: [
      'Visit Archeaological sites',
      'The Tour on Foot',
      'Visit Malls',
      'Eat Launch',
      'Enjoy with scenery'
    ],
    programTrip: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm16',
    categories: [
      'c6',
    ],
    title: 'Skiting Sport',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl: 'assets/images/رياضة-التثلج.png',
    durationTrip: 30,
    activities: [
      'Visit Archeaological sites',
      'The Tour on Foot',
      'Visit Malls',
      'Eat Launch',
      'Enjoy with scenery'
    ],
    programTrip: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm17',
    categories: [
      'c6',
      'c2',
    ],
    title: 'Sky Diving',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl: 'assets/images/القفز-المظلي.png',
    durationTrip: 30,
    activities: [
      'Visit Archeaological sites',
      'The Tour on Foot',
      'Visit Malls',
      'Eat Launch',
      'Enjoy with scenery'
    ],
    programTrip: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
];
