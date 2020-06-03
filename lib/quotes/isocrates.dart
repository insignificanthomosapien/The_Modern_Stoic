import 'package:navigation_bar_example/QuotesData.dart';

const List<String> isocratesQuotes = [
  "So far has Athens left the rest of mankind behind in thought and expression that her pupils have become the teachers of the world, and she has made the name of Hellas distinctive no longer of race but of intellect, and the title of Hellene a badge of education rather than of common descent.",
  "What thou thyself hatest, do to no man.",
  "Argos is the land of your fathers.",
  "Never hope to conceal any shameful thing which you have done; for even if you do conceal it from others, your own heart will know.",
  "Guard yourself against accusations, even if they are false; for the multitude are ignorant of the truth and look only to reputation.",
  "Spend your leisure time in cultivating an ear attentive to discourse, for in this way you will find that you learn with ease what others have found out with difficulty.",
  "Wealth quickly fails us, but precepts abide through all time; for wisdom alone of all possessions is imperishable.",
  "Of all our possessions, wisdom alone is immortal.",
  "The greatest thing in the small compass is a sound mind in a human body.",
  "Always when you are about to say anything, first weigh it in your mind; for with many the tongue outruns the thought.",
  "Consider that nothing in human life is stable; for then you will not exult overmuch in prosperity, nor grieve overmuch in adversity.",
  "For just as we see the bee settling on all the flowers, and sipping the best from each, so also those who aspire to culture ought not to leave anything untasted, but should gather useful knowledge from every source."
];

const String isocratesBio =
    '''Isocrates (/aɪˈsɒkrəˌtiːz/; Ancient Greek: Ἰσοκράτης [isokrátɛ̂ːs]; 436–338 BC), an ancient Greek rhetorician, was one of the ten Attic orators. Among the most influential Greek rhetoricians of his time, Isocrates made many contributions to rhetoric and education through his teaching and written works.

Greek rhetoric is commonly traced to Corax of Syracuse, who first formulated a set of rhetorical rules in the fifth century BC. His pupil Tisias was influential in the development of the rhetoric of the courtroom, and by some accounts was the teacher of Isocrates. Within two generations, rhetoric had become an important art, its growth driven by social and political changes such as democracy and courts of law.''';

final QuotesData isocrates = new QuotesData(
    'Isocrates',
    '436 BC',
    '338 BC',
    isocratesQuotes,
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Isocrates_pushkin.jpg/1280px-Isocrates_pushkin.jpg',
    isocratesBio);
