import 'package:navigation_bar_example/QuotesData.dart';

const List<String> aristippusQuotes = [
  "To endeavour to adapt circumstances to myself, not myself to circumstances",
  "Every complexion of life, every station and circumstance sat gracefully upon him.",
  "It is not abstinence from pleasures that is best, but mastery over them without ever being worsted",
  "Wise people, even though all laws were abolished, would still lead the same life",
];

const String aristippusBio =
    '''Aristippus of Cyrene (/ˌærəˈstɪpəs/; Ancient Greek: Ἀρίστιππος ὁ Κυρηναῖος; c. 435 – c. 356 BCE) was the founder of the Cyrenaic school of Philosophy.[1] He was a pupil of Socrates, but adopted a very different philosophical outlook, teaching that the goal of life was to seek pleasure by circumstances to oneself and by maintaining proper control over both adversity and prosperity. His outlook came to be called "ethical hedonism."[citation needed] Among his pupils was his daughter Arete.''';

final QuotesData aristippus = new QuotesData(
    'Aristippus of Cyrene',
    'c. 435 BC',
    'c. 356 BCE',
    aristippusQuotes,
    'https://upload.wikimedia.org/wikipedia/commons/2/25/Aristippus.jpg',
    aristippusBio);
