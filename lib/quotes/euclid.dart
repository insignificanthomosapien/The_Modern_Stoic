import 'package:navigation_bar_example/QuotesData.dart';

const List<String> euclidQuotes = [
  "Give him threepence, since he must make gain out of what he learns.",
  "There is no royal road to geometry.",
  "The laws of nature are but the mathematical thoughts of God.",
  "What has been affirmed without proof can also be denied without proof.",
  "Handwriting is a spiritual designing, even though it appears by means of a material instrument."
];

const String euclidBio =
    '''Euclid (/ˈjuːklɪd/; Ancient Greek: Εὐκλείδης – Eukleídēs, pronounced [eu̯.kleː.dɛːs]; fl. 300 BC), sometimes called Euclid of Alexandria[1] to distinguish him from Euclid of Megara, was a Greek mathematician, often referred to as the "founder of geometry"[1] or the "father of geometry". He was active in Alexandria during the reign of Ptolemy I (323–283 BC). His Elements is one of the most influential works in the history of mathematics, serving as the main textbook for teaching mathematics (especially geometry) from the time of its publication until the late 19th or early 20th century.[2][3][4] In the Elements, Euclid deduced the theorems of what is now called Euclidean geometry from a small set of axioms. Euclid also wrote works on perspective, conic sections, spherical geometry, number theory, and mathematical rigour.

The English name Euclid is the anglicized version of the Greek name Εὐκλείδης, which means "renowned, glorious".[5]''';

final QuotesData euclid = new QuotesData(
    'Euclid',
    '323 BC ',
    '283 BC',
    euclidQuotes,
    'https://upload.wikimedia.org/wikipedia/commons/c/c4/EuclidStatueOxford.jpg',
    euclidBio);
