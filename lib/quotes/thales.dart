import 'package:navigation_bar_example/QuotesData.dart';

const List<String> thalesQuotes = [
  "Know thyself.",
  "Avoid doing what you would blame others for doing.",
  "Nothing is more active than thought, for it flies over the whole universe; nothing is stronger than necessity, for all must submit to it.",
  "Hope is the only good that is common to all men; those who have nothing else possess hope still.",
  "Time is wisest because it discovers everything.",
  "A multitude of words is no proof of a prudent mind."
];

const String thalesBio =
    '''Thales of Miletus (/ˈθeɪliːz/ THAY-leez; Greek: Θαλῆς (ὁ Μιλήσιος), Thalēs; c. 624/623 – c. 548/545 BC) was a Greek mathematician, astronomer and pre-Socratic philosopher from Miletus in Ionia, Asia Minor. He was one of the Seven Sages of Greece. Many, most notably Aristotle, regarded him as the first philosopher in the Greek tradition,[1][2] and he is otherwise historically recognized as the first individual in Western civilization known to have entertained and engaged in scientific philosophy.[3][4]

Thales is recognized for breaking from the use of mythology to explain the world and the universe, and instead explaining natural objects and phenomena by theories and hypotheses, in a precursor to modern science. Almost all the other pre-Socratic philosophers followed him in explaining nature as deriving from a unity of everything based on the existence of a single ultimate substance, instead of using mythological explanations. Aristotle regarded him as the founder of the Ionian School and reported Thales' hypothesis that the originating principle of nature and the nature of matter was a single material substance: water.[5]

In mathematics, Thales used geometry to calculate the heights of pyramids and the distance of ships from the shore. He is the first known individual to use deductive reasoning applied to geometry, by deriving four corollaries to Thales' theorem. He is the first known individual to whom a mathematical discovery has been attributed.[6]''';

final QuotesData thales = new QuotesData(
    'Thales',
    'c. 624 BC',
    'c. 546 BC',
    thalesQuotes,
    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Illustrerad_Verldshistoria_band_I_Ill_107.jpg/1024px-Illustrerad_Verldshistoria_band_I_Ill_107.jpg',
    thalesBio);
