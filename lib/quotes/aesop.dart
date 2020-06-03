import 'package:navigation_bar_example/QuotesData.dart';

const List<String> aesopQuotes = [
  'A crust eaten in peace is better than a banquet partaken in anxiety.',
  'Any excuse will serve a tyrant.',
  'Any number of lies will serve a rich and evil man.',
  'Better be wise by the misfortunes of others than by your own.',
  'Beware the wolf in sheep\'s clothing.',
  'Do not count your chickens before they are hatched.',
  'Familiarity breeds contempt.',
  'In critical moments even the very powerful have need of the weakest.',
  'It is easy to be brave from a safe distance.',
  'No act of kindness, no matter how small, is ever wasted.',
  'People often grudge others what they cannot enjoy themselves.',
];

const String aesopBio =
    '''Aesop (/ˈiːsɒp/ EE-sop or /ˈeɪsɒp/ AY-sop; Greek: Αἴσωπος, Aísopos; c. 620–564 BCE) was a Greek fabulist and storyteller credited with a number of fables now collectively known as Aesop's Fables. Although his existence remains unclear and no writings by him survive, numerous tales credited to him were gathered across the centuries and in many languages in a storytelling tradition that continues to this day. Many of the tales are characterized by animals and inanimate objects that speak, solve problems, and generally have human characteristics.

Scattered details of Aesop's life can be found in ancient sources, including Aristotle, Herodotus, and Plutarch. An ancient literary work called The Aesop Romance tells an episodic, probably highly fictional version of his life, including the traditional description of him as a strikingly ugly slave (δοῦλος) who by his cleverness acquires freedom and becomes an adviser to kings and city-states. Older spellings of his name have included Esop(e) and Isope. Depictions of Aesop in popular culture over the last 2500 years have included many works of art and his appearance as a character in numerous books, films, plays, and television programs.''';

final QuotesData aesop = new QuotesData(
    'Aesop',
    '620 BC',
    '560 BC',
    aesopQuotes,
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Vel%C3%A1zquez_-_Esopo_%28Museo_del_Prado%2C_1639-41%29.jpg/800px-Vel%C3%A1zquez_-_Esopo_%28Museo_del_Prado%2C_1639-41%29.jpg',
    aesopBio);
