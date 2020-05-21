// Flutter code sample for BottomNavigationBar

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
// widgets and the [currentIndex] is set to index 0. The selected item is
// amber. The `_onItemTapped` function changes the selected item's index
// and displays a corresponding message in the center of the [Scaffold].
//
// ![A scaffold with a bottom navigation bar containing three bottom navigation
// bar items. The first one is selected.](https://flutter.github.io/assets-for-api-docs/assets/material/bottom_navigation_bar.png)

import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'QuotesData.dart';
import 'dart:math';
import 'package:auto_size_text/auto_size_text.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget. App starts running from here
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      //Home Screen of the app, opens up to 'Today'
      home: MyStatefulWidget(),
    );
  }
}

//The HomeScreen Widget
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isFavorited = false;
  static int selectedIndex = 0;



  //Function to change the state of the favorite button
  void toggleState() {
    setState(() {
      if (isFavorited) {
        isFavorited = !isFavorited;
      } else if (!isFavorited) {
        isFavorited = !isFavorited;
      }
    });
  }

  //BottomNavigationBar function to navigate in app
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;

      switch (index) {
        case 1:
          {
            selectedIndex = 0;
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return StoicScreen();
            }));
          }
          break;

        case 2:
          {
            selectedIndex = 0;
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return LibraryScreen();
            }));
          }
          break;

        case 3:
          {
            selectedIndex = 0;
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return AboutPage();
            }));
          }
          break;
      }
    });
  }
  //QUOTES DATA:
  static List<String> epictetusQuotes = [
    "To the rational being only the irrational is unendurable, but the rational is endurable.",
    "Yet God hath not only granted these faculties, by which we may bear every event without being depressed or broken by it, but like a good prince and a true father, hath placed their exercise above restraint, compulsion, or hindrance, and wholly without our own control.",
    "In a word, neither death, nor exile, nor pain, nor anything of this kind is the real cause of our doing or not doing any action, but our inward opinions and principles.",
    "No thing great is created suddenly, any more than a bunch of grapes or a fig. If you tell me that you desire a fig, I answer you that there must be time. Let it first blossom, then bear fruit, then ripen.",
    "Were I a nightingale, I would act the part of a nightingale; were I a swan, the part of a swan.",
    "If what the philosophers say be true,—that all men's actions proceed from one source; that as they assent from a persuasion that a thing is so, and dissent from a persuasion that it is not, and suspend their judgment from a persuasion that it is uncertain,—so likewise they seek a thing from a persuasion that it is for their advantage.",
    "Practice yourself, for heaven's sake, in little things; and thence proceed to greater.",
    "It is unlikely that the good of a snail should reside in its shell: so is it likely that the good of a man should?",
    "It is difficulties that show what men are.",
    "Appearances to the mind are of four kinds. Things either are what they appear to be; or they neither are, nor appear to be; or they are, and do not appear to be; or they are not, and yet appear to be. Rightly to aim in all these cases is the wise man's task.",
    "Whatever you would make habitual, practice it; and if you would not make a thing habitual, do not practice it, but accustom yourself to something else."
  ];

  static List<String> catoQuotes = [
    '''A honest man is seldom a vagrant.''',
    '''After I'm dead I'd rather have people ask why I have no monument than why I have one.''',
    '''All have the gift of speech, but few are possessed of wisdom.''',
    "An angry man opens his mouth and shuts his eyes.",
    "Bitter are the roots of study, but how sweet their fruit.",
    "Blessed be they as virtuous, who when they feel their virile members swollen with lust, visit a brothel rather than grind at some husband's private mill.",
    "Consider in silence whatever any one says: speech both conceals and reveals the inner soul of man.",
    "Consider it the greatest of all virtues to restrain the tongue.",
    "Don't promise twice what you can do at once.",
    "Flee sloth; for the indolence of the soul is the decay of the body.",
    "I will begin to speak, when I have that to say which had not better be unsaid.",
    "In doing nothing men learn to do evil.",
    "Old age isn't so bad when you consider the alternatives.",
    "Regard not dreams, since they are but the images of our hopes and fears.",
    "Speak briefly and to the point.",
    "The best way to keep good acts in memory is to refresh them with new.",
    "Those magistrates who can prevent crime, and do not, in effect encourage it.",
    "Wise men are more dependent on fools than fools on wise men."
  ];

  static List<String> chrysippusQuotes = [
    "Living virtuously is equal to living in accordance with one's experience of the actual course of nature.",
    "Wise people are in want of nothing, and yet need many things. On the other hand, nothing is needed by fools, for they do not understand how to use anything, but are in want of everything.",
    "He who is running a race ought to endeavor and strive to the utmost of his ability to come off victor; but it is utterly wrong for him to trip up his competitor, or to push him aside. So in life it is not unfair for one to seek for himself what may accrue to his benefit; but it is not right to take it from another.",
    "If I had followed the multitude, I should not have studied philosophy.",
    "If I knew that it was fated for me to be sick, I would even wish for it; for the foot also, if it had intelligence, would volunteer to get muddy.",
    "The universe itself is God and the universal outpouring of its soul",
    "We should infer in the case of a beautiful dwelling-place that it was built for its owners and not for mice; we ought, therefore, in the same way to regard the universe as the dwelling-place of the gods."
  ];

  static List<String> cleanthesQuotes = [
    '''Lead me on, O Zeus, and thou Destiny,

To that goal long ago to me assigned.

I’ll follow readily but if my will prove weak;

Wretched as I am, I must follow still.

Fate guides the willing, but drags the unwilling.''',
    "Conduct me, Jove, and you, O Destiny, / Wherever your decrees have fixed my station.",
    "The Fates guide the person who accepts them and hinder the person who resists them."
  ];

  static List<String> gaiusQuotes = [
    "Being good is the same as being a philosopher. If you obey your father, you will follow the will of a man; if you choose the philosopher's life, the will of God. It is plain, therefore, that your duty lies in the pursuit of philosophy.",
    "Choose to die well while you can; wait too long, and it might become impossible to do so.",
    "For mankind, evil is injustice and cruelty and indifference to a neighbor’s trouble, while virtue is brotherly love and goodness and justice and beneficence and concern for the welfare of your neighbor.",
    "For what does the man who accepts insult do that is wrong? It is the doer of wrong who puts themselves to shame-the sensible man wouldn't go to the law, since he wouldn't even consider that he had been insulted!",
    '''  Besides, to be annoyed or angered about such things would be petty-instead easily and silently bear what has happened, since this is appropriate for those whose purpose is to be noble-minded.''',
    "From good people you’ll learn good, but if you mingle with the bad you’ll destroy such soul as you had.",
    "Generally speaking, if you devote yourself to the life of philosophy, whilst tilling the land at the same time, I couldn’t compare it to any other way of life, nor would I prefer any other livelihood.",
    "Humanity must seek what is not simple and obvious using the simple and obvious.",
    "If we were to measure what is good by how much pleasure it brings, nothing would be better than self-control- if we were to measure what is to be avoided by its pain, nothing would be more painful than lack of self-control.",
    "If you accomplish something good with hard work, the labor passes quickly, but the good endures.",
    "If you do something shameful in pursuit of pleasure, the pleasure passes quickly, but the shame endures.",
    "If you choose death because it is the greater evil, what sense is there in that? Or if you choose it as the lesser-evil, remember who gave you the choice. Why not try coming to terms with what you have been given?",
    "In our control is the most beautiful and important thing, the thing because of which even the god himself is happy— namely, the proper use of our impressions. We must concern ourselves absolutely with the things that are under our control and entrust the things not in our control to the universe.",
    "Indeed, how could exile be an obstacle to person’s own cultivation, or to attaining virtue when no one has ever been cut off from learning or practicing what is needed by exile?",
    "It is living more in accord with nature-drawing your sustenance directly from the earth-the nurse and mother of us all-rather than from another source.",
    "It is not possible to live well today unless you treat it as your last day.",
    "It is widely held that we'll be despised by others if we don't try hard to hurt the first enemies we meet – this is the mark of cold-hearted, ignorant individuals.",
    "We say that the detestable person is recognized (among other things) by their inability to harm their enemies – actually, they are much more easily recognized by their inability to help them.",
    "Just as plants receive nourishment for survival, not pleasure – for humans, food is the medicine of life.",
    "Therefore it is appropriate for us to eat for living, not pleasure, especially if we want to follow the wise words of Socrates, who said \"Most men live to eat; I eat to live.\"",
    "Just as there is no use in medical study unless it leads to the health of the human body, so there is no use to a philosophical doctrine unless it leads to the virtue of the human soul.",
    "Most of all, teachers shouldn't only be speakers of helpful words, but their actions should be consistent with them. The pupil's duty is to attend pro-actively to what is said, and to be on guard in case they accept something false without thinking.",
    '''Of the things that exist, God has put some in our control, others not in our control. In our control he has put the noblest and most excellent part by reason of which He is Himself happy, the power of using our impressions. For when this is correctly used, it means serenity, cheerfulness, constancy; it also means justice and law and self-control and virtue as a whole. But all other things He has not put in our control. Therefore we ought to become of like mind with God and, dividing things in like manner, we ought in every way to lay claim to the things that are in our control, but what is not in our control we ought to entrust to the universe and gladly yield to it whether it asks for our children, our country, our body, or anything whatsoever.''',
    "Only by exhibiting actions in harmony with the sound words which he has received will anyone be helped by philosophy.",
    "Others have been in poor health from overindulgence and high living, before exile has provided strength, forcing them to live a more vigorous life.",
    "Since every man dies, it is better to die with distinction than to live long.",
    "Since it so happens that the human being is not soul alone, nor body alone, but a kind of synthesis of the two, the person in training must take care of both, the better part, the soul, more zealously; as is fitting, but also of the other, if he shall not be found lacking in any part that constitutes man.",
    "That God who made man provided him food and drink for the sake of preserving his life and not for giving him pleasure, one can see very well from this: when food is performing its real function, it does not produce pleasure for man, that is in the process of digestion and assimilation.",
    '''The best livelihood (particularly for the strong) is earning a living from the soil, whether you own your land or not. Many can support their families by farming land owned by the state or private landowners. Some even get rich through hard work with their own hands.
The earth repays those who cultivate her, both justly and well, multiplying what she received – endowing in abundance all the necessities of life to anyone willing to work-and all this without violating your dignity or self-respect!''',
    "The human being is born with an inclination toward virtue.",
    "To accept injury without a spirit of savage resentment-to show ourselves merciful toward those who wrong us-being a source of good hope to them-is characteristic of a benevolent and civilized way of life.",
    "To many people, even to most, despite living safely in their home city, fear of what seem to them the dire consequences of free speech is present.",
    "The courageous, in exile or at home, is fearless in the face of all such threats; for that reason they've the courage to say what they think equally at home or in exile.",
    "Virtue is not simply theoretical knowledge, but it is practical application as well. So a man who wishes to become good not only must be thoroughly familiar with the precepts which are conducive to virtue but must also be earnest and zealous in applying these principles.",
    "We begin to lose our hesitation to do immoral things when we lose our hesitation to speak of them.",
    "Wealth is able to buy the pleasures of eating, drinking and other sensual pursuits-yet can never afford a cheerful spirit or freedom from sorrow.",
    "What good are gilded rooms or precious stones-fitted on the floor, inlaid in the walls, carried from great distances at the greatest expense? These things are pointless and unnecessary-without them isn’t it possible to live healthy? Aren’t they the source of constant trouble? Don’t they cost vast sums of money that, through public and private charity, may have benefited many?",
    "Why do we criticize tyrants, when in fact we are much worse than they are? We have the same inclinations as they do; we just lack opportunities to act on them.",
    "You will earn the respect of all if you begin by earning the respect of yourself. Don't expect to encourage good deeds in people conscious of your own misdeeds."
  ];

  static List<String> senecaQuotes = [
    "Of war men ask the outcome, not the cause.",
    "Once again prosperous and successful crime goes by the name of virtue; good men obey the bad, might is right and fear oppresses law.",
    "'Tis the first art of kings, the power to suffer hate.",
    "Arms observe no bounds; nor can the wrath of the sword, once drawn, be easily checked or stayed; war delights in blood.",
    "Who can be forced has not learned how to die.",
    "Things that were hard to bear are sweet to remember.",
    "A good mind possesses a kingdom.",
    "Death weighs on him who is known to all, but dies unknown to himself.",
    "Who profits by a sin has done the sin.",
    "What man can you show me who places any value on his time, who reckons the worth of each day, who understands that he is dying daily?",
    "For we are mistaken when we look forward to death; the major portion of death has already passed. Whatever years be behind us are in death's hands.",
    "The primary indication, to my thinking, of a well-ordered mind is a man’s ability to remain in one place and linger in his own company.",
    "It is not the man who has too little, but the man who craves more, that is poor.",
    "For love of bustle is not industry – it is only the restlessness of a hunted mind.",
    "No man can have a peaceful life who thinks too much about lengthening it.",
    "I commend you and rejoice in the fact that you are persistent in your studies, and that, putting all else aside, you make it each day your endeavour to become a better man.",
    "Of course, however, the living voice and the intimacy of a common life will help you more than the written word. You must go to the scene of action, first, because men put more faith in their eyes than in their ears, and second, because the way is long if one follows precepts, but short and helpful, if one follows patterns.",
    "But both courses are to be avoided; you should not copy the bad simply because they are many, nor should you hate the many because they are unlike you.",
    "Live among men as if God beheld you; speak with God as if men were listening.",
    "Armies have endured all manner of want, have lived on roots, and have resisted hunger by means of food too revolting to mention. All this they have suffered to gain a kingdom, and—what is more marvellous—to gain a kingdom that will be another’s. Will any man hesitate to endure poverty, in order that he may free his mind from madness?",
    "If you would not have a man flinch when the crisis comes, train him before it comes.",
    "A trifling debt makes a man your debtor; a large one makes him an enemy.",
    "Prove your words by your deeds.",
    "What is wisdom? Always desiring the same things, and always refusing the same things.",
    "Men do not care how nobly they live, but only how long, although it is within the reach of every man to live nobly, but within no man's power to live long.",
    "You will thus understand that what you fear is either insignificant or short-lived.",
    "Remember, however, before all else, to strip things of all that disturbs and confuses, and to see what each is at bottom; you will then comprehend that they contain nothing fearful except the actual fear.",
    "I do not know whether I shall make progress; but I should prefer to lack success rather than to lack faith.",
    "I forbid you to be cast down or depressed. It is not enough if you do not shrink from work; ask for it.",
    "Would you know what makes men greedy for the future? It is because no one has yet found himself.",
    "Besides, he who follows another not only discovers nothing but is not even investigating.",
    "What then? Shall I not follow in the footsteps of my predecessors? I shall indeed use the old road, but if I find one that makes a shorter cut and is smoother to travel, I shall open the new road. Men who have made these discoveries before us are not our masters, but our guides. Truth lies open for all; it has not yet been monopolized. And there is plenty of it left even for posterity to discover.",
    "It is the quality of a great soul to scorn great things and to prefer that which is ordinary rather than that which is too great.",
    "Then it is that the height of unhappiness is reached, when men are not only attracted, but even pleased, by shameful things, and when there is no longer any room for a cure, now that those things which once were vices have become habits.",
    "If you see a man who is unterrified in the midst of dangers, untouched by desires, happy in adversity, peaceful amid the storm, who looks down upon men from a higher plane, and views the gods on a footing of equality, will not a feeling of reverence for him steal over you, will you not say: “This quality is too great and too lofty to be regarded as resembling this petty body in which it dwells? A divine power has descended upon that man.",
    "Very often the things that cost nothing cost us the most heavily; I can show you many objects the quest and acquisition of which have wrested freedom from our hands.",
    '''“You will have less money.” Yes, and less trouble. “Less influence.” Yes, and less envy.''',
    "He that owns himself has lost nothing. But how few men are blessed with ownership of self!",
    "Treat your inferiors as you would be treated by your betters.",
    "Would you really know what philosophy offers to humanity? Philosophy offers counsel.",
    "For what else are you busied with except improving yourself every day, laying aside some error, and coming to understand that the faults which you attribute to circumstances are in yourself?",
    "And what is freedom, you ask? It means not being a slave to any circumstance, to any constraint, to any chance; it means compelling Fortune to enter the lists on equal terms.",
    "The conclusion is, not that hardships are desirable, but that virtue is desirable, which enables us patiently to endure hardships.",
    "It may include the chest in which Regulus was confined, or the wound of Cato which was torn open by Cato’s own hand, or the exile of Rutilius, or the cup of poison which removed Socrates from gaol to heaven.",
    "It is better, of course, to know useless things than to know nothing.",
    "We are mad, not only individually, but nationally. We check manslaughter and isolated murders; but what of war and the much-vaunted crime of slaughtering whole peoples?",
    "Do not hope without despair, or despair without hope.",
    "Our lack of confidence is not the result of difficulty. The difficulty comes from our lack of confidence.",
    "Apply reason to difficulties; harsh circumstances can be softened, narrow limits can be widened, and burdensome things can be made to press less severely on those who bear them cleverly."
  ];

  static List<String> marcusAureliusQuotes = [
    "When you wake up in the morning, tell yourself: The people I deal with today will be meddling, ungrateful, arrogant, dishonest, jealous, and surly. They are like this because they can't tell good from evil.",
    "He was a man who looked at what ought to be done, not to the reputation which is got by a man's acts.",
    "The universe is change; our life is what our thoughts make it.",
    "Be not as one that hath ten thousand years to live; death is nigh at hand: while thou livest, while thou hast time, be good.",
    "I shall meet today inquisitive, ungrateful, violent, treacherous, envious, uncharitable men. All these things have come upon them through ignorance of real good and ill.",
    "An angry countenance is much against nature...But were it so, that all anger and passion were so thoroughly quenched in thee, that it were altogether impossible to kindle it any more, yet herein must not thou rest satisfied, but further endeavour by good consequence of true ratiocination, perfectly to conceive and understand, that all anger and passion is against reason.",
    "You will find rest from vain fancies if you perform every act in life as though it were your last.",
    "Constantly regard the universe as one living being, having one substance and one soul; and observe how all things have reference to one perception, the perception of this one living being.",
    "Search men's governing principles, and consider the wise, what they shun and what they cleave to.",
    "Everywhere and at all times it is in thy power piously to acquiesce in thy present condition, and to behave justly to those who are about thee, and to exert thy skill upon thy present thoughts, that nothing shall steal into them without being well examined.",
    "Whatever may befall you, it was preordained for you from everlasting.",
    "A wrongdoer is often a man who has left something undone, not always one who has done something.",
    "Everything harmonizes with me, which is harmonious to thee, O Universe. Nothing for me is too early or too late, which is in due time for thee.",
    "Rememberest the gods, and that they wish not to be flattered, but wish all reasonable beings to be made like themselves"
  ];

  static List<String> zenoQuotes = [
    "Happiness is a good flow of life.",
    "No one entrusts a secret to a drunken man; but one will entrust a secret to a good man; therefore, the good man will not get drunk.",
    "The end may be defined as life in accordance with nature or, in other words, in accordance with our own human nature as well as that of the universe.",
    "Love is a God, who cooperates in securing the safety of the city.",
    "All the good are friends of one another.",
    "We have two ears and one mouth, so we should listen more than we say.",
    "No evil is honorable; but death is honorable; therefore death is not evil.",
    "A bad feeling is a commotion of the mind repugnant to reason, and against nature.",
    "That which exercises reason is more excellent than that which does not exercise reason; there is nothing more excellent than the universe, therefore the universe exercises reason.",
    "If melodiously piping flutes sprang from the olive, would you doubt that a knowledge of flute-playing resided in the olive? And what if plane trees bore harps which gave forth rhythmical sounds? Clearly you would think in the same way that the art of music was possessed by plane trees. Why, then, seeing that the universe gives birth to beings that are animate and wise, should it not be considered animate and wise itself?"
  ];

  static List<String> aeschinesQuotes = [
    'Lying rumours do not penetrate farther than our ears.',
    'Truth is strong enough to overcome all human sophistries.',
    'For at a congress of the Lacedaemonian allies and the other Greeks, in which Amyntas, the father of Philip, being entitled to a seat, was represented by a delegate whose vote was absolutely under his control, he joined the other Greeks in voting to help Athens to recover possession of Amphipolis. As proof of this I presented from the public records the resolution of the Greek congress and the names of those who voted.',
    'The man who is unprincipled in private life will never make a good public servant, nor will one who is of no account at home prove a man of light and leading with the embassy in Macedonia; for he has only changed his abode, not his nature.',
    'He is specially deserving of our hatred, in that being wicked he has all the outward signs of virtue.',
    'An evil nature wielding great authority brings misfortune upon the community.',
    'Right is not unlimited, but is limited by the laws.'
  ];

  static List<String> aeschylusQuotes = [
    '''So in the Libyan fable it is told 
    That once an eagle, stricken with a dart,
    Said, when he saw the fashion of the shaft,
    \"With our own feathers, not by others' hands,
    Are we now smitten.\"''',
    '''Of all the gods, Death only craves not gifts:
    Nor sacrifice, nor yet drink-offering poured
    Avails; no altars hath he, nor is soothed
    By hymns of praise. From him alone of all
    The powers of heaven Persuasion holds aloof.''',
    '''O Death the Healer, scorn thou not, I pray,
To come to me: of cureless ills thou art
The one physician. Pain lays not its touch
Upon a corpse.''',
    '''A prosperous fool is a grievous burden.''',
    '''Bronze is the mirror of the form; wine, of the heart''',
    '''It is not the oath that makes us believe the man, but the man the oath.''',
    '''Wealth itself is blameless, but there can be fear for its precious eye; for I consider the presence of a house's master to be its saving light.''',
    '''My friends, anyone with real experience of trouble knows how, when a surge of it comes upon them, they are apt to fear everything; but when fortune's tide is good, they trust that the same breeze will blow favourably for ever.''',
    "Mankind's troubles flicker about, and you'll nowhere see misery fly on the same wings.",
    '''Learn to know thy heart,
    And, as the times, so let thy manners change,
    For by the law of change a new God rules.''',
    "Words are the physicians of a mind diseased.",
    "For it would be better to die once and for all than to suffer pain for all one's life.",
  ];


  static List<String> aesopQuotes = [
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

  static List<String> agathonQuotes =[
    'Even God cannot change the past.',
    'Art loves chance, and chance loves art.',
    'It is a part of probability that many improbable things will happen.',
    'Every ruler must remember three things. Firstly, that he rules man; secondly, that he rules according to law, and thirdly, that he does not rule for ever.',
  ];

  static List<String> agesilausQuotes = [
    'Royalty consists not in vain pomp, but in great virtues',
    'If I have done any deed worthy of remembrance, that deed will be my monument. If not, no monument can preserve my memory.',
    'If I have done any honorable exploit, that is my monument; but if I have done none, all your statues will signify nothing.',
    'Valor would cease to be a virtue, if there were no injustice.',
    'By sowing frugality we reap liberty, a golden harvest.',
    'If all men were just there would be no need of valor.',
    'I shall show that the place does not honor the man, but the man the place.'
  ];

  static List<String> alcaeusQuotes = [
    '''Not in hewn stones, nor in well-fashioned beams,
Not in the noblest of the builder's dreams,
But in courageous men of purpose great,
There is the fortress, there the living State.''',
    '''O violet-tressed Sappho chaste,
O maid with honeyed smile!
I fain would tell what is in my breast,
Did shame me not beguile.''',
  ];

  static List<String> alexanderQuotes = [
    'Are you still to learn that the end and perfection of our victories is to avoid the vices and infirmities of those whom we subdue?',
    'Holy shadows of the dead, I’m not to blame for your cruel and bitter fate, but the accursed rivalry which brought sister nations and brother people, to fight one another. I do not feel happy for this victory of mine. On the contrary, I would be glad, brothers, if I had all of you standing here next to me, since we are united by the same language, the same blood and the same visions.',
    'Now you fear punishment and beg for your lives, so I will let you free, if not for any other reason so that you can see the difference between a Greek king and a barbarian tyrant, so do not expect to suffer any harm from me. A king does not kill messengers.',
    'There is nothing impossible to him who will try.',
    'Shall I pass by and leave you lying there because of the expedition you led against Greece, or shall I set you up again because of your magnanimity and your virtues in other respects?',
    'For my part, I assure you, I had rather excel others in the knowledge of what is excellent, than in the extent of my power and dominion.',
    'For as a newborn babe cannot be nourished without the nurse\'s milk, nor conducted to the approaches that lead to growth in life, so a city cannot thrive without fields and the fruits thereof pouring into its walls.',
  ];

  static List<String> anacreonQuotes = [
    '''To-day belongs to me,
To-morrow who can tell.''',
    '''The black earth drinks, in turn
The trees drink up the earth.
The sea the torrents drinks, the sun the sea,
And the moon drinks the sun.
Why, comrades, do ye flout me,
If I, too, wish to drink?''',
    '''Nature gave horns to the bull,
Hoofs gave she to the horse.
To the lion cavernous jaws,
And swiftness to the hare.
The fish taught she to swim,
The bird to cleave the air;
To man she reason gave;
Not yet was woman dowered.
What, then, to woman gave she?
The priceless gift of beauty.
Stronger than any buckler,
Than any spear more piercing.
Who hath the gift of beauty.
Nor fire nor steel shall harm her.''',
    '''Ah, cruel 'tis to love,
And cruel not to love,
But cruelest of all
To love and love in vain.''',
    '''Love for lineage nothing cares.
Tramples wisdom under foot.
Worth derides, and only looks
For money.''',
    '''Cursed be he above all others
Who's enslaved by love of money.
Money takes the place of brothers,
Money takes the place of parents.
Money brings us war and slaughter.''',
    '''Whence can we the future learn?
Life to mortals is obscure.''',
    '''But when an old man dances,
His locks with age are grey.
But he's a child in mind.''',
    '''E'en though I would not, die I must;
Why stray I thus through life?''',
    '''And last of all comes death.'''
  ];

  static List<String> anaxagorasQuotes = [
    "Wrongly do the Greeks suppose that aught begins or ceases to be; for nothing comes into being or is destroyed; but all is an aggregation or secretion of pre-existent things: so that all-becoming might more correctly be called becoming-mixed, and all corruption, becoming-separate.",
    "All things were together, infinite both in number and in smallness; for the small too was infinite.",
    "And since these things are so, we must suppose that there are contained many things and of all sorts in the things that are uniting, seeds of all things, with all sorts of shapes and colours and savours.",
    "Mind is infinite and self-ruled, and is mixed with nothing, but is alone itself by itself.",
    "Thought is something limitless and independent, and has been mixed with no thing but is alone by itself. ... What was mingled with it would have prevented it from having power over anything in the way in which it does. ... For it is the finest of all things and the purest.",
    "The Greeks follow a wrong usage in speaking of coming into being and passing away; for nothing comes into being or passes away, but there is mingling and separation of things that are. So they would be right to call coming into being mixture, and passing away separation.",
    "The sun provides the moon with its brightness."
  ];

  static List<String> anaximanderQuotes = [
    '''There cannot be a single, simple body which is infinite, either, as some hold, one distinct from the elements, which they then derive from it, nor without this qualification. For there are some who make this (i.e. a body distinct from the elements) the infinite, and not air or water, in order that the other things may not be destroyed by their infinity. They are in opposition one to another — air is cold, water moist, and fire hot—and therefore, if any one of them were infinite, the rest would have ceased to be by this time. Accordingly they say that what is infinite is something other than the elements, and from it the elements arise.''',
    '''The Earth is cylindrical, three times as wide as it is deep, and only the upper part is inhabited. But this Earth is isolated in space, and the sky is a complete sphere in the center of which is located, unsupported, our cylinder, the Earth, situated at an equal distance from all the points of the sky.'''
  ];

  static List<String> antisthenesQuotes = [
    "The investigation of the meaning of words is the beginning of education.",
    "I'd rather be mad than feel pleasure.",
    "It is a royal privilege to do good and be ill spoken of.",
    "It is better to fall in with crows than with flatterers; for in the one case you are devoured when dead, in the other case while alive.",
    "States are doomed when they are unable to distinguish good men from bad.",
    "As iron is eaten away by rust, so the envious are consumed by their own passion.",
    "Ill repute is a good thing and much the same as pain.",
    "It is better to fight with a few good men against all the wicked, than with many wicked men against a few good men.",
    "One should attend to one's enemies, for they are the first persons to detect one's errors.",
    "Virtue is the same for a man and for a woman.",
    "Wealth and poverty do not lie in a person's estate, but in their souls.",
    "I have enough to eat till my hunger is stayed, to drink till my thirst is sated; to clothe myself withal; and out of doors not Callias there, with all his riches, is more safe than I from shivering; and when I find myself indoors, what warmer shirting do I need than my bare walls? what ampler greatcoat than the tiles above my head?",
    "There is no work so mean, but it would amply serve me to furnish me with sustenance.",
    "To all my friends without distinction I am ready to display my opulence: come one, come all; and whosoever likes to take a share is welcome to the wealth that lies within my soul."
  ];

  static List<String> archilochusQuotes = [
    '''One of the Saians (Thracian tribe) now delights in the shield I discarded
Unwillingly near a bush, for it was perfectly good,
But at least I got myself safely out. Why should I care for that shield?
Let it go. Some other time I'll find another no worse.''',
    '''I am the servant of Lord Enyalios [Ares, god of war],
and skilled in the lovely gift of the Muses.''',
    '''For of the two poets who for all time deserve to be compared with no other, namely Homer and Archilochus, Homer praised nearly everything...But Archilochus went to the opposite extreme, to censure, seeing, I suppose, that men are in greater need of this, and first of all he censures himself...", thus winning for himself "...the highest commendation from heaven.''',
    '''My Soul, my Soul, all disturbed by sorrows inconsolable,
Bear up, hold out, meet front-on the many foes that rush on you
Now from this side and now that, enduring all such strife up close,
Never wavering; and should you win, don't openly exult,
Nor, defeated, throw yourself lamenting in a heap at home,
But delight in things that are delightful and, in hard times, grieve
Not too much—appreciate the rhythm that controls men's lives.''',
    "Keep some measure in the joy you take in luck, and the degree you give way to sorrow."
  ];

  static List<String> archimedesQuotes = [
    "Give me the place to stand, and I shall move the earth.",
    "Those who claim to discover everything but produce no proofs of the same may be confuted as having actually pretended to discover the impossible.",
    "Mathematics reveals its secrets only to those who approach it with pure love, for its own beauty.",
    "He who knows how to speak, knows also when."
  ];

  static List<String> aristippusQuotes = [
    "To endeavour to adapt circumstances to myself, not myself to circumstances",
    "Every complexion of life, every station and circumstance sat gracefully upon him.",
    "It is not abstinence from pleasures that is best, but mastery over them without ever being worsted",
    "Wise people, even though all laws were abolished, would still lead the same life",
  ];

  static List<String> aristophanesQuotes = [
    "Men of sense often learn from their enemies.",
    "It is from their foes, not their friends, that cities learn the lesson of building high walls and ships of war.",
    "Man naturally is deceitful, ever indeed, and always, in every one thing.",
    "Weak mortals, chained to the earth, creatures of clay as frail as the foliage of the woods, you unfortunate race, whose life is but darkness, as unreal as a shadow, the illusion of a dream.",
    "Words give wings to the mind and make a man soar to heaven.",
    "I pained folk but little and caused them much amusement; my conscience rebuked me for nothing.",
    "Comedy too can sometimes discern what is right. I shall not please, but I shall say what is true."
  ];

  static List<String> aristotleQuotes = [
    "My lectures are published and not published; they will be intelligible to those who heard them, and to none beside.",
    "Knowledge of the fact differs from knowledge of the reason for the fact.",
    '''All men by nature desire to know. An indication of this is the delight we take in our senses; for even apart from their usefulness they are loved for themselves; and above all others the sense of sight. For not only with a view to action, but even when we are not going to do anything, we prefer sight to almost everything else. The reason is that this, most of all the senses, makes us know and brings to light many differences between things.''',
    "That which is desirable on its own account and for the sake of knowing it is more of the nature of wisdom than that which is desirable on account of its results.",
    "If, then, God is always in that good state in which we sometimes are, this compels our wonder; and if in a better this compels it yet more. And God is in a better state. And life also belongs to God; for the actuality of thought is life, and God is that actuality; and God's self-dependent actuality is life most good and eternal.",
    "Those who assert that the mathematical sciences say nothing of the beautiful or the good are in error. For these sciences say and prove a great deal about them; if they do not expressly mention them, but prove attributes which are their results or definitions, it is not true that they tell us nothing about them. The chief forms of beauty are order and symmetry and definiteness, which the mathematical sciences demonstrate in a special degree.",
    "If there is some end of the things we do, which we desire for its own sake, clearly this must be the good. Will not knowledge of it, then, have a great influence on life? Shall we not, like archers who have a mark to aim at, be more likely to hit upon what we should? If so, we must try, in outline at least, to determine what it is.",
    "It is the mark of an educated man to look for precision in each class of things just so far as the nature of the subject admits; it is evidently equally foolish to accept probable reasoning from a mathematician and to demand from a rhetorician scientific proofs.",
    "Piety requires us to honor truth above our friends.",
    "Human good turns out to be activity of soul in accordance with virtue, and if there are more than one virtue, in accordance with the best and most complete.",
    "For one swallow does not make a summer, nor does one day; and so too one day, or a short time, does not make a man blessed and happy.",
    "We must act in the same way, then, in all other matters as well, that our main task may not be subordinated to minor questions. Nor must we demand the cause in all matters alike; it is enough in some cases that the fact be well established, as in the case of the first principles; the fact is the primary thing or first principle.",
    "Everything that depends on the action of nature is by nature as good as it can be.",
    "When people are friends, they have no need of justice, but when they are just, they need friendship in addition.",
    "For we are busy that we may have leisure, and make war that we may live in peace."
        "The best friend is the man who in wishing me well wishes it for my sake."
  ];

  static List<String> biasQuotes = [
    "Great riches come to many men by chance.",
    "Choose the course which you adopt with deliberation; but when you have adopted it, then persevere in it with firmness.",
    "Do not speak fast, for that shows folly.",
    "Love prudence.",
    "Speak of the Gods as they are.",
    "Accept of things, having procured them by persuasion, not by force.",
    "Whatever good fortune befalls you, attribute it to the gods.",
    "Cherish wisdom as a means of travelling from youth to old age, for it is more lasting than any other possession.",
    '''Seek to please all the citizens, even though
Your house may be in an ungracious city.
For such a course will favour win from all:
But haughty manners oft produce destruction.''',
    '''Great strength of body is the gift of nature;
But to be able to advise whate'er
Is most expedient for one's country's good,
Is the peculiar work of sense and wisdom.''',
    "Most men are wicked."
  ];

  static List<String> bionQuotes = [
    "Good slaves are free, but bad free men are slaves of many passions.",
    "How stupid it was for the king to tear out his hair in grief, as if baldness were a cure for sorrow.",
    "Boys throw stones at frogs in fun, but the frogs do not die in fun, but in earnest.",
    "Love of money is the mother-city (metropolis) of all evils.",
    "Just as the good actor perform well whatever role the poet assigns, so too must the good man perform whatever Fortune assigns. For she, says Bion, just like a poet, sometimes assigns the leading role, sometimes that of the supporting role; sometimes that of a king, sometimes that of a beggar. Do not, therefore, being a supporting actor, desire the role of the lead.",
    "Therefore we should not try to alter circumstances but to adapt ourselves to them as they really are, just as sailors do. They don't try to change the winds or the sea but ensure that they are always ready to adapt themselves to conditions. In a flat calm they use the oars; with a following breeze they hoist full sail; in a head wind they shorten sail or heave to. Adapt yourself to circumstances in the same way.",
    "Old age is the harbor of all ills.",
    "Wealth is the sinews of success.",
    "The road to Hades is easy to travel; at any rate men pass away with their eyes shut.",
    "Self-conceit is the enemy of progress.",
  ];

  static List<String> chilonQuotes = [
    "Seek no excess﻿—all timely things are good.",
    '''Gold is best tested by a whetstone hard,
Which gives a certain proof of purity;
And gold itself acts as the test of men,
By which we know the temper of their minds.''',
    "Threaten no one; for that is a womanly trick.",
    "Be more prompt to go to one’s friends in adversity than in prosperity.",
    "Do not speak evil of the dead.",
    "Honor old age.",
    "Prefer punishment to disgraceful gain; for the one is painful but once, but the other for one’s whole life.",
    "To rule one’s tongue, especially at a banquet, and not to speak ill of one’s neighbors; for if one does so one is sure to hear what one will not like.",
    "A sole governor is in a slippery position at home; and I consider that tyrant a fortunate man who dies a natural death in his own house.",
  ];

  static List<String> cleobulusQuotes = [
    '''I am a brazen maiden lying here
Upon the tomb of Midas. And as long
As water flows, as trees are green with leaves,
As the sun shines and eke the silver moon,
As long as rivers flow, and billows roar,
So long will I upon this much wept tomb,
Tell passers by, "Midas lies buried here.''',
    "Ignorance and talkativeness bear the chief sway among men.",
    "Cherish not a thought.",
    "Be fond of hearing rather than of talking.",
    "Seek virtue and eschew vice.",
    "Be superior to pleasure.",
    "Be ready for reconciliation after quarrels.",
    "Avoid injustice.",
    "Moderation is the best thing.",
    "Do nothing by force."
  ];

  static List<String> critiasQuotes = [
    '''No matter how hard you fight the darkness, every light casts a shadow, and the closer you get to the light, the darker that shadow becomes.''',
    "Nevertheless I must say what I was told. It was excavated to the depth of a hundred feet, and its breadth was a stadium everywhere; it was carried round the whole of the plain, and was ten thousand stadia in length.",
    "But when the divine portion began to fade away, and became diluted too often and too much with the mortal admixture, and the human nature got the upper hand, they then, being unable to bear their fortune, behaved unseemly, and to him who had an eye to see grew visibly debased, for they were losing the fairest of their precious gifts; but to those who had no eye to see the true happiness, they appeared glorious and blessed at the very time when they were full of avarice and unrighteous power."
  ];

  static List<String> democritusQuotes = [
    "We know nothing accurately in reality, but [only] as it changes according to the bodily condition, and the constitution of those things that flow upon [the body] and impinge upon it.",
    "Medicine heals diseases of the body, wisdom frees the soul from passions.",
    "Man is a universe in little.",
    "Many much-learned men have no intelligence.",
    "Immoderate desire is the mark of a child, not a man.",
    "Men have fashioned an image of Chance as an excuse for their own stupidity. For Chance rarely conflicts with intelligence, and most things in life can be set in order by an intelligent sharpsightedness.",
    "Education is an ornament for the prosperous, a refuge for the unfortunate.",
    "Beautiful objects are wrought by study through effort, but ugly things are reaped automatically without toil.",
    "The animal needing something knows how much it needs, the man does not.",
    "Moderation multiplies pleasures, and increases pleasure.",
    "The laws would not prevent each man from living according to his inclination, unless individuals harmed each other; for envy creates the beginning of strife.",
    "If your desires are not great, a little will seem much to you; for small appetite makes poverty equivalent to wealth.",
    "Not from fear but from a sense of duty refrain from your sins."
  ];

  static List<String> demosthenesQuotes = [
    "The easiest thing in the world is self-deceit; for every man believes what he wishes, though the reality is often different.",
    "The readiest and surest way to get rid of censure, is to correct ourselves.",
    "It is not possible to found a lasting power upon injustice, perjury, and treachery.",
    "No man can tell what the future may bring forth, and small opportunities are often the beginning of great enterprises.",
    "The man who has received a benefit ought always to remember it, but he who has granted it ought to forget the fact at once.",
    "Every advantage in the past is judged in the light of the final issue.",
    "Whatever shall be to the advantage of all, may that prevail!",
    "You cannot have a proud and chivalrous spirit if your conduct is mean and paltry; for whatever a man's actions are, such must be his spirit."
  ];

  static List<String> diogenesQuotes = [
    '''When the slave auctioneer asked in what he was proficient, he replied, "In ruling men."''',
    '''He pointed to a certain Corinthian with a fine purple border to his robe ... and said, “Sell me to this man; he needs a master.”''',
    '''Once he saw the officials of a temple leading away someone who had stolen a bowl belonging to the treasurers, and said, "The great thieves are leading away the little thief."''',
    '''He was seized and dragged off to King Philip, and being asked who he was, replied, "A spy upon your insatiable greed."''',
    '''When Alexander the Great addressed him with greetings, and asked if he wanted anything, Diogenes replied "Yes, stand a little out of my sunshine."''',
    "Virtue cannot dwell with wealth either in a city or in a house.",
    '''He lit a lamp in broad daylight and said, as he went about, "I am looking for a human."''',
    "It is not that I am mad, it is only that my head is different from yours",
    "I wish it were as easy to banish hunger by rubbing the belly.",
    "I am a citizen of the world.",
    "Other dogs bite only their enemies, whereas I bite also my friends in order to save them.",
    "Poverty is a virtue which one can teach oneself"
  ];

  static List<String> epicharmusQuotes = [
    '''As the bright sun excels the other stars,
As the sea far exceeds the river streams:
So does sage Epicharmus men surpass,
Whom hospitable Syracuse has crowned.''',
    "A mortal should think mortal thoughts, not immortal thoughts.",
    "The best thing a man can have, in my view, is health.",
    "The hand washes the hand: give something and you may get something.",
    "Don't forget to exercise incredulity; for it is the sinews of the soul."
  ];

  static List<String> euclidQuotes = [
    "Give him threepence, since he must make gain out of what he learns.",
    "There is no royal road to geometry.",
    "The laws of nature are but the mathematical thoughts of God.",
    "What has been affirmed without proof can also be denied without proof.",
    "Handwriting is a spiritual designing, even though it appears by means of a material instrument."
  ];

  static List<String> euripedesQuotes = [
    "The company of just and righteous men is better than wealth and a rich estate.",
    "A bad beginning makes a bad ending.",
    "Time will explain it all. He is a talker, and needs no questioning before he speaks.",
    "Waste not fresh tears over old griefs.",
    "Sweet is the remembrance of troubles when you are in safety.",
    "Ignorance of one's misfortunes is clear gain.",
    "Cleverness is not wisdom. And not to think mortal thoughts is to see few days.",
    "Humility, a sense of reverence before the sons of heaven — of all the prizes that a mortal man might win, these, I say, are wisest; these are best.",
    "Events will take their course, it is no good of being angry at them; he is happiest who wisely turns them to the best account.",
    "I sacrifice to no god save myself — And to my belly, greatest of deities.",
    "Nothing has more strength than dire necessity.",
    "Leave no stone unturned.",
    "A coward turns away, but a brave man's choice is danger.",
    "Cowards do not count in battle; they are there, but not in it."
  ];

  static List<String> heraclitusQuotes = [
    "Everything flows and nothing stays.",
    "You could not step twice into the same river.",
    "Eternity is a child playing, playing checkers; the kingdom belongs to a child.",
    "It is harder to fight against pleasure than against anger.",
    "War is the father and king of all: some he has made gods, and some men; some slaves and some free.",
    "The best people renounce all for one goal, the eternal fame of mortals; but most people stuff themselves like cattle.",
    "Ten thousand do not turn the scale against a single man of worth.",
    "Greater fates gain greater rewards.",
    "The many are mean; only the few are noble.",
    "The majority of people have no understanding of the things with which they daily meet, nor, when instructed, do they have any right knowledge of them, although to themselves they seem to have.",
    "Though wisdom is common, yet the many live as if they had a wisdom of their own.",
    "Opposition brings concord. Out of discord comes the fairest harmony.",
    "Character is destiny.",
    "Even sleepers are workers and collaborators on what goes on in the universe.",
  ];

  static List<String> herodotusQuotes = [
    "I know that human happiness never remains long in the same place.",
    "Men trust their ears less than their eyes.",
    "In peace sons bury fathers, but in war fathers bury sons.",
    "From great wrongdoing there are great punishments from the gods.",
    "For if one should propose to all men a choice, bidding them select the best customs from all the customs that there are, each race of men, after examining them all, would select those of his own people; thus all think that their own customs are by far the best",
    "It is better to be envied than pitied.",
    "Force has no place where there is need of skill.",
    "Circumstances rule men; men do not rule circumstances.",
    "I am bound to tell what I am told, but not in every case to believe it.",
    "Men trust their ears less than their eyes.",
    "This is the bitterest pain among men, to have much knowledge but no power."
  ];

  static List<String> hesiodQuotes = [
    "We know how to speak many falsehoods which resemble real things, but we know, when we will, how to speak true things.",
    "Love, who is most beautiful among the immortal gods, the melter of limbs, overwhelms in their hearts the intelligence and wise counsel of all gods and all men.",
    "There was not after all a single kind of strife, but on earth there are two kinds: one of them a man might praise when he recognized her, but the other is blameworthy.",
    "For in misery men grow old quickly.",
    "But the rest, countless plagues, wander amongst men; for earth is full of evils and the sea is full.",
    "He is a fool who tries to withstand the stronger, for he does not get the mastery and suffers pain besides his shame.",
    "Often an entire city has suffered because of an evil man.",
    "He harms himself who does harm to another, and the evil plan is most harmful to the planner.",
    "Invite the man that loves thee to a feast, but let alone thine enemy.",
    "Do not seek evil gains; evil gains are the equivalent of disaster.",
    "There's no place like home.",
    "Observe due measure, for right timing is in all things the most important factor.",
    "Neither make thy friend equal to a brother; but if thou shalt have made him so, be not the first to do him wrong."
  ];

  static List<String> hippocratesQuotes = [
    "As to diseases, make a habit of two things — to help, or at least, to do no harm.",
    "Time is that wherein there is opportunity, and opportunity is that wherein there is no great time.",
    "Conclusions which are merely verbal cannot bear fruit, only those do which are based on demonstrated fact.",
    "Everything in excess is opposed to nature.",
    "To do nothing is sometimes a good remedy.",
    "Life is short, and Art long; the crisis fleeting; experience perilous, and decision difficult.",
    "For extreme diseases, extreme methods of cure, as to restriction, are most suitable.",
    "Medicine is of all the Arts the most noble; but, owing to the ignorance of those who practice it, and of those who, inconsiderately, form a judgment of them, it is at present far behind all the other arts.",
    "It is time which imparts strength to all things and brings them to maturity.",
    "Those things which are sacred, are to be imparted only to sacred persons; and it is not lawful to import them to the profane until they have been initiated in the mysteries of the science."
  ];

  static List<String> homerQuotes = [
    '''Rage—Goddess, sing the rage of Peleus' son Achilles,
murderous, doomed, that cost the Achaeans countless losses,
hurling down to the House of Death so many sturdy souls,
great fighters' souls, but made their bodies carrion,
feasts for the dogs and birds.''',
    "If any man obeys the gods, they listen to him also.",
    '''Lordship for many is no good thing. Let there be one ruler,
  one king.''',
    "Never to be cast away are the gifts of the gods.",
    '''Now always be the best, my boy, the bravest,
and hold your head up high above the others.''',
    "Victory passes back and forth between men.",
    "Hateful to me as the gates of Hades is the man who hides one thing in his heart and speaks another.",
    '''If I hold out here and I lay siege to Troy,
my journey home is gone, but my glory never dies.''',
    "Life and death are balanced as it were on the edge of a razor.",
    "Better to flee from death than feel its grip.",
    "There can be no covenants between men and lions, wolves and lambs can never be of one mind.",
    "For a friend with an understanding heart is worth no less than a brother.",
    '''By god, I'd rather slave on earth for another man—
  some dirt-poor tenant farmer who scrapes to keep alive—
  than rule down here over all the breathless dead.''',
    "Each man delights in the work that suits him best.",
  ];

  static List<String> isocratesQuotes = [
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

  static List<String> parmenidesQuotes = [
    "You must learn all things, both the unshaken heart of persuasive truth, and the opinions of mortals in which there is no true warranty.",
    "The only roads of enquiry there are to think of: one, that it is and that it is not possible for it not to be, this is the path of persuasion (for truth is its companion); the other, that it is not and that it must not be — this I say to you is a path wholly unknowable.",
    "For it is the same thing that can be thought and that can be.",
    "It is indifferent to me where I am to begin, for there shall I return again.",
    "Never will this prevail, that the things that are not are — bar your thought from this road of inquiry.",
    "Do not let habit, born from experience, force you along this road, directing aimless eye and echoing ear and tongue; but judge by reason the much contested proof which I have spoken.",
    "There is one story left, one road: that it is. And on this road there are very many signs that, being, is uncreated and imperishable, whole, unique, unwavering, and complete."
  ];

  static List<String> perianderQuotes = [
    "Practice does everything.",
    "Tranquility is a good thing.",
    "Rashness is dangerous.",
    "Gain is disgraceful.﻿",
    "Democracy is better than tyranny.",
    "Pleasures are transitory, but honor is immortal.",
    "Be moderate when prosperous, but prudent when unfortunate.",
    "Be the same to your friends when they are prosperous, and when they are unfortunate.",
    "Whatever you agree to do, observe.﻿—Do not divulge secrets."
  ];

  static List<String> periclesQuotes = [
    "The whole Earth is the Sepulchre of famous men; and their story is not graven only on Stone over their native earth, but lives on far away, without visible symbol, woven into the stuff of other men's lives.",
    "Freedom is the sure possession of those alone who have the courage to defend it.",
    "Future ages will wonder at us, as the present age wonders at us now.",
    "Although only a few may originate a policy, we are all able to judge it.",
    "Time is the wisest counselor of all.",
    "What you leave behind is not what is engraved in stone monuments, but what is woven into the lives of others.",
    "We do not say that a man who takes no interest in politics is a man who minds his own business; we say that he has no business here at all.",
    "The secret to happiness is freedom. And the secret to freedom is courage.",
    "But the bravest are surely those who have the clearest vision of what is before them, glory and danger alike, and yet notwithstanding go out to meet it.",
    "Instead of looking on discussion as a stumbling block in the way of action, we think it an indispensable preliminary to any wise action at all."
  ];

  static List<String> pindarQuotes = [
    '''Creatures of a day! What is anyone?
What is anyone not? A dream of a shadow
Is our mortal being. But when there comes to men
A gleam of splendour given of heaven,
Then rests on them a light of glory
And blessed are their days. ''',
    '''Here profits not
To tell the whole truth with clear face unveiled.
Often is man's best wisdom to be silent.''',
    '''For words
Live longer down the years than deeds.''',
    '''War is sweet to those who have no experience of it,
but the experienced man trembles exceedingly at heart on its approach.''',
    '''War is sweet to them that know it not.''',
    "Become such as you are, having learned what that is.",
    '''Whoever knows many things
By nature is a poet.'''
  ];

  static List<String> pittacusQuotes = [
    "Forgiveness is better than revenge.",
    "Whatever you do, do it well.",
    "Even the Gods cannot strive against necessity.",
    "Power shows the man.",
    "Do not say before hand what you are going to do; for if you fail, you will be laughed at.",
    "Speak no ill of a friend, nor even of an enemy.",
    "Cultivate truth, good faith, experience, cleverness, sociability, and industry.",
    "Whatever you rebuke your neighbor for, do not do it yourself."
  ];

  static List<String> platoQuotes = [
    "Since those who rule in the city do so because they own a lot, I suppose they're unwilling to enact laws to prevent young people who've had no discipline from spending and wasting their wealth, so that by making loans to them, secured by the young people's property, and then calling those loans in, they themselves become even richer and more honored.",
    "The inexperienced in wisdom and virtue, ever occupied with feasting and such, are carried downward, and there, as is fitting, they wander their whole life long, neither ever looking upward to the truth above them nor rising toward it, nor tasting pure and lasting pleasures. Like cattle, always looking downward with their heads bent toward the ground and the banquet tables, they feed, fatten, and fornicate. In order to increase their possessions they kick and butt with horns and hoofs of steel and kill each other, insatiable as they are.",
    "The beginning is the most important part of the work.",
    "Until philosophers are kings, or the kings and princes of this world have the spirit and power of philosophy, and political greatness and wisdom meet in one, and those commoner natures who pursue either to the exclusion of the other are compelled to stand aside, cities will never have rest from their evils.",
    "Let every man remind their descendants that they also are soldiers who must not desert the ranks of their ancestors, or from cowardice fall behind.",
    "I only wish that wisdom were the kind of thing that flowed … from the vessel that was full to the one that was empty.",
    "There is no one who ever acts honestly in the administration of states, nor any helper who will save any one who maintains the cause of the just."
  ];

  static List<String> plutarchQuotes = [
    "Our judgments, if they do not borrow from reason and philosophy a fixity and steadiness of purpose in their acts, are easily swayed and influenced by the praise or blame of others, which make us distrust our own opinions.",
    "Valour, however unfortunate, commands great respect even from enemies: but the Romans despise cowardice, even though it be prosperous.",
    "Authority and place demonstrate and try the tempers of men, by moving every passion and discovering every frailty.",
    "Perseverance is more prevailing than violence; and many things which cannot be overcome when they are together, yield themselves up when taken little by little.",
  ];

  static List<String> polybiusQuotes = [
    "As every multitude is fickle, full of lawless desires, unreasoned passion, and violent anger, the multitude must be held in by invisible terrors and suchlike pageantry. For this reason I think, not that the ancients acted rashly and at haphazard in introducing among the people notions concerning the gods and beliefs in the terrors of hell.",
    "Had previous chroniclers neglected to speak in praise of History in general, it might perhaps have been necessary for me to recommend everyone to choose for study and welcome such treatises as the present, since men have no more ready corrective of conduct than knowledge of the past.",
    "I observe that while several modern writers deal with particular wars and certain matters connected with them, no one, as far as I am aware, has even attempted to inquire critically when and whence the general and comprehensive scheme of events originated and how it led up to the end.",
    "He indeed who believes that by studying isolated histories he can acquire a fairly just view of history as a whole, is, as it seems to me, much in the case of one, who, after having looked at the dissevered limbs of an animal once alive and beautiful, fancies he has been as good as an eyewitness of the creature itself in all its action and grace."
  ];

  static List<String> protagorasQuotes = [
    "Man is the measure of all things: of things which are, that they are, and of things which are not, that they are not.",
    "There are two sides to every question.",
    "The Athenians are right to accept advice from anyone, since it is incumbent on everyone to share in that sort of excellence, or else there can be no city at all.",
    "When it comes to consideration of how to do well in running the city, which must proceed entirely through justice and soundness of mind.",
  ];

  static List<String> pythagorasQuotes = [
    '''Dear youths, I warn you cherish peace divine,
And in your hearts lay deep these words of mine.''',
    '''Rest satisfied with doing well, and leave others to talk of you as they please.''',
    '''  As long as Man continues to be the ruthless destroyer of lower living beings, he will never know health or peace. For as long as men massacre animals, they will kill each other. Indeed, he who sows the seed of murder and pain cannot reap joy and love.''',
    "Let no one persuade you by word or deed to do or say whatever is not best for you.",
    "The soul of man is divided into three parts, intelligence, reason, and passion. Intelligence and passion are possessed by other animals, but reason by man alone.",
    "Number is the ruler of forms and ideas, and the cause of gods and daemons.",
    "Reason is immortal, all else mortal.",
    "Truth is so great a perfection, that if God would render himself visible to men, he would choose light for his body and truth for his soul.",
    "Sooner throw a pearl at hazard than an idle or useless word; and do not say a little in many words, but a great deal in a few.",
    "There is no word or action but has its echo in Eternity.",
    "Thought is an Idea in transit, which when once released, never can be lured back, nor the spoken word recalled.",
    "The oldest, shortest words— \"yes\" and \"no\"— are those which require the most thought.",
    "Time is the soul of this world.",
    "Above all things reverence thy Self."
  ];

  static List<String> socratesQuotes = [
    "The unexamined life is not worth living.",
    "I set to do you—each one of you, individually and in private—what I hold to be the greatest possible service. I tried to persuade each one of you to concern himself less with what he has than with what he is, so as to render himself as excellent and rational as possible.",
    "It would be better for me... that multitudes of men should disagree with me rather than that I, being one, should be out of harmony with myself.",
    "If the entire soul, then, follows without rebellion the part which loves wisdom, the result is that in general each part can carry out its own function—can be just, in other words—and in particular each is able to enjoy pleasures which are its own, the best, and, as far as possible, the truest.",
    "Anyone who holds a true opinion without understanding is like a blind man on the right road.",
    "Each of these private teachers who work for pay ... inculcates nothing else than these opinions of the multitude which they opine when they are assembled and calls this knowledge wisdom.",
    "The inexperienced in wisdom and virtue, ever occupied with feasting and such, are carried downward, and there, as is fitting, they wander their whole life long, neither ever looking upward to the truth above them nor rising toward it, nor tasting pure and lasting pleasures. Like cattle, always looking downward with their heads bent toward the ground and the banquet tables, they feed, fatten, and fornicate. In order to increase their possessions they kick and butt with horns and hoofs of steel and kill each other, insatiable as they are.",
    "False words are not only evil in themselves, but they infect the soul with evil."
  ];

  static List<String> solonQuotes = [
    "You made your rulers mighty, gave them guards, so now you groan 'neath slavery's heavy rod.",
    "I grow old ever learning many things.",
    "Consider your honour, as a gentleman, of more weight than an oath.",
    "No fool can be silent at a feast.",
    "Do not counsel what is most pleasant, but what is best.",
    '''Wealth I desire to have; but wrongfully to get it, I do not wish.
Justice, even if slow, is sure.''',
    '''For often evil men are rich, and good men poor;
But we will not exchange with them
Our virtue for their wealth since one abides always,
While riches change their owners every day.'''
  ];

  static List<String> sophoclesQuotes = [
    "When ice appears out of doors, and boys seize it up while it is solid, at first they experience new pleasures. But in the end their pride will not agree to let it go, but their acquisition is not good for them if it stays in their hands. In the same way an identical desire drives lovers to act and not to act.",
    "A lie never lives to be old.",
    "No man loves life like him that's growing old.",
    "A short saying often contains much wisdom.",
    "It is no weakness for the wisest man to learn when he is wrong.",
    "A short saying often contains much wisdom.",
    '''Truly, to tell lies is not honorable;
But when the truth entails tremendous ruin,
To speak dishonorably is pardonable.''',
    "Do nothing secretly; for Time sees and hears all things, and discloses all.",
    "Fortune is not on the side of the faint-hearted."
  ];

  static List<String> thalesQuotes = [
    "Know thyself.",
    "Avoid doing what you would blame others for doing.",
    "Nothing is more active than thought, for it flies over the whole universe; nothing is stronger than necessity, for all must submit to it.",
    "Hope is the only good that is common to all men; those who have nothing else possess hope still.",
    "Time is wisest because it discovers everything.",
    "A multitude of words is no proof of a prudent mind."
  ];

  static List<String> themistoclesQuotes = [
    "I never learned how to tune a harp, or play upon a lute; but I know how to raise a small and inconsiderable city to glory and greatness.",
    "May I never sit on a tribunal where my friends shall not find more favor from me than strangers.",
    "Strike, if you will, but hear.",
    "I have with me two gods, Persuasion and Compulsion.",
    "I choose the likely man in preference to the rich man; I want a man without money rather than money without a man.",
  ];

  static List<String> theocritusQuotes = [
    "While there's life there's hope, and only the dead have none.",
    '''Lo! how small
  Was the gift, and yet how precious! Friendship's gifts are priceless all.''',
    "The Greeks got into Troy by trying, my pretties; everything's done by trying.",
  ];

  static List<String> theognisQuotes = [
    "One finds many companions for food and drink, but in a serious business a man's companions are few.",
    '''We struggle onward, ignorant and blind,
For a result unknown and undesign’d;
Avoiding seeming ills, misunderstood,
Embracing evil as a seeming good.''',
    '''The lucky man is honored ...
But earnest striving wins no praise at all.''',
    "Adopt the character of the twisting octopus, which takes on the appearance of the nearby rock.",
    '''Don’t wag the tail of life if it goes well,
But leave in undisturbed. If it should go
Badly, rock it until it straightens up.''',
    '''Unless the gods deceive my mind,
  That man is forging fetters for himself.''',
    "Bright youth passes swiftly as a thought."
  ];

  static List<String> theophrastusQuotes = [
    "Time is the most valuable thing a man can spend.",
    "The Unseasonable man is one who will go up to a busy person, and open his heart to him. He will serenade his mistress when she has a fever. He will address himself to a man who has been cast in a surety-suit, and request him to become his security. He will come to give evidence when the trial is over.",
    "Superstition would seem to be simply cowardice in regard to the supernatural.",
    "When we are beginning to live, then we are dying. There is, therefore, nothing more profitless than ambition.",
    "If you are an ignorant man, you are acting wisely; but if you have had any education, you are behaving like a fool."
  ];

  static List<String> thucydidesQuotes = [
    "So little pains do the vulgar take in the investigation of truth, accepting readily the first story that comes to hand.",
    "For the true author of the subjugation of a people is not so much the immediate agent, as the power which permits it having the means to prevent it.",
    "I am more afraid of our own blunders than of the enemy's devices.",
    "The bravest are surely those who have the clearest vision of what is before them, glory and danger alike, and yet notwithstanding, go out to meet it.",
    "In generosity we are equally singular, acquiring our friends by conferring, not by receiving, favours.",
    "But the prize for courage will surely be awarded most justly to those who best know the difference between hardship and pleasure and yet are never tempted to shrink from danger.",
    "Hatred also is short lived; but that which makes the splendor of the present and the glory of the future remains forever unforgotten.",
    "And it is certain that those who do not yield to their equals, who keep terms with their superiors, and are moderate towards their inferiors, on the whole succeed best."
  ];

  static List<String> xenophanesQuotes = [
    '''Mortals deem that the gods are begotten as they are,
and have clothes like theirs, and voice and form.''',
    '''But if cattle and horses and lions had hands
or could paint with their hands and create works such as men do,
horses like horses and cattle like cattle
also would depict the gods' shapes and make their bodies
of such a sort as the form they themselves have.''',
    "For all things are from the earth and to the earth all things come in the end.",
    "There is one god, greatest among gods and men, similar to mortals neither in shape nor in thought."
  ];

  static List<String> xenophonQuotes = [
    "It is only for those to employ force who possess strength without judgment; but the well advised will have recourse to other means.",
    "There is small risk a general will be regarded with contempt by those he leads, if, whatever he may have to preach, he shows himself best able to perform.",
    "As to what happened next, it is possible to maintain that the hand of heaven was involved, and also possible to say that when men are desperate no one can stand up to them.",
    "Every one of you is the leader.",
    "It is common opinion among us in regard to beauty and wisdom that there is an honourable and a shameful way of bestowing them. For to offer one’s beauty for money to all comers is called prostitution; but we think it virtuous to become friendly with a lover who is known to be a man of honour. So is it with wisdom. Those who offer it to all comers for money are known as sophists, prostitutors of wisdom.",
    "Conquerors do not, as a rule, give up their arms.",
    "Yet is it more honourable, and just, and upright, and pleasing, to treasure in the memory good acts than bad.",
    "If the campaign is in summer the general must show himself greedy for his share of the sun and the heat, and in winter for the cold and the frost, and in all labours for toil and fatigue. This will help to make him beloved of his followers."
  ];


  //BIOS:
  static String epictetusBio = '''Epictetus was an Ancient Greek philosopher. He was born in Hierapolis, Phrygia around 55 AD.[1] The name his parents gave him is unknown; the word epíktetos (επίκτητος) in Greek simply means "acquired." He spent his youth as a slave in Rome to Epaphroditos, a rich freedman and secretary to Nero. The city was near the modern-day town of Pamukkale in Turkey. He died around 135 AD[2] in Nikopolis in Epirus, in Greece. He was one of the most influential philosophers of the late Stoa. Epictetus founded a school of philosophy, where he also taught. None of his writings survive, but one of his pupils, Arrian, wrote what Epictetus taught.

Philosophy, Epictetus taught, is a way of life and not just a theoretical discipline. To Epictetus, all external events are determined by fate, and so are beyond our control; we should accept whatever happens calmly and dispassionately. However, individuals are responsible for their own actions, which they can examine and control through rigorous self-discipline.

Suffering occurs from trying to control what is uncontrollable, or from neglecting what is within our power. As part of the universal city that is the universe, it is our duty to care for all our fellow men. Those who follow these precepts will achieve happiness and peace of mind.''';

  static String catoBio = '''Cato the Younger (Marcus Porcius Cato Uticensis, 95 BC, Rome – April 46 BC, Utica) was a politician and statesman in the late Roman Republic, and a follower of the Stoic philosophy. He was known as Cato Minor to distinguish him from his great-grandfather (Cato the Elder). A noted orator, he had great moral integrity. He could not be bribed, and disliked the political corruption of the age. He is remembered for his stubbornness and for his lengthy conflict with Julius Caesar.

Plutarch tells a story about Cato's peers' immense respect for him, even at a young age. During a Roman ritual military game, called "Troy", in which all aristocratic teenagers participated as a sort of "coming of age" ceremony, a mock battle with wooden weapons was performed on horseback. While the child of one of Sulla's surrogates was chosen by the adult organizers to lead one of the "teams," the team refused to follow him because of his character, and when they were finally asked whom they would follow, the boys unanimously chose Cato.''';

  static String chrysippusBio = '''Chrysippus of Soli (/kraɪˈsɪpəs, krɪ-/;[3] Greek: Χρύσιππος ὁ Σολεύς, Chrysippos ho Soleus; c. 279 – c. 206 BC[4]) was a Greek Stoic philosopher. He was a native of Soli, Cilicia, but moved to Athens as a young man, where he became a pupil of Cleanthes in the Stoic school. When Cleanthes died, around 230 BC, Chrysippus became the third head of the school. A prolific writer, Chrysippus expanded the fundamental doctrines of Zeno of Citium, the founder of the school, which earned him the title of Second Founder of Stoicism.[5]

Chrysippus excelled in logic, the theory of knowledge, ethics, and physics. He created an original system of propositional logic in order to better understand the workings of the universe and role of humanity within it. He adhered to a deterministic view of fate, but nevertheless sought a role for personal freedom in thought and action. Ethics, he thought, depended on understanding the nature of the universe, and he taught a therapy of extirpating the unruly passions which depress and crush the soul. He initiated the success of Stoicism as one of the most influential philosophical movements for centuries in the Greek and Roman world.

Of his written works, none have survived except as fragments. Recently, segments of some of his works were discovered among the Herculaneum papyri.[6]''';

  static String cleanthesBio = '''Cleanthes (/kliˈænθiːz/; Greek: Κλεάνθης Kleanthēs; c. 330 BC – c. 230 BC), of Assos, was a Greek Stoic philosopher and successor to Zeno of Citium as the second head (scholarch) of the Stoic school in Athens. Originally a boxer, he came to Athens where he took up philosophy, listening to Zeno's lectures. He supported himself by working as a water-carrier at night. After the death of Zeno, c. 262 BC, he became the head of the school, a post he held for the next 32 years. Cleanthes successfully preserved and developed Zeno's doctrines. He originated new ideas in Stoic physics, and developed Stoicism in accordance with the principles of materialism and pantheism. Among the fragments of Cleanthes' writings which have come down to us, the largest is a Hymn to Zeus. His pupil was Chrysippus who became one of the most important Stoic thinkers.''';

  static String gaiusBio = '''Gaius Musonius Rufus (/ˈruːfəs/, Greek: Μουσώνιος Ῥοῦφος) was a Roman Stoic philosopher of the 1st century AD. He taught philosophy in Rome during the reign of Nero and so was sent into exile in 65 AD, returning to Rome only under Galba. He was allowed to stay in Rome when Vespasian banished all other philosophers from the city in 71 AD although he was eventually banished anyway, returning only after Vespasian's death. A collection of extracts from his lectures still survives. He is also remembered for being the teacher of Epictetus.''';

  static String senecaBio = '''Lucius Annaeus Seneca the Younger (/ˈsɛnɪkə/; c. 4 BC – AD 65)[1] was a Roman Stoic philosopher, statesman, dramatist, and—in one work—satirist from the Silver Age of Latin literature.

Seneca was born in Corduba in Hispania, and raised in Rome, where he was trained in rhetoric and philosophy. His father was Seneca the Elder, his elder brother was Lucius Junius Gallio Annaeanus, and his nephew was the poet Lucan. In AD 41, Seneca was exiled to the island of Corsica under emperor Claudius,[2] but was allowed to return in 49 to become a tutor to Nero. When Nero became emperor in 54, Seneca became his advisor and, together with the praetorian prefect Sextus Afranius Burrus, provided competent government for the first five years of Nero's reign. Seneca's influence over Nero declined with time, and in 65 Seneca was forced to take his own life for alleged complicity in the Pisonian conspiracy to assassinate Nero, in which he was likely to have been innocent.[3] His stoic and calm suicide has become the subject of numerous paintings.

As a writer Seneca is known for his philosophical works, and for his plays, which are all tragedies. His prose works include a dozen essays and one hundred twenty-four letters dealing with moral issues. These writings constitute one of the most important bodies of primary material for ancient Stoicism. As a tragedian, he is best known for plays such as his Medea, Thyestes, and Phaedra. Seneca's influence on later generations is immense—during the Renaissance he was "a sage admired and venerated as an oracle of moral, even of Christian edification; a master of literary style and a model [for] dramatic art."[4]''';

  static String marcusAureliusBio = '''Marcus Aurelius (/ɔːˈriːliəs, ɔːˈriːljəs/;[1] Marcus Aurelius Antoninus Augustus; 26 April 121 – 17 March 180) was a Roman emperor from 161 to 180 and a Stoic philosopher. He was the last of the rulers known as the Five Good Emperors (a term coined some 13 centuries later by Niccolò Machiavelli), and the last emperor of the Pax Romana, an age of relative peace and stability for the Roman Empire. He served as Roman consul in 140, 145, and 161.

Marcus was born during the reign of Hadrian to the emperor's nephew, the praetor Marcus Annius Verus (III), and his wife, the heiress Domitia Lucilla. Following the death of his father, Marcus was raised by his mother and grandfather, Marcus Annius Verus (II). After Hadrian's adoptive son, Aelius Caesar, died in 138, the emperor adopted Marcus' uncle Antoninus Pius as his new heir. In turn, Antoninus adopted Marcus and the son of Aelius, Lucius (later to rule as Emperor Lucius Verus alongside Marcus). Hadrian died that year and Antoninus became emperor. Now heir to the throne, Marcus studied Greek and Latin under tutors such as Herodes Atticus and Marcus Cornelius Fronto. He kept in close correspondence with Fronto for many years afterwards. Marcus married Antoninus' daughter Faustina in 145. Antoninus died following an illness in 161.

The reign of Marcus Aurelius was marked by military conflict. In the East, the Roman Empire fought successfully with a revitalized Parthian Empire and the rebel Kingdom of Armenia. Marcus defeated the Marcomanni, Quadi, and Sarmatian Iazyges in the Marcomannic Wars; however, these and other Germanic peoples began to represent a troubling reality for the Empire. He modified the silver purity of the Roman currency, the denarius. The persecution of Christians in the Roman Empire is believed[by whom?] to have increased[how?] during his reign.[why?] The Antonine Plague broke out in 165 or 166 and devastated the population of the Roman Empire, causing the deaths of five million people. Lucius Verus may have died from the plague in 169.

Unlike some of his predecessors, Marcus chose not to adopt an heir. His children included Lucilla, who married Lucius, and Commodus, whose succession after Marcus has become a subject of debate among both contemporary and modern historians. The Column and Equestrian Statue of Marcus Aurelius still stand in Rome, where they were erected in celebration of his military victories. Meditations, the writings of "the philosopher" – as contemporary biographers called Marcus, are a significant source of the modern understanding of ancient Stoic philosophy. They have been praised by fellow writers, philosophers, monarchs, and politicians centuries after his death.''';

  static String zenoBio = '''Zeno of Citium (/ˈziːnoʊ/; Greek: Ζήνων ὁ Κιτιεύς, Zēnōn ho Kitieus; c. 334 – c. 262 BC) was a Hellenistic philosopher of Phoenician origin[3] from Citium (Κίτιον, Kition), Cyprus. Zeno was the founder of the Stoic school of philosophy, which he taught in Athens from about 300 BC. Based on the moral ideas of the Cynics, Stoicism laid great emphasis on goodness and peace of mind gained from living a life of Virtue in accordance with Nature. It proved very popular, and flourished as one of the major schools of philosophy from the Hellenistic period through to the Roman era.''';

  static String aeschinesBio = '''Aeschines (/ˈɪskɪniːz/; Greek: Αἰσχίνης, Aischínēs; 389–314 BC) was a Greek statesman and one of the ten Attic orators. ''';

  static String aeschylusBio = '''Aeschylus (UK: /ˈiːskɪləs/,[1] US: /ˈɛskɪləs/;[2] Greek: Αἰσχύλος Aiskhylos, pronounced [ai̯s.kʰý.los]; c. 525/524 – c. 456/455 BC) was an ancient Greek tragedian. He is often described as the father of tragedy.[3][4] Academics' knowledge of the genre begins with his work,[5] and understanding of earlier tragedies is largely based on inferences from his surviving plays.[6] According to Aristotle, he expanded the number of characters in the theatre and allowed conflict among them; characters previously had interacted only with the chorus.[nb 1]

Only seven of his estimated seventy to ninety plays have survived, and there is a long-standing debate regarding his authorship of one of these plays, Prometheus Bound, which some believe his son Euphorion actually wrote. Fragments of some other plays have survived in quotations and more continue to be discovered on Egyptian papyrus, often giving further insights into his work.[7] He was probably the first dramatist to present plays as a trilogy; his Oresteia is the only ancient example of the form to have survived.[8] At least one of his plays was influenced by the Persians' second invasion of Greece (480–479 BC). This work, The Persians, is one of very few classical Greek tragedies concerned with contemporary events and the only one to survive to the present,[9] as well as a useful source of information about its period. The significance of the war against Persia was so great to Aeschylus and the Greeks that Aeschylus' epitaph commemorates his participation in the Greek victory at Marathon while making no mention of his success as a playwright. Despite this, Aeschylus's work – particularly the Oresteia – is generally acclaimed by modern critics and scholars.''';

  static String aesopBio = '''Aesop (/ˈiːsɒp/ EE-sop or /ˈeɪsɒp/ AY-sop; Greek: Αἴσωπος, Aísopos; c. 620–564 BCE) was a Greek fabulist and storyteller credited with a number of fables now collectively known as Aesop's Fables. Although his existence remains unclear and no writings by him survive, numerous tales credited to him were gathered across the centuries and in many languages in a storytelling tradition that continues to this day. Many of the tales are characterized by animals and inanimate objects that speak, solve problems, and generally have human characteristics.

Scattered details of Aesop's life can be found in ancient sources, including Aristotle, Herodotus, and Plutarch. An ancient literary work called The Aesop Romance tells an episodic, probably highly fictional version of his life, including the traditional description of him as a strikingly ugly slave (δοῦλος) who by his cleverness acquires freedom and becomes an adviser to kings and city-states. Older spellings of his name have included Esop(e) and Isope. Depictions of Aesop in popular culture over the last 2500 years have included many works of art and his appearance as a character in numerous books, films, plays, and television programs.''';

  static String agathonBio = '''Agathon (/ˈæɡəθɒn/; Ancient Greek: Ἀγάθων; c. 448 – c. 400 BC) was an Athenian tragic poet whose works have been lost. He is best known for his appearance in Plato's Symposium, which describes the banquet given to celebrate his obtaining a prize for his first tragedy at the Lenaia in 416.[1] He is also a prominent character in Aristophanes' comedy the Thesmophoriazusae.''';

  static String agesilausBio = '''Agesilaus II (/əˌdʒɛsəˈleɪəs/; Greek: Ἀγησίλαος Agesilaos; c. 444/443 – c. 360 BC), was a king (basileus) of the ancient Greek city-state of Sparta[a] and a member of the Eurypontid dynasty ruling from 398 to about 360 BC, during most of which time he was, in Plutarch's words, "as good as though commander and king of all Greece", and was for the whole of it greatly identified with his country's deeds and fortunes.[1] Small in stature and lame from birth, Agesilaus became ruler somewhat unexpectedly in his mid-forties. His reign saw successful military incursions into various states in Asia Minor, as well as successes in the Corinthian War; however, several diplomatic decisions resulted in Sparta becoming increasingly isolated prior to his death at the age of 84 in Cyrenaica.

Agesilaus was greatly admired by his friend, the historian Xenophon, who wrote a minor work about him titled Agesilaus.''';

  static String alcaeusBio = '''Alcaeus of Mytilene (/ælˈsiːəs/; Ancient Greek: Ἀλκαῖος ὁ Μυτιληναῖος, Alkaios ho Mutilēnaios; c. 625/620 – c. 580 BC)[1][2] was a lyric poet from the Greek island of Lesbos who is credited with inventing the Alcaic stanza. He was included in the canonical list of nine lyric poets by the scholars of Hellenistic Alexandria. He was a contemporary and an alleged lover of Sappho, with whom he may have exchanged poems. He was born into the aristocratic governing class of Mytilene, the main city of Lesbos, where he was involved in political disputes and feuds.''';

  static String alexanderBio = '''Alexander III of Macedon (Greek: Αλέξανδρος Γʹ ὁ Μακεδών, Aléxandros III ho Makedȏn; 20/21 July 356 BC – 10/11 June 323 BC), commonly known as Alexander the Great (Greek: Ἀλέξανδρος ὁ Μέγας, Aléxandros ho Mégas), was a king (basileus) of the ancient Greek kingdom of Macedon[a] and a member of the Argead dynasty. He was born in Pella in 356 BC and succeeded his father Philip II to the throne at the age of 20. He spent most of his ruling years on an unprecedented military campaign through western Asia and northeast Africa, and by the age of thirty, he had created one of the largest empires of the ancient world, stretching from Greece to northwestern India.[1][2] He was undefeated in battle and is widely considered one of history's most successful military commanders.[3]

During his youth, Alexander was tutored by Aristotle until age 16. After Philip's assassination in 336 BC, he succeeded his father to the throne and inherited a strong kingdom and an experienced army. Alexander was awarded the generalship of Greece and used this authority to launch his father's pan-Hellenic project to lead the Greeks in the conquest of Persia.[4][5] In 334 BC, he invaded the Achaemenid Empire (Persian Empire) and began a series of campaigns that lasted 10 years. Following the conquest of Anatolia, Alexander broke the power of Persia in a series of decisive battles, most notably the battles of Issus and Gaugamela. He subsequently overthrew Persian King Darius III and conquered the Achaemenid Empire in its entirety.[b] At that point, his empire stretched from the Adriatic Sea to the Beas River.

Alexander endeavoured to reach the "ends of the world and the Great Outer Sea" and invaded India in 326 BC, winning an important victory over the Pauravas at the Battle of the Hydaspes. He eventually turned back at the demand of his homesick troops, dying in Babylon in 323 BC, the city that he planned to establish as his capital, without executing a series of planned campaigns that would have begun with an invasion of Arabia. In the years following his death, a series of civil wars tore his empire apart, resulting in the establishment of several states ruled by the Diadochi, Alexander's surviving generals and heirs.

Alexander's legacy includes the cultural diffusion and syncretism which his conquests engendered, such as Greco-Buddhism. He founded some twenty cities that bore his name, most notably Alexandria in Egypt. Alexander's settlement of Greek colonists and the resulting spread of Greek culture in the east resulted in a new Hellenistic civilization, aspects of which were still evident in the traditions of the Byzantine Empire in the mid-15th century AD and the presence of Greek speakers in central and far eastern Anatolia until the Greek genocide of the 1920s. Alexander became legendary as a classical hero in the mould of Achilles, and he features prominently in the history and mythic traditions of both Greek and non-Greek cultures. He was undefeated in battle and became the measure against which military leaders compared themselves. Military academies throughout the world still teach his tactics.[6][c] He is often ranked among the most influential people in history.[7]''';

  static String anacreonBio = '''Anacreon (/əˈnækriən/; Greek: Ἀνακρέων ὁ Τήϊος; c. 582 – c. 485 BC)[1] was a Greek lyric poet, notable for his drinking songs and erotic poems. Later Greeks included him in the canonical list of nine lyric poets. Anacreon wrote all of his poetry in the ancient Ionic dialect. Like all early lyric poetry, it was composed to be sung or recited to the accompaniment of music, usually the lyre. Anacreon's poetry touched on universal themes of love, infatuation, disappointment, revelry, parties, festivals and the observations of everyday people and life.''';

  static String anaxagorasBio = '''Anaxagoras (/ˌænækˈsæɡərəs/; Greek: Ἀναξαγόρας, Anaxagoras, "lord of the assembly"; c. 510 – c. 428 BC) was a Pre-Socratic Greek philosopher. Born in Clazomenae at a time when Asia Minor was under the control of the Persian Empire, Anaxagoras came to Athens. According to Diogenes Laërtius and Plutarch, in later life he was charged with impiety and went into exile in Lampsacus; the charges may have been political, owing to his association with Pericles, if they were not fabricated by later ancient biographers.[2]

Responding to the claims of Parmenides on the impossibility of change, Anaxagoras described the world as a mixture of primary imperishable ingredients, where material variation was never caused by an absolute presence of a particular ingredient, but rather by its relative preponderance over the other ingredients; in his words, "each one is... most manifestly those things of which there are the most in it".[3] He introduced the concept of Nous (Cosmic Mind) as an ordering force, which moved and separated out the original mixture, which was homogeneous, or nearly so.

He also gave a number of novel scientific accounts of natural phenomena. He deduced a correct explanation for eclipses and described the Sun as a fiery mass larger than the Peloponnese, as well as attempting to explain rainbows and meteors.''';

  static String anaximanderBio = '''Anaximander (/æˌnæksɪˈmændər/; Greek: Ἀναξίμανδρος Anaximandros; c. 610 – c. 546 BC), was a pre-Socratic Greek philosopher who lived in Miletus,[4] a city of Ionia (in modern-day Turkey). He belonged to the Milesian school and learned the teachings of his master Thales. He succeeded Thales and became the second master of that school where he counted Anaximenes and, arguably, Pythagoras amongst his pupils.[5]

Little of his life and work is known today. According to available historical documents, he is the first philosopher known to have written down his studies,[6] although only one fragment of his work remains. Fragmentary testimonies found in documents after his death provide a portrait of the man.

Anaximander was an early proponent of science and tried to observe and explain different aspects of the universe, with a particular interest in its origins, claiming that nature is ruled by laws, just like human societies, and anything that disturbs the balance of nature does not last long.[7] Like many thinkers of his time, Anaximander's philosophy included contributions to many disciplines. In astronomy, he attempted to describe the mechanics of celestial bodies in relation to the Earth. In physics, his postulation that the indefinite (or apeiron) was the source of all things led Greek philosophy to a new level of conceptual abstraction. His knowledge of geometry allowed him to introduce the gnomon in Greece. He created a map of the world that contributed greatly to the advancement of geography. He was also involved in the politics of Miletus and was sent as a leader to one of its colonies.''';

  static String antisthenesBio = '''Antisthenes (/ænˈtɪsθɪniːz/;[2] Greek: Ἀντισθένης; c. 446 – c. 366 BC)[1] was a Greek philosopher and a pupil of Socrates. Antisthenes first learned rhetoric under Gorgias before becoming an ardent disciple of Socrates. He adopted and developed the ethical side of Socrates' teachings, advocating an ascetic life lived in accordance with virtue. Later writers regarded him as the founder of Cynic philosophy.''';

  static String archilochusBio = '''Archilochus (/ɑːrˈkɪləkəs/; Greek: Ἀρχίλοχος Arkhilokhos; c. 680–645 BCE)[a] was a Greek lyric poet from the island of Paros in the Archaic period. He is celebrated for his versatile and innovative use of poetic meters, and is the earliest known Greek author to compose almost entirely on the theme of his own emotions and experiences.[3][4]

Alexandrian scholars included him in their canonic list of iambic poets, along with Semonides and Hipponax,[5] yet ancient commentators also numbered him with Tyrtaeus and Callinus as the possible inventor of the elegy.[6] Modern critics often characterize him simply as a lyric poet.[7] Although his work now only survives in fragments, he was revered by the ancient Greeks as one of their most brilliant authors, able to be mentioned in the same breath as Homer and Hesiod,[8] yet he was also censured by them as the archetypal poet of blame[9] – his invectives were even said to have driven his former fiancée and her father to suicide. He presented himself as a man of few illusions either in war or in love, such as in the following elegy, where discretion is seen to be the better part of valour:

Ἀσπίδι μὲν Σαΐων τις ἀγάλλεται, ἥν παρὰ θάμνῳ
ἔντος ἀμώμητον κάλλιπον οὐκ ἐθέλων·
αὐτὸν δ' ἔκ μ' ἐσάωσα· τί μοι μέλει ἀσπὶς ἐκείνη;
Ἐρρέτω· ἐξαῦτις κτήσομαι οὐ κακίω.[10]

One of the Saians (Thracian tribe) now delights in the shield I discarded
Unwillingly near a bush, for it was perfectly good,
But at least I got myself safely out. Why should I care for that shield?
Let it go. Some other time I'll find another no worse.[citation needed]

Archilochus was much imitated even up to Roman times and three other distinguished poets later claimed to have thrown away their shields – Alcaeus, Anacreon and Horace.''';

  static String archimedesBio = '''Archimedes of Syracuse (/ˌɑːrkɪˈmiːdiːz/;[2] Ancient Greek: Ἀρχιμήδης, romanized: Arkhimḗdēs; Doric Greek: [ar.kʰi.mɛː.dɛ̂ːs]; c. 287 – c. 212 BC) was a Greek mathematician, physicist, engineer, inventor, and astronomer.[3] Although few details of his life are known, he is regarded as one of the leading scientists in classical antiquity. Generally considered the greatest mathematician of antiquity and one of the greatest of all time,[4][5][6][7][8][9] Archimedes anticipated modern calculus and analysis by applying concepts of infinitesimals and the method of exhaustion to derive and rigorously prove a range of geometrical theorems, including the area of a circle, the surface area and volume of a sphere, and the area under a parabola.[10]

Other mathematical achievements include deriving an accurate approximation of pi, defining and investigating the spiral bearing his name, and creating a system using exponentiation for expressing very large numbers. He was also one of the first to apply mathematics to physical phenomena, founding hydrostatics and statics, including an explanation of the principle of the lever. He is credited with designing innovative machines, such as his screw pump, compound pulleys, and defensive war machines to protect his native Syracuse from invasion.

Archimedes died during the Siege of Syracuse when he was killed by a Roman soldier despite orders that he should not be harmed. Cicero describes visiting the tomb of Archimedes, which was surmounted by a sphere and a cylinder, which Archimedes had requested be placed on his tomb to represent his mathematical discoveries.

Unlike his inventions, the mathematical writings of Archimedes were little known in antiquity. Mathematicians from Alexandria read and quoted him, but the first comprehensive compilation was not made until c. 530 AD by Isidore of Miletus in Byzantine Constantinople, while commentaries on the works of Archimedes written by Eutocius in the sixth century AD opened them to wider readership for the first time. The relatively few copies of Archimedes' written work that survived through the Middle Ages were an influential source of ideas for scientists during the Renaissance, while the discovery in 1906 of previously unknown works by Archimedes in the Archimedes Palimpsest has provided new insights into how he obtained mathematical results.[11][12][13]''';

  static String aristippusBio = '''Aristippus of Cyrene (/ˌærəˈstɪpəs/; Ancient Greek: Ἀρίστιππος ὁ Κυρηναῖος; c. 435 – c. 356 BCE) was the founder of the Cyrenaic school of Philosophy.[1] He was a pupil of Socrates, but adopted a very different philosophical outlook, teaching that the goal of life was to seek pleasure by circumstances to oneself and by maintaining proper control over both adversity and prosperity. His outlook came to be called "ethical hedonism."[citation needed] Among his pupils was his daughter Arete.''';

  static String aristophanesBio = '''Aristophanes (/ˌærɪˈstɒfəniːz/;[2] Ancient Greek: Ἀριστοφάνης, pronounced [aristopʰánɛːs]; c. 446 – c. 386 BC), son of Philippus, of the deme Kydathenaion (Latin: Cydathenaeum),[3] was a comic playwright of ancient Athens and a poet of Old Attic Comedy.[4] Eleven of his forty plays survive virtually complete. These provide the most valuable examples of a genre of comic drama known as Old Comedy and are used to define it, along with fragments from dozens of lost plays by Aristophanes and his contemporaries.[5]

Also known as "The Father of Comedy"[6] and "the Prince of Ancient Comedy",[7] Aristophanes has been said to recreate the life of ancient Athens more convincingly than any other author.[8] His powers of ridicule were feared and acknowledged by influential contemporaries; Plato[9][10] singled out Aristophanes' play The Clouds as slander that contributed to the trial and subsequent condemning to death of Socrates, although other satirical playwrights[11] had also caricatured the philosopher.

Aristophanes' second play, The Babylonians (now lost), was denounced by Cleon as a slander against the Athenian polis. It is possible that the case was argued in court, but details of the trial are not recorded and Aristophanes caricatured Cleon mercilessly in his subsequent plays, especially The Knights, the first of many plays that he directed himself. "In my opinion," he says through that play's Chorus, "the author-director of comedies has the hardest job of all."[12]''';

  static String aristotleBio = '''Aristotle (/ˈærɪstɒtəl/;[3] Greek: Ἀριστοτέλης Aristotélēs, pronounced [aristotélɛːs]; 384–322 BC) was a Greek philosopher and polymath during the Classical period in Ancient Greece. Taught by Plato, he was the founder of the Lyceum, the Peripatetic school of philosophy, and the Aristotelian tradition. His writings cover many subjects including physics, biology, zoology, metaphysics, logic, ethics, esthetics, poetry, theatre, music, rhetoric, psychology, linguistics, economics, politics, and government. Aristotle provided a complex synthesis of the various philosophies existing prior to him. It was above all from his teachings that the West inherited its intellectual lexicon, as well as problems and methods of inquiry. As a result, his philosophy has exerted a unique influence on almost every form of knowledge in the West and it continues to be a subject of contemporary philosophical discussion.

Little is known about his life. Aristotle was born in the city of Stagira in Northern Greece. His father, Nicomachus, died when Aristotle was a child, and he was brought up by a guardian. At seventeen or eighteen years of age he joined Plato's Academy in Athens and remained there until the age of thirty-seven (c. 347 BC).[4] Shortly after Plato died, Aristotle left Athens and, at the request of Philip II of Macedon, tutored Alexander the Great beginning in 343 BC.[5] He established a library in the Lyceum which helped him to produce many of his hundreds of books on papyrus scrolls. Though Aristotle wrote many elegant treatises and dialogues for publication, only around a third of his original output has survived, none of it intended for publication.[6]

Aristotle's views on physical science profoundly shaped medieval scholarship. Their influence extended from Late Antiquity and the Early Middle Ages into the Renaissance, and were not replaced systematically until the Enlightenment and theories such as classical mechanics. Some of Aristotle's zoological observations found in his biology, such as on the hectocotyl (reproductive) arm of the octopus, were disbelieved until the 19th century. His works contain the earliest known formal study of logic, studied by medieval scholars such as Peter Abelard and John Buridan. Aristotle's influence on logic also continued well into the 19th century.

He influenced Islamic thought during the Middle Ages, as well as Christian theology, especially the Neoplatonism of the Early Church and the scholastic tradition of the Catholic Church. Aristotle was revered among medieval Muslim scholars as "The First Teacher" and among medieval Christians like Thomas Aquinas as simply "The Philosopher". His ethics, though always influential, gained renewed interest with the modern advent of virtue ethics, such as in the thinking of Alasdair MacIntyre and Philippa Foot.''';

  static String biasBio = '''Bias (/ˈbaɪəs/; Greek: Βίας ὁ Πριηνεύς; fl. 6th century BC) of Priene was a Greek sage. He is widely accepted as one of the Seven Sages of Greece and was renowned for his probity. Bias was born at Priene and was the son of Teutamus.[1] He is said to have been distinguished for his skill as an advocate, and for his use of it in defence of the right.[2] In reference to which Demodocus of Leros uttered the following saying – "If you are a judge, give a Prienian decision," and Hipponax said, "More powerful in pleading causes than Bias of Priene."[3]

He was always reckoned among the Seven Sages, and was mentioned by Dicaearchus as one of the Four to whom alone that title was universally given — the remaining three being Thales, Pittacus, and Solon.[4] Satyrus placed him at the head of the Seven Sages,[1] and even Heraclitus, who poured scorn on figures such as Hesiod and Pythagoras,[5] referred to Bias as "a man of more consideration than any."[6] One of the examples of his great goodness is the legend that says that Bias paid a ransom for some women who had been taken prisoner. After educating them as his own daughters, he sent them back to Messina, their homeland, and to their fathers.[1]

Bias is said to have died at a very advanced age while pleading a cause for his client. After he had finished speaking, he rested his head on his grandson. When the advocate on the opposite side had spoken, the judges decided in favor of Bias's client, by which time Bias had died.[2] The city gave him a magnificent funeral and inscribed on his tomb:[7]

Here Bias of Priene lies, whose name
Brought to his home and all Ionia fame.''';

  static String bionBio = '''Bion of Borysthenes (Greek: Βίων Βορυσθενίτης, gen.: Βίωνος; c. 325 – c. 250 BC) was a Greek philosopher. After being sold into slavery, and then released, he moved to Athens, where he studied in almost every school of philosophy. It is, however, for his Cynic-style diatribes that he is chiefly remembered. He satirized the foolishness of people, attacked religion, and eulogized philosophy. Bion was from the town of Olbia on the north coast of the Black Sea by the mouth of the river Borysthenes (modern-day Dnieper). He lived c. 325-c. 250 BC, but the exact dates of his birth and death are uncertain. Strabo[1] mentions him as a contemporary of Eratosthenes, who was born 275 BC. Diogenes Laërtius has preserved an account in which Bion describes his parentage to Antigonus II Gonatas, King of Macedonia.[2] His father was a freedman and a dealer in salt fish, with which he combined the occupation of smuggling. His mother, Olympia, was a Lacedaemonian prostitute. The whole family were sold as slaves, on account of some offence committed by the father. In consequence of this, Bion fell into the hands of a rhetorician, who made him his heir. Having burnt his patron's library, he went to Athens, and applied himself to philosophy, in the course of which study he embraced the tenets of almost every sect in succession. First he was an Academic studying under Xenocrates[3] and Crates of Athens,[4] then he became a Cynic,[4] (perhaps under Crates of Thebes), afterwards he attached to Theodorus,[5] the Cyrenaic philosopher whose alleged atheism is supposed to have influenced Bion,[6] and finally he became a pupil of Theophrastus the Peripatetic.[5] After the manner of the sophists of the period, Bion travelled through Greece and Macedonia, and was admitted to the literary circle at the court of Antigonus II Gonatas.[7] He subsequently taught philosophy at Rhodes,[8] and died at Chalcis in Euboea.[6]''';

  static String chilonBio = '''Chilon of Sparta (fl. 6th century BC) was a Spartan and one of the Seven Sages of Greece. Chilon was the son of Damagetus, and lived towards the beginning of the 6th century BC. Herodotus[1] speaks of him as contemporary with Hippocrates, the father of Peisistratus. Diogenes Laërtius states that he was an old man in the 52nd Olympiad (572 BC), and that he was elected an ephor (overseer) in Sparta in the 56th Olympiad (556/5 BC). Alcidamas states that he was a member of the Spartan assembly.[2] Diogenes Laërtius even goes so far as to claim that Chilon was also the first person who introduced the custom of joining the ephors to the kings as their counselors.[3]

Chilon is said to have helped to overthrow the tyranny at Sicyon, which became a Spartan ally. He is also credited with the change in Spartan policy leading to the development of the Peloponnesian League in the sixth century BC.[4] Another legend claims that he died of joy when his son gained the prize for boxing at the Olympic games,[5] and that his funeral was attended by all the Greeks assembled at the festival.[3]

One of his descendants married king Anaxandridas II of Sparta and bore his son, king Cleomenes I.''';


  static String cleobulusBio = '''Cleobulus (/ˌklioʊˈbjuːləs, kliˈɒbjələs/; Greek: Κλεόβουλος ὁ Λίνδιος, Kleoboulos ho Lindios; fl. 6th century BC[citation needed]) was a Greek poet and a native of Lindos. He is one of the Seven Sages of Greece. Cleobulus was the son of Evagoras and a citizen of Lindus in Rhodes.[1] Clement of Alexandria called Cleobulus king of the Lindians,[2] and Plutarch spoke of him as the tyrant.[3] The letter quoted by Diogenes Laërtius, in which Cleobulus invites Solon to Lindus as a democratic place of refuge from the tyrant Peisistratus in Athens, is undoubtedly a later forgery.[4] Cleobulus is also said to have studied philosophy in Egypt.[5] He had a daughter, Cleobulina, who found fame as a poet, composing riddles in hexameter verse.[5] Cleobulus is said to have lived to the age of seventy,[6] and to have been greatly distinguished, for strength and beauty of person.[5]''';

  static String critiasBio = '''Critias (/ˈkrɪtiəs/; Greek: Κριτίας, Kritias; c. 460 – 403 BC) was an ancient Athenian political figure and author. Born in Athens, Critias was the son of Callaeschrus and a first cousin of Plato's mother Perictione. He became a leading and violent member of the Thirty Tyrants. He also was an associate of Socrates, a fact that did not endear Socrates to the Athenian public.

Critias was noted in his day for his tragedies, elegies and prose works. Some, like Sextus Empiricus, believe that Critias wrote the Sisyphus fragment; others, however, attribute it to Euripides. His only known play is Peirithous, of which only a single 42-line fragment survives (Sextus Empir. p. 403, 1). In addition, eight shorter quotations from unidentified plays have come down to us. Critias gave an account of his ancestry which was later recorded in Plato's Timaeus. Critias's great-grandfather, Dropidas, was an intimate friend of Solon. Dropidas's son, also named Critias, was the grandfather and namesake of the author Critias.[1]

Critias was once a student of Socrates. The two had a strained relationship. However, it is said that Critias was the one who saved Socrates from persecution during the terror of the Thirty Tyrants.[2] However, Critias was very greedy, something that Socrates did not approve of.

After the fall of Athens to the Spartans, Critias, as one of the Thirty Tyrants, blacklisted many of its citizens. Most of his prisoners were executed and their wealth confiscated.

Critias was killed in a battle near Piraeus, the port of Athens, between a band of pro-democracy Athenian exiles led by Thrasybulus and members and supporters of the Thirty, aided by the Spartan garrison. In the battle, the exiles put the oligarchic forces to flight, ending the rule of the Thirty.[3][4]

According to Sextus Empiricus, Critias asserted that "a shrewd and clever-minded man invented for mortals a fear of the gods, so that there might be a deterrent for the wicked..." The text from which this excerpt originates is known both as the Critias fragment and the Sisyphus fragment as its origins are disputed. Most historians attribute the quotation to the character of Sisyphus in a play by Euripides.[5]''';

  static String democritusBio = '''Democritus (/dɪˈmɒkrɪtəs/; Greek: Δημόκριτος, Dēmókritos, meaning "chosen of the people"; c. 460 – c. 370 BC) was an Ancient Greek pre-Socratic philosopher primarily remembered today for his formulation of an atomic theory of the universe.[3]

Democritus was born in Abdera, Thrace,[4] around 460 BC, although there are disagreements about the exact year. His exact contributions are difficult to disentangle from those of his mentor Leucippus, as they are often mentioned together in texts. Their speculation on atoms, taken from Leucippus, bears a passing and partial resemblance to the 19th-century understanding of atomic structure that has led some to regard Democritus as more of a scientist than other Greek philosophers; however, their ideas rested on very different bases.[5] Largely ignored in ancient Athens, Democritus is said to have been disliked so much by Plato that the latter wished all of his books burned.[6] He was nevertheless well known to his fellow northern-born philosopher Aristotle, and was the teacher of Protagoras.[7]

Many consider Democritus to be the "father of modern science".[8] None of his writings have survived; only fragments are known from his vast body of work.[9]''';

  static String demosthenesBio = '''Demosthenes (/dɪˈmɒs.θəniːz/; Greek: Δημοσθένης, romanized: Dēmosthénēs; Attic Greek: [dɛːmosˈtʰenɛːs]; 384 – 12 October 322 BC) was a Greek statesman and orator of ancient Athens. His orations constitute a significant expression of contemporary Athenian intellectual prowess and provide an insight into the politics and culture of ancient Greece during the 4th century BC. Demosthenes learned rhetoric by studying the speeches of previous great orators. He delivered his first judicial speeches at the age of 20, in which he argued effectively to gain from his guardians what was left of his inheritance. For a time, Demosthenes made his living as a professional speech-writer (logographer) and a lawyer, writing speeches for use in private legal suits.

Demosthenes grew interested in politics during his time as a logographer, and in 354 BC he gave his first public political speeches. He went on to devote his most productive years to opposing Macedon's expansion. He idealized his city and strove throughout his life to restore Athens' supremacy and motivate his compatriots against Philip II of Macedon. He sought to preserve his city's freedom and to establish an alliance against Macedon, in an unsuccessful attempt to impede Philip's plans to expand his influence southward by conquering all the other Greek states.

After Philip's death, Demosthenes played a leading part in his city's uprising against the new king of Macedonia, Alexander the Great. However, his efforts failed and the revolt was met with a harsh Macedonian reaction. To prevent a similar revolt against his own rule, Alexander's successor in this region, Antipater, sent his men to track Demosthenes down. Demosthenes took his own life, to avoid being arrested by Archias of Thurii, Antipater's confidant.

The Alexandrian Canon compiled by Aristophanes of Byzantium and Aristarchus of Samothrace recognised Demosthenes as one of the ten greatest Attic orators and logographers. Longinus likened Demosthenes to a blazing thunderbolt and argued that he "perfected to the utmost the tone of lofty speech, living passions, copiousness, readiness, speed."[2] Quintilian extolled him as lex orandi ("the standard of oratory"). Cicero said of him that inter omnis unus excellat ("he stands alone among all the orators"), and also acclaimed him as "the perfect orator" who lacked nothing.[3]''';

  static String diogenesBio = '''Diogenes (/daɪˈɒdʒɪniːz/ dy-OJ-in-eez; Ancient Greek: Διογένης, romanized: Diogénēs [di.oɡénɛ͜ɛs]), also known as Diogenes the Cynic (Διογένης ὁ Κυνικός, Diogénēs ho Kynikós), was a Greek philosopher and one of the founders of Cynic philosophy. He was born in Sinope, an Ionian colony on the Black Sea,[1] in 412 or 404 BC and died at Corinth in 323 BC.[2]

Diogenes was a controversial figure. His father minted coins for a living, and Diogenes was banished from Sinope when he took to debasement of currency.[1] After being exiled, he moved to Athens and criticized many cultural conventions of the city. He modelled himself on the example of Heracles, and believed that virtue was better revealed in action than in theory. He used his simple lifestyle and behaviour to criticize the social values and institutions of what he saw as a corrupt, confused society. He had a reputation for sleeping and eating wherever he chose in a highly non-traditional fashion, and took to toughening himself against nature. He declared himself a cosmopolitan and a citizen of the world rather than claiming allegiance to just one place. There are many tales about his dogging Antisthenes' footsteps and becoming his "faithful hound".[3]

Diogenes holding a lamp during daylight searching for an honest man.
Diogenes Searching for an Honest Man (1640-1647) by Giovanni Benedetto Castiglione held at the National Gallery of Art
Diogenes made a virtue of poverty. He begged for a living and often slept in a large ceramic jar, or pithos, in the marketplace.[4] He became notorious for his philosophical stunts, such as carrying a lamp during the day, claiming to be looking for an honest man. He criticized Plato, disputed his interpretation of Socrates, and sabotaged his lectures, sometimes distracting listeners by bringing food and eating during the discussions. Diogenes was also noted for having mocked Alexander the Great, both in public and to his face when he visited Corinth in 336 BC.[5][6][7]

Diogenes was captured by pirates and sold into slavery, eventually settling in Corinth. There he passed his philosophy of Cynicism to Crates, who taught it to Zeno of Citium, who fashioned it into the school of Stoicism, one of the most enduring schools of Greek philosophy. No writings of Diogenes are known but there are some details of his life from anecdotes (chreia), especially from Diogenes Laërtius' book Lives and Opinions of Eminent Philosophers and some other sources.[8]''';

  static String epicharmusBio = '''Epicharmus of Kos or Epicharmus Comicus or Epicharmus Comicus Syracusanus (Greek: Ἐπίχαρμος ὁ Κῷος), thought to have lived between c. 550 and c. 460 BC, was a Greek dramatist and philosopher who is often credited with being one of the first comic writers, having originated the Doric or Sicilian comedic form.[1] Epicharmus' birthplace is not known, but late and fairly unreliable ancient commentators suggest a number of alternatives. The Suda (E 2766) records that he was either Syracusan by birth or from the Sikanian city of Krastos. Diogenes Laërtius (VIII 78) records that Epicharmus was born in Astypalea, the ancient capital of Kos on the Bay of Kamari, near modern-day Kefalos. Diogenes Laërtius also records that Epicharmus' father was the prominent physician Helothales, who moved the family to Megara in Sicily, when Epicharmus was just a few months old. Although raised according to the Asclepiad tradition of his father, as an adult Epicharmus became a follower of Pythagoras.[7]

All of this biographical information could be treated as suspect. More references to alternative origins and discussion of their likelihood can be found in Pickard-Cambridge's Tragedy, Comedy, Dithyramb, and more recently in Rodriguez Noriega Guillen's Epicarmo di Siracusa: Testimonios y Fragmentos.[8] The standard edition of his fragments by Kaibel has now been updated with the publication of Kassel and Austin's Poetae Comici Graeci. It is most likely that sometime after 484 BC, he lived in Syracuse, and worked as a poet for the tyrants Gelo and Hiero I. The subject matter of his poetry covered a broad range, from exhortations against intoxication and laziness to such unorthodox topics as mythological burlesque, but he also wrote on philosophy, medicine, natural science, linguistics, and ethics. Among many other philosophical and moral lessons, Epicharmus taught that the continuous exercise of virtue could overcome heredity, so that anyone had the potential to be a good person regardless of birth. He died in his 90s (according to a statement in Lucian,[9] he died at ninety-seven).

Diogenes Laërtius records that there was a bronze statue dedicated to him in Syracuse, by the inhabitants, for which Theocritus composed the following inscription:[10]

"As the bright sun excels the other stars,
As the sea far exceeds the river streams:
So does sage Epicharmus men surpass,
Whom hospitable Syracuse has crowned."

Theocritus' Epigram 18 (AP IX 60; Kassel and Austin Test. 18) was written in his honour.''';

  static String euclidBio = '''Euclid (/ˈjuːklɪd/; Ancient Greek: Εὐκλείδης – Eukleídēs, pronounced [eu̯.kleː.dɛːs]; fl. 300 BC), sometimes called Euclid of Alexandria[1] to distinguish him from Euclid of Megara, was a Greek mathematician, often referred to as the "founder of geometry"[1] or the "father of geometry". He was active in Alexandria during the reign of Ptolemy I (323–283 BC). His Elements is one of the most influential works in the history of mathematics, serving as the main textbook for teaching mathematics (especially geometry) from the time of its publication until the late 19th or early 20th century.[2][3][4] In the Elements, Euclid deduced the theorems of what is now called Euclidean geometry from a small set of axioms. Euclid also wrote works on perspective, conic sections, spherical geometry, number theory, and mathematical rigour.

The English name Euclid is the anglicized version of the Greek name Εὐκλείδης, which means "renowned, glorious".[5]''';

  static String euripedesBio = '''Euripides (/jʊəˈrɪpɪdiːz/;[1] Greek: Εὐριπίδης Eurīpídēs, pronounced [eu̯.riː.pí.dɛːs]; c. 480 – c. 406 BC) was a tragedian of classical Athens. Along with Aeschylus and Sophocles, he is one of the three ancient Greek tragedians for whom a significant number of plays have survived. Some ancient scholars attributed 95 plays to him but, according to the Suda, it was 92 at most. Of these, 18 or 19 have survived more or less complete (there has been debate about his authorship of Rhesus, largely on stylistic grounds)[2] and there are also fragments, some substantial, of most of the other plays. More of his plays have survived intact than those of Aeschylus and Sophocles together, partly because his popularity grew as theirs declined[3][4]—he became, in the Hellenistic Age, a cornerstone of ancient literary education, along with Homer, Demosthenes, and Menander.[5]

Euripides is identified with theatrical innovations that have profoundly influenced drama down to modern times, especially in the representation of traditional, mythical heroes as ordinary people in extraordinary circumstances. This new approach led him to pioneer developments that later writers adapted to comedy, some of which are characteristic of romance. Yet he also became "the most tragic of poets",[nb 1] focusing on the inner lives and motives of his characters in a way previously unknown.[6][7] He was "the creator of...that cage which is the theatre of Shakespeare's Othello, Racine's Phèdre, of Ibsen and Strindberg," in which "...imprisoned men and women destroy each other by the intensity of their loves and hates",[8] and yet he was also the literary ancestor of comic dramatists as diverse as Menander and George Bernard Shaw.[9]

Unique among writers of Ancient Athens, Euripides demonstrated sympathy towards the underrepresented members of society.[6][10] His male contemporaries were frequently shocked by the heresies he put into the mouths of characters, such as these words of his heroine Medea:

Sooner would I stand
Three times to face their battles, shield in hand,
Than bear one child![11]

His contemporaries associated him with Socrates as a leader of a decadent intellectualism, both of them being frequently lampooned by comic poets such as Aristophanes. Whereas Socrates was eventually put on trial and executed as a corrupting influence, Euripides chose a voluntary exile in old age, dying in Macedonia.[12] Recent scholarship casts doubt on ancient biographies of Euripides. For example, it is possible that he never visited Macedonia at all,[13] or, if he did, he might have been drawn there by King Archelaus with incentives that were also offered to other artists.[14]''';

  static String heraclitusBio = '''Heraclitus of Ephesus (/ˌhɛrəˈklaɪtəs/;[1] Greek: Ἡράκλειτος ὁ Ἐφέσιος, translit. Hērákleitos ho Ephésios; c. 535 – c. 475 BC, fl. 504/3 BC–501/0 BC[2]) son of Bloson[2], was a pre-Socratic Ionian Greek philosopher, and a native of the city of Ephesus, in modern-day Turkey and then part of the Persian Empire.

Due to the oracular and paradoxical nature of his philosophy, and his fondness for word play, he was called "The Obscure" even in antiquity. He wrote a single work, On Nature, but the obscurity is made worse by its remaining only in fragments. His cryptic utterances have been the subject of numerous interpretations. He has been seen variously as a "material monist or a process philosopher; a scientific cosmologist, a metaphysician, or mainly a religious thinker; an empiricist, a rationalist, or a mystic; a conventional thinker or a revolutionary; a developer of logic or one who denied the law of non-contradiction; the first genuine philosopher or an anti-intellectual obscurantist."[3]

He was of distinguished parentage but eschewed his privileged life for a lonely one as a philosopher. Little else is known about his early life and education. He regarded himself as self-taught and a pioneer of wisdom. He was considered a misanthrope given to depression; he was also called "the weeping philosopher", in contrast to Democritus, "the laughing philosopher".

Heraclitus believed the world was in accordance with Logos (literally, "word", "reason", or "account"). He also believed the world was ultimately made of fire. He was committed to a unity of opposites and harmony in the world. He was most famous for his insistence on ever-present change, or flux or becoming, as the characteristic feature of the world, as stated in the famous saying, "No man ever steps in the same river twice" as well as "Panta rhei", everything flows. This aspect of his philosophy is contrasted with that of Parmenides, who believed in being, and that nothing changes. Both had an influence on Plato and thus on all of Western philosophy.''';

  static String herodotusBio = '''Herodotus (/hɪˈrɒdətəs/; Ancient Greek: Ἡρόδοτος, Hēródotos, Attic Greek pronunciation: [hɛː.ró.do.tos]; c. 484 – c. 425 BC) was an ancient Greek historian who was born in Halicarnassus in the Persian Empire (modern-day Bodrum, Turkey). He is known for having written the book The Histories (Greek: Ἱστορίαι Historíai), a detailed record of his "inquiry" (ἱστορία historía) on the origins of the Greco-Persian Wars. He is widely considered to have been the first writer to have treated historical subjects using a method of systematic investigation—specifically, by collecting his materials and then critically arranging them into an historiographic narrative. On account of this, he is often referred to as "The Father of History," a title first conferred on him by the first-century BC Roman orator Cicero.[1]

Despite Herodotus's historical significance, little is known about his personal life. His Histories primarily deals with the lives of Croesus, Cyrus, Cambyses, Smerdis, Darius, and Xerxes and the battles of Marathon, Thermopylae, Artemisium, Salamis, Plataea, and Mycale; however, his many cultural, ethnographical, geographical, historiographical, and other digressions form a defining and essential part of the Histories and contain a wealth of information. Herodotus has been criticized for the fact that his book includes many obvious legends and fanciful accounts. Many authors, starting with the late fifth-century BC historian Thucydides, have accused him of making up stories for entertainment. However, Herodotus states that he is merely reporting what he has seen and been told, on several occasions saying that he does not himself believe the story that he reports. A sizable portion of the information he provides has since been confirmed by historians and archaeologists.''';

  static String hesiodBio = '''Hesiod (/ˈhiːsiəd, ˈhɛsiəd/;[1] Greek: Ἡσίοδος Hēsíodos) was a Greek poet generally thought by scholars to have been active between 750 and 650 BC, around the same time as Homer.[2][3] He is generally regarded as the first written poet in the Western tradition to regard himself as an individual persona with an active role to play in his subject.[4] Ancient authors credited Hesiod and Homer with establishing Greek religious customs.[5] Modern scholars refer to him as a major source on Greek mythology, farming techniques, early economic thought (he is sometimes considered history's first economist),[6] archaic Greek astronomy and ancient time-keeping.''';

  static String hippocratesBio = '''Hippocrates of Kos (/hɪˈpɒkrətiːz/; Greek: Ἱπποκράτης ὁ Κῷος, translit. Hippokrátēs ho Kṓos; c. 460 – c. 370 BC), also known as Hippocrates II, was a Greek physician of the Age of Pericles (Classical Greece), who is considered one of the most outstanding figures in the history of medicine. He is often referred to as the "Father of Medicine"[1] in recognition of his lasting contributions to the field as the founder of the Hippocratic School of Medicine. This intellectual school revolutionized Ancient Greek medicine, establishing it as a discipline distinct from other fields with which it had traditionally been associated (theurgy and philosophy), thus establishing medicine as a profession.[2][3]

However, the achievements of the writers of the Corpus, the practitioners of Hippocratic medicine and the actions of Hippocrates himself were often conflated; thus very little is known about what Hippocrates actually thought, wrote, and did. Hippocrates is commonly portrayed as the paragon of the ancient physician and credited with coining the Hippocratic Oath, which is still relevant and in use today. He is also credited with greatly advancing the systematic study of clinical medicine, summing up the medical knowledge of previous schools, and prescribing practices for physicians through the Hippocratic Corpus and other works.[2][4]''';

  static String homerBio = '''Homer (/ˈhoʊmər/; Ancient Greek: Ὅμηρος Greek pronunciation: [hómɛːros], Hómēros) is the semi-legendary author of the Iliad and the Odyssey, two epic poems that are the central works of ancient Greek literature. The Iliad is set during the Trojan War, the ten-year siege of the city of Troy by a coalition of Greek kingdoms. It focuses on a quarrel between King Agamemnon and the warrior Achilles lasting a few weeks during the last year of the war. The Odyssey focuses on the ten-year journey home of Odysseus, king of Ithaca, after the fall of Troy. Many accounts of Homer's life circulated in classical antiquity, the most widespread being that he was a blind bard from Ionia, a region of central coastal Anatolia in present-day Turkey. Modern scholars consider these accounts legendary.[2][3][4]

The Homeric Question – concerning by whom, when, where and under what circumstances the Iliad and Odyssey were composed – continues to be debated. Broadly speaking, modern scholarly opinion falls into two groups. One holds that most of the Iliad and (according to some) the Odyssey are the works of a single poet of genius. The other considers the Homeric poems to be the result of a process of working and reworking by many contributors, and that "Homer" is best seen as a label for an entire tradition.[4] It is generally accepted that the poems were composed at some point around the late eighth or early seventh century BC.[5]

The poems are in Homeric Greek, also known as Epic Greek, a literary language which shows a mixture of features of the Ionic and Aeolic dialects from different centuries; the predominant influence is Eastern Ionic.[6][7] Most researchers believe that the poems were originally transmitted orally.[8] From antiquity until the present day, the influence of Homeric epic on Western civilization has been great, inspiring many of its most famous works of literature, music, art and film.[9] The Homeric epics were the greatest influence on ancient Greek culture and education; to Plato, Homer was simply the one who "has taught Greece" – ten Hellada pepaideuken.[10][11]''';

  static String isocratesBio = '''Isocrates (/aɪˈsɒkrəˌtiːz/; Ancient Greek: Ἰσοκράτης [isokrátɛ̂ːs]; 436–338 BC), an ancient Greek rhetorician, was one of the ten Attic orators. Among the most influential Greek rhetoricians of his time, Isocrates made many contributions to rhetoric and education through his teaching and written works.

Greek rhetoric is commonly traced to Corax of Syracuse, who first formulated a set of rhetorical rules in the fifth century BC. His pupil Tisias was influential in the development of the rhetoric of the courtroom, and by some accounts was the teacher of Isocrates. Within two generations, rhetoric had become an important art, its growth driven by social and political changes such as democracy and courts of law.''';

  static String parmenidesBio = '''Parmenides of Elea (/pɑːrˈmɛnɪdiːz ... ˈɛliə/; Greek: Παρμενίδης ὁ Ἐλεάτης; fl. late sixth or early fifth century BC) was a pre-Socratic Greek philosopher from Elea in Magna Graecia (meaning "Great Greece," the term which Romans gave to Greek-populated coastal areas in Southern Italy). He is thought to have been in his prime (or "floruit") around 475 BC.[a]

Parmenides has been considered the founder of metaphysics or ontology and has influenced the whole history of Western philosophy.[5][b] He was the founder of the Eleatic school of philosophy, which also included Zeno of Elea and Melissus of Samos. Zeno's paradoxes of motion were to defend Parmenides' view.

The single known work by Parmenides is a poem, On Nature, only fragments of which survive, containing the first sustained argument in the history of philosophy. In it, Parmenides prescribes two views of reality. In "the way of truth" (a part of the poem), he explains how all reality is one, change is impossible, and existence is timeless, uniform, and necessary. In "the way of opinion", Parmenides explains the world of appearances, in which one's sensory faculties lead to conceptions which are false and deceitful, yet he does offer a cosmology.

Parmenides' philosophy has been explained with the slogan "whatever is is, and what is not cannot be". He is also credited with the phrase out of nothing nothing comes. He argues that "A is not" can never be thought or said truthfully, and thus despite appearances everything exists as one, giant, unchanging thing. This is generally considered one of the first digressions into the philosophical concept of being, and has been contrasted with Heraclitus's statement that "No man ever steps into the same river twice" as one of the first digressions into the philosophical concept of becoming. Scholars have generally believed that either Parmenides was responding to Heraclitus, or Heraclitus to Parmenides.

Parmenides' views have remained relevant in philosophy, even thousands of years after his death. Alexius Meinong, much like Parmenides, defended the view that even the "golden mountain" is real since it can be talked about. The rivalry between Heraclitus and Parmenides has been also been re-introduced in debates in the philosophy of time between A theory and B theory.''';

  static String perianderBio = '''Periander (/ˌpɛriˈændər/; Greek: Περίανδρος; died c. 585 BC), was the Second Tyrant of the Cypselid dynasty that ruled over Corinth. Periander's rule brought about a prosperous time in Corinth's history, as his administrative skill made Corinth one of the wealthiest city states in Greece.[1] Several accounts state that Periander was a cruel and harsh ruler, but others[citation needed] claim that he was a fair and just king who worked to ensure that the distribution of wealth in Corinth was more or less even. He is often considered one of the Seven Sages of Greece, men of the 6th century BC who were renowned for centuries for their wisdom. (The other Sages were most often considered to be Thales, Solon, Cleobulus, Chilon, Bias, and Pittacus.)''';

  static String periclesBio = '''Pericles (/ˈpɛrɪkliːz/; Attic Greek: Περικλῆς Periklēs, pronounced [pe.ri.klɛ̂ːs] in Classical Attic; c. 495 – 429 BC) was a prominent and influential Greek statesman, orator and general of Athens during its golden age – specifically the time between the Persian and Peloponnesian wars. He was descended, through his mother, from the powerful and historically influential Alcmaeonid family. Pericles had such a profound influence on Athenian society that Thucydides, a contemporary historian, acclaimed him as "the first citizen of Athens".[1] Pericles turned the Delian League into an Athenian empire, and led his countrymen during the first two years of the Peloponnesian War. The period during which he led Athens, roughly from 461 to 429 BC, is sometimes known as the "Age of Pericles", though the period thus denoted can include times as early as the Persian Wars, or as late as the next century.

Pericles promoted the arts and literature; it is principally through his efforts that Athens acquired the reputation of being the educational and cultural center of the ancient Greek world. He started an ambitious project that generated most of the surviving structures on the Acropolis (including the Parthenon). This project beautified and protected the city, exhibited its glory, and gave work to the people.[2] Pericles also fostered Athenian democracy to such an extent that critics call him a populist.[3][4] He, along with several members of his family, succumbed to the Plague of Athens in 429 BC, which weakened the city-state during a protracted conflict with Sparta.''';

  static String pindarBio = '''Pindar (/ˈpɪndər/; Greek: Πίνδαρος Pindaros, [píndaros]; Latin: Pindarus; c. 518 – 438 BC) was an Ancient Greek lyric poet from Thebes. Of the canonical nine lyric poets of ancient Greece, his work is the best preserved. Quintilian wrote, "Of the nine lyric poets, Pindar is by far the greatest, in virtue of his inspired magnificence, the beauty of his thoughts and figures, the rich exuberance of his language and matter, and his rolling flood of eloquence, characteristics which, as Horace rightly held, make him inimitable."[2] His poems can also, however, seem difficult and even peculiar. The Athenian comic playwright Eupolis once remarked that they "are already reduced to silence by the disinclination of the multitude for elegant learning".[3] Some scholars in the modern age also found his poetry perplexing, at least until the 1896 discovery of some poems by his rival Bacchylides; comparisons of their work showed that many of Pindar's idiosyncrasies are typical of archaic genres rather than of only the poet himself. His poetry, while admired by critics, still challenges the casual reader and his work is largely unread among the general public.[4]

Pindar was the first Greek poet to reflect on the nature of poetry and on the poet's role.[5] Like other poets of the Archaic Age, he has a profound sense of the vicissitudes of life, but he also articulates a passionate faith in what men can achieve by the grace of the gods, most famously expressed in the conclusion to one of his Victory Odes:[6]

Creatures of a day! What is anyone?
What is anyone not? A dream of a shadow
Is our mortal being. But when there comes to men
A gleam of splendour given of heaven,
Then rests on them a light of glory
And blessed are their days. (Pythian 8)[7][8]

His poetry illustrates the beliefs and values of Archaic Greece at the dawn of the classical period.[9]''';

  static String pittacusBio = '''Pittacus (/ˈpɪtəkəs/; Greek: Πιττακός; c. 640 – 568 BC) was an ancient Mytilenaen military general and one of the Seven Sages of Greece. Pittacus was a native of Mytilene and son of Hyrradius. He became a Mytilenaean general who, with his army, was victorious in the battle against the Athenians and their commander Phrynon. In consequence of this victory, the Mytilenaeans held Pittacus in the greatest honour and presented the supreme power into his hands. After ten years of reign, he resigned his position and the city and constitution were brought into good order.

When the Athenians were about to attack his city, Pittacus challenged their general to a single combat, with the understanding that the result should decide the war, and much bloodshed be thereby avoided. The challenge was accepted, and he killed his enemy with a broad sword. He was then chosen ruler of his city and governed for ten years, during which time he made laws in poetry, one of which was to this effect: "A crime committed by a person when drunk should receive double the punishment that it would merit if the offender were sober." His great motto was this: "Whatever you do, do it well."[1]

Some authors mention that he had a son called Tyrrhaeus. The legend says that his son was killed and when the murderer was brought before Pittacus, he dismissed the man and said, "Pardon is better than repentance." Of this matter, Heraclitus says that he had the murderer into his power and then released him, saying, "Pardon is better than punishment."

Pittacus said that "[It] is a hard thing to be a good man." In Plato's Protagoras, Socrates discusses this saying at length with Protagoras, and Prodicus of Ceos calls "barbarian" the Aeolic dialect that Pittacus spoke: "He didn't know to distinguish the words correctly, being from Lesbos, and having been raised with a barbarian dialect."[2]

He flourished about the forty-second Olympiad. Having lived more than seventy years, he died in the third year of the fifty-second Olympiad (568 BC).''';

  static String platoBio = '''Plato (/ˈpleɪtoʊ/ PLAY-toe;[2] Greek: Πλάτων Plátōn, pronounced [plá.tɔːn] in Classical Attic; 428/427 or 424/423 – 348/347 BC) was an Athenian philosopher during the Classical period in Ancient Greece, founder of the Platonist school of thought, and the Academy, the first institution of higher learning in the Western world.

He is widely considered the pivotal figure in the history of Ancient Greek and Western philosophy, along with his teacher, Socrates, and his most famous student, Aristotle.[a] Plato has also often been cited as one of the founders of Western religion and spirituality.[4] The so-called Neoplatonism of philosophers like Plotinus and Porphyry influenced Saint Augustine and thus Christianity. Alfred North Whitehead once noted: "the safest general characterization of the European philosophical tradition is that it consists of a series of footnotes to Plato."[5]

Plato was the innovator of the written dialogue and dialectic forms in philosophy. Plato is also considered the founder of Western political philosophy. His most famous contribution is the theory of Forms known by pure reason, in which Plato presents a solution to the problem of universals known as Platonism (also ambiguously called either Platonic realism or Platonic idealism). He is also the namesake of Platonic love and the Platonic solids.

His own most decisive philosophical influences are usually thought to have been along with Socrates, the pre-Socratics Pythagoras, Heraclitus and Parmenides, although few of his predecessors' works remain extant and much of what we know about these figures today derives from Plato himself.[b] Unlike the work of nearly all of his contemporaries, Plato's entire body of work is believed to have survived intact for over 2,400 years.[7] Although their popularity has fluctuated over the years, the works of Plato have never been without readers since the time they were written.[8]''';

  static String plutarchBio = '''Plutarch (/ˈpluːtɑːrk/; Greek: Πλούταρχος, Ploútarkhos; Koine Greek: [ˈplutarkʰos]; AD 46–after 119)[1] was a Greek Middle Platonist philosopher,[2] biographer, essayist, and priest at the Temple of Apollo. He is known primarily for his Parallel Lives and Moralia.[3] Upon becoming a Roman citizen, he was named Lucius Mestrius Plutarchus (Λούκιος Μέστριος Πλούταρχος).[a] Plutarch was born to a prominent family in the small town of Chaeronea, about 80 kilometres (50 mi) east of Delphi, in the Greek region of Boeotia. His family was wealthy. The name of Plutarch's father has not been preserved, but based on the common Greek custom of repeating a name in alternate generations, it was probably Nikarchus (Nίκαρχoς). The name of Plutarch's grandfather was Lamprias, as he attested in Moralia[4] and in his Life of Antony.

His brothers, Timon and Lamprias, are frequently mentioned in his essays and dialogues, which speak of Timon in particular in the most affectionate terms. Rualdus, in his 1624 work Life of Plutarchus, recovered the name of Plutarch's wife, Timoxena, from internal evidence afforded by his writings. A letter is still extant, addressed by Plutarch to his wife, bidding her not to grieve too much at the death of their two-year-old daughter, who was named Timoxena after her mother. He hinted at a belief in reincarnation in that letter of consolation.[5]

The exact number of his sons is not certain, although two of them, Autobulus and the second Plutarch, are often mentioned. Plutarch's treatise De animae procreatione in Timaeo is dedicated to them, and the marriage of his son Autobulus is the occasion of one of the dinner parties recorded in the "Table Talk". Another person, Soklarus, is spoken of in terms which seem to imply that he was Plutarch's son, but this is nowhere definitely stated. His treatise on marriage questions, addressed to Eurydice and Pollianus, seems to speak of the latter as having been recently an inmate of his house, but without any clear evidence on whether she was his daughter or not.[6]

Plutarch was the uncle of Sextus of Chaeronea, who was one of the teachers of Marcus Aurelius, and who may have been the same person as the philosopher Sextus Empiricus.

Plutarch studied mathematics and philosophy at the Academy of Athens under Ammonius from 66 to 67.[7]

At some point, Plutarch received Roman citizenship. As evidenced by his new name, Lucius Mestrius Plutarchus, his sponsor for citizenship was Lucius Mestrius Florus, a Roman of consular status whom Plutarch also used as a historical source for his Life of Otho.[8]

He lived most of his life at Chaeronea, and was initiated into the mysteries of the Greek god Apollo. For many years Plutarch served as one of the two priests at the temple of Apollo at Delphi, the site of the famous Delphic Oracle, twenty miles from his home. He probably took part in the Eleusinian Mysteries.[9] By his writings and lectures Plutarch became a celebrity in the Roman Empire, yet he continued to reside where he was born, and actively participated in local affairs, even serving as mayor. At his country estate, guests from all over the empire congregated for serious conversation, presided over by Plutarch in his marble chair. Many of these dialogues were recorded and published, and the 78 essays and other works which have survived are now known collectively as the Moralia.[10]''';

  static String polybiusBio = '''Polybius (/pəˈlɪbiəs/; Greek: Πολύβιος, Polýbios; c.  200 – c.  118 BC)[2] was a Greek historian of the Hellenistic period noted for his work The Histories, which covered the period of 264–146 BC in detail. The work describes the rise of the Roman Republic to the status of dominance in the ancient Mediterranean world. It includes his eyewitness account of the Sack of Carthage and Corinth in 146 BC, and the Roman annexation of mainland Greece after the Achaean War.

Polybius is important for his analysis of the mixed constitution or the separation of powers in government, which was influential on Montesquieu's The Spirit of the Laws and the framers of the United States Constitution. He was also noted for witnessing the events that he recorded.[3]

The leading expert on Polybius was F. W. Walbank (1909–2008), who for 50 years published studies related to him, including a long commentary of his Histories and a biography.[4]''';

  static String protagorasBio = '''Protagoras (/proʊˈtæɡərəs/; Greek: Πρωταγόρας; c. 490 BC – c. 420 BC)[1] was a pre-Socratic Greek philosopher. He is numbered as one of the sophists by Plato. In his dialogue Protagoras, Plato credits him with inventing the role of the professional sophist.

Protagoras also is believed to have created a major controversy during ancient times through his statement that, "Man is the measure of all things", interpreted by Plato to mean that there is no absolute truth but that which individuals deem to be the truth.

Although there is reason to question the extent of the interpretation of his arguments that has followed, that concept of individual relativity was revolutionary for the time, and contrasted with other philosophical doctrines that claimed the universe was based on something objective, outside human influence or perceptions.''';

  static String pythagorasBio = '''Pythagoras of Samos[a] (c. 570 – c. 495 BC)[b] was an ancient Ionian Greek philosopher and the eponymous founder of Pythagoreanism. His political and religious teachings were well known in Magna Graecia and influenced the philosophies of Plato, Aristotle, and, through them, Western philosophy. Knowledge of his life is clouded by legend, but he appears to have been the son of Mnesarchus, a gem-engraver on the island of Samos. Modern scholars disagree regarding Pythagoras's education and influences, but they do agree that, around 530 BC, he travelled to Croton in southern Italy, where he founded a school in which initiates were sworn to secrecy and lived a communal, ascetic lifestyle. This lifestyle entailed a number of dietary prohibitions, traditionally said to have included vegetarianism, although modern scholars doubt that he ever advocated for complete vegetarianism.

The teaching most securely identified with Pythagoras is metempsychosis, or the "transmigration of souls", which holds that every soul is immortal and, upon death, enters into a new body. He may have also devised the doctrine of musica universalis, which holds that the planets move according to mathematical equations and thus resonate to produce an inaudible symphony of music. Scholars debate whether Pythagoras developed the numerological and musical teachings attributed to him, or if those teachings were developed by his later followers, particularly Philolaus of Croton. Following Croton's decisive victory over Sybaris in around 510 BC, Pythagoras's followers came into conflict with supporters of democracy and Pythagorean meeting houses were burned. Pythagoras may have been killed during this persecution, or escaped to Metapontum, where he eventually died.

In antiquity, Pythagoras was credited with many mathematical and scientific discoveries, including the Pythagorean theorem, Pythagorean tuning, the five regular solids, the Theory of Proportions, the sphericity of the Earth, and the identity of the morning and evening stars as the planet Venus. It was said that he was the first man to call himself a philosopher ("lover of wisdom")[c] and that he was the first to divide the globe into five climatic zones. Classical historians debate whether Pythagoras made these discoveries, and many of the accomplishments credited to him likely originated earlier or were made by his colleagues or successors. Some accounts mention that the philosophy associated with Pythagoras was related to mathematics and that numbers were important, but it is debated to what extent, if at all, he actually contributed to mathematics or natural philosophy.

Pythagoras influenced Plato, whose dialogues, especially his Timaeus, exhibit Pythagorean teachings. Pythagorean ideas on mathematical perfection also impacted ancient Greek art. His teachings underwent a major revival in the first century BC among Middle Platonists, coinciding with the rise of Neopythagoreanism. Pythagoras continued to be regarded as a great philosopher throughout the Middle Ages and his philosophy had a major impact on scientists such as Nicolaus Copernicus, Johannes Kepler, and Isaac Newton. Pythagorean symbolism was used throughout early modern European esotericism, and his teachings as portrayed in Ovid's Metamorphoses influenced the modern vegetarian movement.''';

  static String socratesBio = '''Socrates (/ˈsɒkrətiːz/;[2] Ancient Greek: Σωκρᾰ́της, romanized: Sōkrátēs, [sɔːkrátɛːs]; c. 470 – 399 BC)[3][4] was a classical Greek (Athenian) philosopher credited as one of the founders of Western philosophy, and as being the first moral philosopher[5][6] of the Western ethical tradition of thought.[7][8][9] An enigmatic figure, he made no writings, and is known chiefly through the accounts of classical writers writing after his lifetime, particularly his students Plato and Xenophon. Other sources include the contemporaneous Antisthenes, Aristippus, and Aeschines of Sphettos. Aristophanes, a playwright, is the main contemporary author to have written plays mentioning Socrates during Socrates' lifetime, though a fragment of Ion of Chios' Travel Journal provides important information about Socrates' youth.[10][11]

Plato's dialogues are among the most comprehensive accounts of Socrates to survive from antiquity, from which Socrates has become renowned for his contributions to the fields of ethics and epistemology. It is this Platonic Socrates who lends his name to the concepts of Socratic irony and the Socratic method, or elenchus. However, questions remain regarding the distinction between the real-life Socrates and Plato's portrayal of Socrates in his dialogues.[12]

Socrates exerted a strong influence on philosophers in later antiquity and in the modern era. Depictions of Socrates in art, literature and popular culture have made him one of the most widely known figures in the Western philosophical tradition.''';

  static String solonBio = '''Solon (Greek: Σόλων Sólōn [só.lɔːn]; c.  630 – c.  560 BC)[1] was an Athenian statesman, lawmaker and poet. He is remembered particularly for his efforts to legislate against political, economic and moral decline in archaic Athens.[2] His reforms failed in the short-term, yet he is often credited with having laid the foundations for Athenian democracy.[3][4][5] He wrote poetry for pleasure, as patriotic propaganda, and in defence of his constitutional reform.

Modern knowledge of Solon is limited by the fact that his works only survive in fragments and appear to feature interpolations by later authors and by the general paucity of documentary and archaeological evidence covering Athens in the early 6th century BC.[6] Ancient authors such as Herodotus and Plutarch are the main sources, but wrote about Solon long after his death. 4th-century orators, such as Aeschines, tended to attribute to Solon all the laws of their own, much later times.[2][7]''';

  static String sophoclesBio = '''Sophocles (/ˈsɒfəkliːz/;[1] Greek: Σοφοκλῆς Sophoklēs, pronounced [so.pʰo.klɛ̂ːs]; c. 497/6 – winter 406/5 BC)[2] is one of three ancient Greek tragedians whose plays have survived. His first plays were written later than or contemporary with those of Aeschylus, and earlier than or contemporary with those of Euripides. Sophocles wrote over 120 plays[3] during the course of his life, but only seven have survived in a complete form: Ajax, Antigone, Women of Trachis, Oedipus Rex, Electra, Philoctetes and Oedipus at Colonus.[4] For almost 50 years, Sophocles was the most celebrated playwright in the dramatic competitions of the city-state of Athens that took place during the religious festivals of the Lenaea and the Dionysia. He competed in 30 competitions, won 24, and was never judged lower than second place. Aeschylus won 13 competitions, and was sometimes defeated by Sophocles, while Euripides won four competitions.[5]

The most famous tragedies of Sophocles feature Oedipus and also Antigone: they are generally known as the Theban plays, although each play was actually a part of a different tetralogy, the other members of which are now lost. Sophocles influenced the development of drama, most importantly by adding a third actor, thereby reducing the importance of the chorus in the presentation of the plot. He also developed his characters to a greater extent than earlier playwrights such as Aeschylus.[6]''';

  static String thalesBio = '''Thales of Miletus (/ˈθeɪliːz/ THAY-leez; Greek: Θαλῆς (ὁ Μιλήσιος), Thalēs; c. 624/623 – c. 548/545 BC) was a Greek mathematician, astronomer and pre-Socratic philosopher from Miletus in Ionia, Asia Minor. He was one of the Seven Sages of Greece. Many, most notably Aristotle, regarded him as the first philosopher in the Greek tradition,[1][2] and he is otherwise historically recognized as the first individual in Western civilization known to have entertained and engaged in scientific philosophy.[3][4]

Thales is recognized for breaking from the use of mythology to explain the world and the universe, and instead explaining natural objects and phenomena by theories and hypotheses, in a precursor to modern science. Almost all the other pre-Socratic philosophers followed him in explaining nature as deriving from a unity of everything based on the existence of a single ultimate substance, instead of using mythological explanations. Aristotle regarded him as the founder of the Ionian School and reported Thales' hypothesis that the originating principle of nature and the nature of matter was a single material substance: water.[5]

In mathematics, Thales used geometry to calculate the heights of pyramids and the distance of ships from the shore. He is the first known individual to use deductive reasoning applied to geometry, by deriving four corollaries to Thales' theorem. He is the first known individual to whom a mathematical discovery has been attributed.[6]''';

  static String themistoclesBio = '''Themistocles (/θəˈmɪstəkliːz/; Greek: Θεμιστοκλῆς Greek pronunciation: [tʰemistoklɛ̂ːs] Themistoklẽs; "Glory of the Law";[3] c. 524–459 BC)[1][2] was an Athenian politician and general. He was one of a new breed of non-aristocratic politicians who rose to prominence in the early years of the Athenian democracy. As a politician, Themistocles was a populist, having the support of lower-class Athenians, and generally being at odds with the Athenian nobility. Elected archon in 493 BC, he convinced the polis to increase the naval power of Athens, a recurring theme in his political career. During the first Persian invasion of Greece he fought at the Battle of Marathon[4] (490 BC) and was possibly one of the ten Athenian strategoi (generals) in that battle.[citation needed]

In the years after Marathon, and in the run-up to the second Persian invasion of 480–479 BC, Themistocles became the most prominent politician in Athens. He continued to advocate for a strong Athenian Navy, and in 483 BC he persuaded the Athenians to build a fleet of 200 triremes; these proved crucial in the forthcoming conflict with Persia. During the second invasion, he effectively commanded the Greek allied navy at the battles of Artemisium and Salamis in 480 BC. Due to his subterfuge, the Allies successfully lured the Persian fleet into the Straits of Salamis, and the decisive Greek victory there was the turning point of the war. The invasion was conclusively repulsed the following year after the Persian defeat at the land Battle of Plataea.

After the conflict ended, Themistocles continued his pre-eminence among Athenian politicians. However, he aroused the hostility of Sparta by ordering the re-fortification of Athens, and his perceived arrogance began to alienate him from the Athenians. In 472 or 471 BC, he was ostracised, and went into exile in Argos. The Spartans now saw an opportunity to destroy Themistocles, and implicated him in the alleged treasonous plot of 478 BC of their own general Pausanias. Themistocles thus fled from Greece. Alexander I of Macedon (r. 498–454 BC) temporarily gave him sanctuary at Pydna before he traveled to Asia Minor, where he entered the service of the Persian king Artaxerxes I (reigned 465–424 BC). He was made governor of Magnesia, and lived there for the rest of his life.

Themistocles died in 459 BC, probably of natural causes.[1][5] His reputation was posthumously rehabilitated, and he was re-established as a hero of the Athenian (and indeed Greek) cause. Themistocles can still reasonably be thought of as "the man most instrumental in achieving the salvation of Greece" from the Persian threat, as Plutarch describes him. His naval policies would have a lasting impact on Athens as well, since maritime power became the cornerstone of the Athenian Empire and golden age. Thucydides assessed Themistocles as "a man who exhibited the most indubitable signs of genius; indeed, in this particular he has a claim on our admiration quite extraordinary and unparalleled".[6]''';

  static String theocritusBio = '''Theocritus (/θiːˈɒkrɪtəs/; Greek: Θεόκριτος, Theokritos; born c. 300 BC, died after 260 BC) was a Sicilian poet and the creator of Ancient Greek pastoral poetry.[1] Little is known of Theocritus beyond what can be inferred from his writings. We must, however, handle these with some caution, since some of the poems (Idylls; Εἰδύλλια) commonly attributed to him have little claim to authenticity. It is clear that at a very early date two collections were made: one consisting of poems whose authorship was doubtful yet formed a corpus of bucolic poetry, the other a strict collection of those works considered to have been composed by Theocritus himself. [2]

Theocritus was from Sicily, as he refers to Polyphemus, the Cyclops in the Odyssey, as his "countryman." He also probably lived in Alexandria for a while, where he wrote about everyday life, notably Pharmakeutria. It is also speculated that Theocritus was born in Syracuse, lived on the island of Kos, and lived in Egypt during the time of Ptolemy II.

The record of these recensions is preserved by two epigrams, one of which proceeds from Artemidorus of Tarsus, a grammarian, who lived in the time of Sulla and is said to have been the first editor of these poems. He says, "The Muses of country song were once scattered, but now they are all together in one pen, in one flock."[3] The second epigram is anonymous, and runs as follows: "The Chian is another man, but I, Theocritus, who wrote these poems, am one of the great populace of Syracuse, the son of Praxagoras and renowned Philinna; and the Muse I have adopted is no alien."[4] The last line may mean that he wrote nothing but bucolic poems, or that he only wrote in Doric. The assertion that he was from Syracuse appears to be upheld by allusions in the Idylls (7.7, 28.16–18).[2]

The information concerning his parentage bears the stamp of genuineness, and disposes of a rival theory based upon a misinterpretation of Idyll 7—which made him the son of one Simichus. A larger collection, possibly more extensive than that of Artemidorus, and including poems of doubtful authenticity, was known to the author of the Suda, who says: "Theocritus wrote the so-called bucolic poems in the Doric dialect. Some persons also attribute to him the following: Daughters of Proetus, Hopes, Hymns, Heroines, Dirges, Lyrics, Elegies, Iambics, Epigrams."[2]

The first of these may have been known to Virgil, who refers to the Proetides at Eclogue 6.48. The spurious poem 21 may have been one of the Hopes, and poem 26 may have been one of the Heroines; elegiacs are found in 8.33—60, and the spurious epitaph on Bion may have been one of the Dirges. The other classes are all represented in the larger collection which has come down to us.[2]''';

  static String theognisBio = '''Theognis of Megara (Greek: Θέογνις ὁ Μεγαρεύς, Théognis ho Megareús) was a Greek lyric poet active in approximately the sixth century BC. The work attributed to him consists of gnomic poetry quite typical of the time, featuring ethical maxims and practical advice about life. He was the first Greek poet known to express concern over the eventual fate and survival of his own work[1] and, along with Homer, Hesiod and the authors of the Homeric Hymns, he is among the earliest poets whose work has been preserved in a continuous manuscript tradition (the work of other archaic poets is preserved as scattered fragments).[2] In fact more than half of the extant elegiac poetry of Greece before the Alexandrian period is included in the approximately 1,400 lines of verse attributed to him [3] (though several poems traditionally attributed to him were composed by others, e.g. Solon, Euenos).[4] Some of these verses inspired ancient commentators to value him as a moralist[5] yet the entire corpus is valued today for its "warts and all" portrayal of aristocratic life in archaic Greece.[6]

The verses preserved under Theognis' name are written from the viewpoint of an aristocrat confronted by social and political revolution typical of Greek cities in the archaic period. Part of his work is addressed to Cyrnus, who is presented as his erōmenos. The author of the poems celebrated him in his verse and educated him in the aristocratic values of the time, yet Cyrnus came to symbolize much about his imperfect world that the poet bitterly resented:

πᾶσι δ᾽ ὅσοισι μέμηλε καὶ ἐσσομένοισιν ἀοιδὴ
:ἔσσῃ ὁμῶς, ὄφρ᾽ ἂν γῆ τε καὶ ἠέλιος,
αὐτὰρ ἐγὼν ὀλίγης παρὰ σεῦ οὐ τυγχάνω αἰδοῦς,
:ἀλλ᾽ ὥσπερ μικρὸν παῖδα λόγοις μ᾽ ἀπατᾷς.

[7]
To all to whom there is pleasure in song and to people yet unborn
You also will be a song, while the earth and sun remain,
Yet I am treated by you without even the least mark of respect
And, as if I were a child, you have deceived me with words.

In spite of such self-disclosures, almost nothing is known about Theognis the man: little is recorded by ancient sources and modern scholars question the authorship of most of the poems preserved under his name.[8]''';

  static String theophrastusBio = '''Theophrastus (/ˌθiːəˈfræstəs/; Greek: Θεόφραστος Theόphrastos; c. 371 – c. 287 BC),[3] a Greek native of Eresos in Lesbos[4] (Λέσβος Lésvos), was the successor to Aristotle in the Peripatetic school. He came to Athens at a young age and initially studied in Plato's school. After Plato's death, he attached himself to Aristotle who took to Theophrastus in his writings. When Aristotle fled Athens, Theophrastus took over as head of the Lyceum.[4] Theophrastus presided over the Peripatetic school for thirty-six years, during which time the school flourished greatly. He is often considered the father of botany for his works on plants. After his death, the Athenians honoured him with a public funeral. His successor as head of the school was Strato of Lampsacus.

The interests of Theophrastus were wide ranging, extending from biology and physics to ethics and metaphysics. His two surviving botanical works, Enquiry into Plants (Historia Plantarum) and On the Causes of Plants, were an important influence on Renaissance science. There are also surviving works On Moral Characters, On Sense Perception, and On Stones, as well as fragments on Physics and Metaphysics. In philosophy, he studied grammar and language and continued Aristotle's work on logic. He also regarded space as the mere arrangement and position of bodies, time as an accident of motion, and motion as a necessary consequence of all activity.[citation needed] In ethics, he regarded happiness as depending on external influences as well as on virtue.''';

  static String thucydidesBio = '''Thucydides (/θjuːˈsɪdɪdiːz/; Ancient Greek: Θουκυδίδης Thoukūdídēs [tʰuːkyːdídɛːs]; c.  460 – c.  400 BC) was an Athenian historian and general. His History of the Peloponnesian War recounts the fifth-century BC war between Sparta and Athens until the year 411 BC. Thucydides has been dubbed the father of "scientific history" by those who accept his claims to have applied strict standards of impartiality and evidence-gathering and analysis of cause and effect, without reference to intervention by the deities, as outlined in his introduction to his work.[2][3][4]

He also has been called the father of the school of political realism, which views the political behavior of individuals and the subsequent outcomes of relations between states as ultimately mediated by, and constructed upon, the emotions of fear and self-interest.[5] His text is still studied at universities and military colleges worldwide.[6] The Melian dialogue is regarded as a seminal work of international relations theory, while his version of Pericles' Funeral Oration is widely studied by political theorists, historians, and students of the classics.

More generally, Thucydides developed an understanding of human nature to explain behaviour in such crises as plagues, massacres, and civil war.''';

  static String xenophanesBio = '''Xenophanes of Colophon (/zəˈnɒfəniːz/;[1][2] Ancient Greek: Ξενοφάνης ὁ Κολοφώνιος [ksenopʰánɛːs ho kolopʰɔ̌ːnios]; c. 570 – c. 475 BC)[3] was a Greek philosopher, theologian, poet, and social and religious critic. Xenophanes is seen as one of the most important presocratic philosophers. Eusebius quoting Aristocles of Messene says that Xenophanes was the founder of a line of philosophy that culminated in Pyrrhonism. This line begins with Xenophenes and goes through Parmenides, Melissus of Samos, Zeno of Elea, Leucippus, Democritus, Protagoras, Nessas of Chios, Metrodorus of Chios, Diogenes of Smyrna, Anaxarchus, and finally Pyrrho.[4] It had also been common since antiquity to see Xenophanes as the teacher of Zeno of Elea, the colleague of Parmenides, and generally associated with the Eleatic school, but common opinion today is likewise that this is false.[5]

Xenophanes lived a life of travel, having left Ionia at the age of 25 and continuing to travel throughout the Greek world for another 67 years.[6] Some scholars say he lived in exile in Sicily.[7] Knowledge of his views comes from fragments of his poetry, surviving as quotations by later Greek writers. To judge from these, his elegiac and iambic[8] poetry criticized and satirized a wide range of ideas, including Homer and Hesiod, the belief in the pantheon of anthropomorphic gods and the Greeks' veneration of athleticism. He is the earliest Greek poet who claims explicitly to be writing for future generations, creating "fame that will reach all of Greece, and never die while the Greek kind of songs survives."[9]''';

  static String xenophonBio = '''Xenophon of Athens (/ˈzɛnəfən, -ˌfɒn/; Greek: Ξενοφῶν, Ancient Greek: [ksenopʰɔ̂ːn], Xenophōn; c. 430 BC[2] – 354 BC) was an ancient Greek historian, philosopher and soldier.[3] Xenophon became commander of the Ten Thousand at about 30, with noted military historian Theodore Ayrault Dodge saying of him, “the centuries since have devised nothing to surpass the genius of this warrior.”[4] He established the precedent for many logistical operations and was among the first to use flanking maneuvers and feints. A student of Socrates, Xenophon is known for his writings and recording the history of his time (late-5th and early-4th centuries BC), in such works as Anabasis and Hellenica, which covered the final seven years and the aftermath of the Peloponnesian War (431–404 BC), thus representing a thematic continuation of Thucydides' History of the Peloponnesian War.

As one of the Ten Thousand (Greek mercenaries), Xenophon participated in Cyrus the Younger's failed campaign to claim the Persian throne from his brother Artaxerxes II of Persia. He recounted the events in Anabasis, his most notable history. Like Plato, Xenophon is an authority on Socrates, about whom he wrote several books of dialogues (the Memorabilia) and an Apology of Socrates to the Jury, which recounts the philosopher's trial in 399 BC.

Despite being born an Athenian citizen, Xenophon was also associated with Sparta, the traditional enemy of Athens. His pro-oligarchic politics, military service under Spartan generals in the Persian campaign and elsewhere, and his friendship with King Agesilaus II endeared Xenophon to the Spartans. Some of his works have a pro–Spartan bias, especially the royal biography Agesilaus and the Constitution of the Spartans.

Xenophon's works span several genres and are written in plain-language Attic Greek, for which reason they serve as translation exercises for contemporary students of the Ancient Greek language. In the Lives and Opinions of Eminent Philosophers, Diogenes Laërtius observed that, as a writer, Xenophon of Athens was known as the “Attic Muse”, for the sweetness of his diction (2.6[clarification needed]).''';

  //

  final QuotesData epictetus = new QuotesData('Epictetus', 'c. 55 AD', 'c. 135 AD', epictetusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Epicteti_Enchiridion_Latinis_versibus_adumbratum_%28Oxford_1715%29_frontispiece.jpg/1024px-Epicteti_Enchiridion_Latinis_versibus_adumbratum_%28Oxford_1715%29_frontispiece.jpg', epictetusBio);
  final QuotesData cato = new QuotesData('Cato the Younger', '95 BC', '46 BC', catoQuotes, 'https://upload.wikimedia.org/wikipedia/commons/8/8d/Cato_Volubilis_bronze_bust.jpg', catoBio);
  final QuotesData chrysippus = new QuotesData('Chryssipus', 'c. 279 BC', 'c. 206 BC', chrysippusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Chrysippos_BM_1846.jpg/1280px-Chrysippos_BM_1846.jpg', chrysippusBio);
  final QuotesData cleanthes = new QuotesData('Cleanthes', 'c. 330 BC', 'c. 230 BC', cleanthesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/5/54/Cleanthes_from_L._Annaei_Senecae_philosophi_Opera%2C_1605%2C_title_page_detail.png', cleanthesBio);
  final QuotesData gaius = new QuotesData('Gaius Musonius Rufus', 'c. 20 AD', 'c. 101 AD', gaiusQuotes, 'https://optimizehq.imgix.net/authors/headshots/gaius-musonius-rufus.jpg', gaiusBio);
  final QuotesData seneca = new QuotesData('Seneca the Younger', 'c. 4 BC', 'AD 65', senecaQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Duble_herma_of_Socrates_and_Seneca_Antikensammlung_Berlin_07.jpg/1280px-Duble_herma_of_Socrates_and_Seneca_Antikensammlung_Berlin_07.jpg', senecaBio);
  final QuotesData marcusAurelius = new QuotesData('Marcus Aurelius', 'AD 121', 'AD 180', marcusAureliusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/L%27Image_et_le_Pouvoir_-_Buste_cuirass%C3%A9_de_Marc_Aur%C3%A8le_ag%C3%A9_-_3.jpg/1024px-L%27Image_et_le_Pouvoir_-_Buste_cuirass%C3%A9_de_Marc_Aur%C3%A8le_ag%C3%A9_-_3.jpg', marcusAureliusBio);
  final QuotesData zeno = new QuotesData('Zeno of Citium', '334 BC', '262 BC', zenoQuotes, 'https://upload.wikimedia.org/wikipedia/commons/b/bc/Paolo_Monti_-_Servizio_fotografico_%28Napoli%2C_1969%29_-_BEIC_6353768.jpg', zenoBio);
  final QuotesData aeschines = new QuotesData('Aeschines', '389 BC', '314 BC', aeschinesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/0/07/Aeschines_bust.jpg', aeschinesBio);
  final QuotesData aeschylus = new QuotesData('Aeschylus', '525 BC', '456 BC', aeschylusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Herma_of_Aeschylus%2C_Klas08.jpg/1024px-Herma_of_Aeschylus%2C_Klas08.jpg', aeschylusBio);
  final QuotesData aesop = new QuotesData('Aesop', '620 BC', '560 BC', aesopQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Vel%C3%A1zquez_-_Esopo_%28Museo_del_Prado%2C_1639-41%29.jpg/800px-Vel%C3%A1zquez_-_Esopo_%28Museo_del_Prado%2C_1639-41%29.jpg', aesopBio);
  final QuotesData agathon = new QuotesData('Agathon', '448 BCE', '400 BCE', agathonQuotes, 'https://i.pinimg.com/originals/00/69/dc/0069dcf6111501f7c59360e7c89595c2.jpg', agathonBio);
  final QuotesData agesilaus = new QuotesData('Agesilaus II', 'c. 444 BC', 'c. 360 BC', agesilausQuotes, 'https://upload.wikimedia.org/wikipedia/commons/7/79/Spartan_King_Agesilaus.jpg', agesilausBio);
  final QuotesData alcaeus = new QuotesData('Alcaeus of Mytilene', 'c. 620 BC', 'c. 6th Century BC', alcaeusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Alkaios_Sappho_Staatliche_Antikensammlungen_2416_n1.jpg/1920px-Alkaios_Sappho_Staatliche_Antikensammlungen_2416_n1.jpg', alcaeusBio);
  final QuotesData alexander = new QuotesData('Alexander the Great', '356 BC', '323 BC', alexanderQuotes, 'https://upload.wikimedia.org/wikipedia/commons/0/00/Alejandro_Magno%2C_Alexander_The_Great_Bust_Alexander_BM_1857_%28cropped%29.jpg', alexanderBio);
  final QuotesData anacreon = new QuotesData('Anacreon', '582 BC', '485 BC', anacreonQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Anacreon_Louvre.jpg/1280px-Anacreon_Louvre.jpg', anacreonBio);
  final QuotesData anaxagoras = new QuotesData('Anaxagoras', 'c. 500 BC', '428 BC', anaxagorasQuotes, 'https://upload.wikimedia.org/wikipedia/commons/2/2c/Anaxagoras_Lebiedzki_Rahl.jpg', anaxagorasBio);
  final QuotesData anaximander= new QuotesData('Anaximander', 'c. 610 BC', 'c. 546 BC', anaximanderQuotes, 'https://upload.wikimedia.org/wikipedia/commons/4/44/Anaximander_Mosaic_%28cropped%2C_with_sundial%29.jpg', anaximanderBio);
  final QuotesData antisthenes = new QuotesData('Antisthenes', 'c. 445 BC', 'c. 365 BC', antisthenesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Antisthenes_Pio-Clementino_Inv288.jpg/1280px-Antisthenes_Pio-Clementino_Inv288.jpg', antisthenesBio);
  final QuotesData archilochus = new QuotesData('Archilocus', 'c. 680 BC', 'c. 645 BC', archilochusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Archilochus_01_pushkin.jpg/1024px-Archilochus_01_pushkin.jpg', archilochusBio);
  final QuotesData archimedes = new QuotesData('Archimedes', 'c. 287 BC', 'c. 212 BC', archimedesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Domenico-Fetti_Archimedes_1620.jpg/1280px-Domenico-Fetti_Archimedes_1620.jpg', archimedesBio);
  final QuotesData aristippus = new QuotesData('Aristippus of Cyrene', 'c. 435 BC', 'c. 356 BCE', aristippusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/2/25/Aristippus.jpg', aristippusBio);
  final QuotesData aristophanes = new QuotesData('Aristophanes', 'c. 446 BC', 'c. 386 BC', aristophanesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/8/83/Aristofanes.jpg', aristophanesBio);
  final QuotesData aristotle = new QuotesData('Aristotle', '384 BC', '322 BC', aristotleQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Aristotle_Altemps_Inv8575.jpg/1280px-Aristotle_Altemps_Inv8575.jpg', aristotleBio);
  final QuotesData bias = new QuotesData('Bias of Priene', 'c. 6th Century BC', 'c. 6th Century BC', biasQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Bias_Pio-Clementino_Inv279.jpg/1024px-Bias_Pio-Clementino_Inv279.jpg', biasBio);
  final QuotesData bion = new QuotesData('Bion of Borysthenes', 'c. 325 BC', 'c. 250 BC', bionQuotes, 'https://upload.wikimedia.org/wikipedia/commons/9/9b/Antikythera_philosopher.JPG', bionBio);
  final QuotesData chilon = new QuotesData('Chilon of Sparta', 'c. 620 BC', 'c. 520 BC', chilonQuotes, 'https://upload.wikimedia.org/wikipedia/commons/d/d4/Chilon_of_Sparta.jpg', chilonBio);
  final QuotesData cleobulus = new QuotesData('Cleobulus', 'c. 6th Century BC', 'c. 6th Century BC', cleobulusQuotes, 'https://novoscriptorium.files.wordpress.com/2020/02/cleobulus_of_lindos.jpg?w=640', cleobulusBio);
  final QuotesData critias = new QuotesData('Critias', 'c. 460 BC', 'c. 403 BC', critiasQuotes, 'https://www.iep.utm.edu/wp-content/media/critias.jpg', critiasBio);
  final QuotesData democritus = new QuotesData('Democritus', 'c. 460 BC', 'c. 370 BC', democritusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/b/b9/Democritus2.jpg', democritusBio);
  final QuotesData demosthenes = new QuotesData('Demosthenes', 'c. 384 BC', 'c. 322 BC', demosthenesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Demosthenes_orator_Louvre.jpg/440px-Demosthenes_orator_Louvre.jpg', demosthenesBio);
  final QuotesData diogenes = new QuotesData('Diogenes', 'c. 412 BC', 'c. 323 BC', diogenesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/b/b1/Jean-L%C3%A9on_G%C3%A9r%C3%B4me_-_Diogenes_-_Walters_37131.jpg', diogenesBio);
  final QuotesData epicharmus = new QuotesData('Epicharmus', 'c. 550 BC', 'c. 460 BC', epicharmusQuotes, 'https://greatestgreeks.files.wordpress.com/2017/06/pictorial_history_of_epicarmopoet_and_writer.jpg?w=257&h=213', epicharmusBio);
  final QuotesData euclid = new QuotesData('Euclid', '323 BC ', '283 BC', euclidQuotes, 'https://upload.wikimedia.org/wikipedia/commons/c/c4/EuclidStatueOxford.jpg', euclidBio);
  final QuotesData euripedes = new QuotesData('Euripedes', 'c. 480 BC', 'c. 406 BC', euripedesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Euripides_Pio-Clementino_Inv302.jpg/1280px-Euripides_Pio-Clementino_Inv302.jpg', euripedesBio);
  final QuotesData heraclitus = new QuotesData('Heraclitus', 'c. 535 BC', 'c. 475 BC', heraclitusQuotes, 'https://upload.wikimedia.org/wikipedia/en/8/86/Heraklit.jpg', heraclitusBio);
  final QuotesData herodotus = new QuotesData('Herodotus', 'c. 484 BC', 'c. 425 BC', herodotusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Marble_bust_of_Herodotos_MET_DT11742.jpg/1280px-Marble_bust_of_Herodotos_MET_DT11742.jpg', herodotusBio);
  final QuotesData hesiod = new QuotesData('Hesiod', 'c. 700 BC', 'c. 700 BC', hesiodQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Pseudo-Seneca_MAN_Napoli_Inv5616_n02.jpg/1280px-Pseudo-Seneca_MAN_Napoli_Inv5616_n02.jpg', hesiodBio);
  final QuotesData hippocrates = new QuotesData('Hippocrates', 'c. 460 BC', '377 BC', hippocratesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/7/7c/Hippocrates.jpg', hippocratesBio);
  final QuotesData homer = new QuotesData('Homer', 'Unknown (Close to 700 BC)', 'Unknown', homerQuotes, 'https://upload.wikimedia.org/wikipedia/commons/1/1c/Homer_British_Museum.jpg', homerBio);
  final QuotesData isocrates = new QuotesData('Isocrates', '436 BC', '338 BC', isocratesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Isocrates_pushkin.jpg/1280px-Isocrates_pushkin.jpg', isocratesBio);
  final QuotesData parmenides = new QuotesData('Parmenides', 'c. 515 BC', 'c. 450 BC', parmenidesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/e/ed/Parmenides.jpg', parmenidesBio);
  final QuotesData periander = new QuotesData('Periander', 'Prior to 635 BC', '585 BC', perianderQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Periander_Pio-Clementino_Inv276.jpg/1024px-Periander_Pio-Clementino_Inv276.jpg', perianderBio);
  final QuotesData pericles = new QuotesData('Pericles', 'ca. 495 BC', '429 BC', periclesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Pericles_Pio-Clementino_Inv269_n2.jpg/1024px-Pericles_Pio-Clementino_Inv269_n2.jpg', periclesBio);
  final QuotesData pindar = new QuotesData('Pindar', 'c. 518 BC', '438 BC', pindarQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Pindar_statue.jpg/1024px-Pindar_statue.jpg', pindarBio);
  final QuotesData pittacus = new QuotesData('Pittacus of Mytilene', 'c. 640 BC', '568 BC', pittacusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/d/da/Pittacos_Louvre_Ma_3572.jpg', pittacusBio);
  final QuotesData plato = new QuotesData('Plato', 'c. 427 BC', 'c. 347 BC', platoQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Plato_Silanion_Musei_Capitolini_MC1377.jpg/1024px-Plato_Silanion_Musei_Capitolini_MC1377.jpg', platoBio);
  final QuotesData plutarch = new QuotesData('Plutarch', 'c. 46 AD', 'c. 120 AD', plutarchQuotes, 'https://upload.wikimedia.org/wikipedia/commons/3/34/Plutarch_of_Chaeronea-03.jpg', plutarchBio);
  final QuotesData polybius = new QuotesData('Polybius', 'c. 203 BC', '120 BC', polybiusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/c/c8/Stele_des_Polybios.jpg', polybiusBio);
  final QuotesData protagoras = new QuotesData('Protagoras', 'c. 481 BC', 'c. 420 BC', protagorasQuotes, 'https://www.iep.utm.edu/wp-content/media/protagoras.jpg', protagorasBio);
  final QuotesData pythagoras = new QuotesData('Pythagoras', 'c. 570 BC', 'c. 496 BC', pythagorasQuotes, 'https://upload.wikimedia.org/wikipedia/commons/1/1a/Kapitolinischer_Pythagoras_adjusted.jpg', pythagorasBio);
  final QuotesData socrates = new QuotesData('Socrates', 'c. 470 BC', '399 BC', socratesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Socrates_Louvre.jpg/1280px-Socrates_Louvre.jpg', socratesBio);
  final QuotesData solon = new QuotesData('Solon', 'c. 638 BCE', 'c. 558 BCE', solonQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Ignoto%2C_c.d._solone%2C_replica_del_90_dc_ca_da_orig._greco_del_110_ac._ca%2C_6143.JPG/440px-Ignoto%2C_c.d._solone%2C_replica_del_90_dc_ca_da_orig._greco_del_110_ac._ca%2C_6143.JPG', solonBio);
  final QuotesData sophocles = new QuotesData('Sophocles', '496 BC', '406 BC', sophoclesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/1/19/Sophocles_pushkin.jpg', sophoclesBio);
  final QuotesData thales = new QuotesData('Thales', 'c. 624 BC', 'c. 546 BC', thalesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Illustrerad_Verldshistoria_band_I_Ill_107.jpg/1024px-Illustrerad_Verldshistoria_band_I_Ill_107.jpg', thalesBio);
  final QuotesData themistocles = new QuotesData('Themistocles', 'c. 524 BC', '459 BC', themistoclesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/8/86/Illustrerad_Verldshistoria_band_I_Ill_116.png', themistoclesBio);
  final QuotesData theocritus = new QuotesData('Theocritus', 'c. 300 BC', '260 BC', theocritusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/3/3a/Theocritus-greek-poet-born-in-syracuse.jpg', theocritusBio);
  final QuotesData theognis = new QuotesData('Theognis of Megara', '570 BC', '485 BC', theognisQuotes, 'https://upload.wikimedia.org/wikipedia/commons/7/7f/Tanagra%2C_5th_century_kylix_a_symposiast_sings_Theognis_o_paidon_kalliste.png', theognisBio);
  final QuotesData theophrastus = new QuotesData('Theophrastus', 'c. 370 BC', 'c. 286 BC', theophrastusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/d/d3/Teofrasto_Orto_botanico_detail.jpg', theophrastusBio);
  final QuotesData thucydides= new QuotesData('Thucydides', 'c. 472 BC', 'c. 400 BC', thucydidesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/1/19/Thucydides_pushkin02.jpg', thucydidesBio);
  final QuotesData xenophanes = new QuotesData('Xenophanes', '570 BC', '480 BC', xenophanesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Xenophanes_in_Thomas_Stanley_History_of_Philosophy.jpg', xenophanesBio);
  final QuotesData xenophon = new QuotesData('Xenophon', 'c. 431 BC', 'c. 345 BC', xenophonQuotes, 'https://upload.wikimedia.org/wikipedia/commons/8/8e/Xenophon.jpg', xenophonBio);
  //-X-X-X-X-X end of quotes data

  //Returns the text that is displayed on the 'today' screen
  Widget homeScreen() {
    var rng = new Random();
    var num = rng.nextInt(61) + 1;
    QuotesData obj;

    switch(num){
      case 1: {
        obj = epictetus;
      }
      break;

      case 2: {
        obj = cato;
      }
      break;

      case 3: {
        obj = chrysippus;
      }
      break;

      case 4: {
        obj = cleanthes;
      }
      break;

      case 5: {
        obj = gaius;
      }
      break;

      case 6: {
        obj = seneca;
      }
      break;

      case 7: {
        obj = marcusAurelius;
      }
      break;

      case 8: {
        obj = zeno;
      }
      break;

      case 9: {
        obj = aeschines;
      }
      break;

      case 10: {
        obj = aeschylus;
      }
      break;

      case 11: {
        obj = aesop;
      }
      break;

      case 12: {
        obj = agathon;
      }
      break;

      case 13: {
        obj = agesilaus;
      }
      break;

      case 14: {
        obj = alcaeus;
      }
      break;

      case 15: {
        obj = alexander;
      }
      break;

      case 16: {
        obj = anacreon;
      }
      break;

      case 17: {
        obj = anaxagoras;
      }
      break;

      case 18: {
        obj = anaximander;
      }
      break;

      case 19: {
        obj = antisthenes;
      }
      break;

      case 20: {
        obj = archilochus;
      }
      break;

      case 21: {
        obj = archimedes;
      }
      break;

      case 22: {
        obj = aristippus;
      }
      break;

      case 23: {
        obj = aristophanes;
      }
      break;

      case 24: {
        obj = aristotle;
      }
      break;

      case 25: {
        obj = bias;
      }
      break;

      case 26: {
        obj = bion;
      }
      break;

      case 27: {
        obj = chilon;
      }
      break;

      case 28: {
        obj = cleobulus;
      }
      break;

      case 29: {
        obj = critias;
      }
      break;

      case 30:{
        obj = democritus;
      }
      break;

      case 31: {
        obj = demosthenes;
      }
      break;

      case 32: {
        obj = diogenes;
      }
      break;

      case 33: {
        obj = epicharmus;
      }
      break;

      case 34: {
        obj = euclid;
      }
      break;

      case 35: {
        obj = euripedes;
      }
      break;

      case 36: {
        obj = heraclitus;
      }
      break;

      case 37: {
        obj = herodotus;
      }
      break;

      case 38: {
        obj = hesiod;
      }
      break;

      case 39: {
        obj = hippocrates;
      }
      break;

      case 40: {
      obj = homer;
      }
      break;

      case 41: {
        obj = isocrates;
      }
      break;

      case 42: {
        obj = parmenides;
      }
      break;

      case 43: {
        obj = periander;
      }
      break;

      case 44: {
        obj = pericles;
      }
      break;

      case 45: {
        obj = pindar;
      }
      break;

      case 46: {
        obj = pittacus;
      }
      break;

      case 47: {
        obj = plato;
      }
      break;

      case 48: {
        obj = plutarch;
      }
      break;

      case 49: {
        obj = polybius;
      }
      break;

      case 50: {
        obj = protagoras;
      }
      break;

      case 51: {
        obj = pythagoras;
      }
      break;

      case 52: {
        obj = socrates;
      }
      break;

      case 53: {
        obj = solon;
      }
      break;

      case 54: {
        obj = sophocles;
      }
      break;

      case 55: {
        obj = thales;
      }
      break;

      case 56: {
        obj = themistocles;
      }
      break;

      case 57: {
        obj = theocritus;
      }
      break;

      case 58: {
        obj = theognis;
      }
      break;

      case 59: {
        obj = theophrastus;
      }
      break;

      case 60: {
        obj = thucydides;
      }
      break;

      case 61: {
        obj = xenophanes;
      }
      break;

      case 62: {
        obj = xenophon;
      }
      break;
    }

    var index = rng.nextInt(obj.getQuotes().length);


    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AutoSizeText(
                      obj.getQuoteAtIndex(index),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Garamond',
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                  maxLines: 10,
                ),
                Divider(height: 30.0),
                Text(
                  obj.getAuthorName(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Cinzel',
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),

          ),
        ),
        Divider(height: 30.0),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue.shade100, Colors.blue.shade500]),
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
          constraints: BoxConstraints(
            maxWidth: 100.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.autorenew),
                color: Colors.grey.shade700,
                tooltip: 'New quote',
                onPressed: toggleState,
                iconSize: 30.0,
              ),
              IconButton(
                icon: Icon(Icons.info),
                tooltip: 'More info',
                color: Colors.grey.shade700,
                onPressed: (){
                  setState((){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InfoPage(),
                        settings: RouteSettings(
                          arguments: obj,
                        ),
                      ),
                    );
                  },);
                },
                iconSize: 30.0,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    //The home screen BottomNavigationBar implementation
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Dark Dunes.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: homeScreen(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.today),
            title: Text('Today'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_library),
            title: Text('Stoic'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text('Classical'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('About'),
          )
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue.shade50,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.red.shade900,
        onTap: _onItemTapped,
      ),
    );
  }
}



//A placeholder widget; landing page for navigation
class SampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Hello',
        ),
      ),
    );
  }
}

//Widget for header of StickyHeader
Widget stickyHeaderContainer(String text){
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [Colors.blue.shade50, Colors.blue.shade900]
      ),
    ),
    height: 40.0,
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    alignment: Alignment.centerLeft,
    child: Text(text,
    style: TextStyle(
      color: Colors.white,
      fontFamily: 'Cinzel',
      fontWeight: FontWeight.bold,
    )),

  );
}

class AboutPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/red_valley.jpg'),
              fit: BoxFit.cover,
              colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.6),
                  BlendMode.dstATop),

            ),
          ),

          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Designed and Developed by',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,

                    )),
                Divider(height: 20.0,
                    color: Colors.transparent),
                Text('Aqib Ahmed',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,

                    )
                ),
                Divider(height: 10.0,
                    color: Colors.transparent),
                Text('2020',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,

                    )),
                Divider(height: 40.0,
                    color: Colors.transparent),
                Text('Image Assets from Unsplash',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,

                    )),
                Divider(height: 20.0,
                    color: Colors.transparent),
                Text('Thanks To: ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,

                    )),

                Divider(height: 10.0, color: Colors.transparent),
                Text('Jeremy Bishop',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,

                    )),
                Text('Josh Rose',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,

                    )),
                Text('Dimitar Donovski',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,

                    )),
                Text('Sven King',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,

                    )),



              ]
          )
      ),
    );
  }
}




class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {

  @override
  Widget build(BuildContext context) {
    QuotesData data = ModalRoute.of(context).settings.arguments;
    String author = data.getAuthorName();
    String born = data.getBirthYear();
    String death = data.getDeathYear();
    String bio = data.getBio();
    return Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/white_background.jpg'),
              fit: BoxFit.cover,
              colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.4),
                  BlendMode.dstATop),
            ),
          ),

          child:
              CustomScrollView(slivers: <Widget>[
                SliverAppBar(
                  pinned: false,
                  expandedHeight: 500.0,
                  backgroundColor: Colors.transparent,
                  flexibleSpace: FlexibleSpaceBar(
                      background: Image(
                        image: NetworkImage(data.getImageLink()),
                        fit: BoxFit.cover,
                      )),
                ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Divider(height: 30.0,
                        color: Colors.transparent),
                        Text(author,
                        textAlign:TextAlign.center,
                        style: TextStyle(
                            fontSize: 30.0,
                            fontFamily: 'Garamond',
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        Divider(height: 30.0,
                            color: Colors.transparent),
                        Text('Born: $born',
                        textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Cinzel',
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0,
                          ),),
                        Divider(height: 15.0,
                            color: Colors.transparent),
                        Text('Died: $death',
                        textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Cinzel',
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0,
                          ),),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                          child: Text(bio,
                              textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Garamond',
                          )),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
    );
  }
}



//This widget is reached when the 'Classical' button is pressed on the bottomnavigationbar
class LibraryScreen extends StatefulWidget {
  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {

  static String aeschinesBio = '''Aeschines (/ˈɪskɪniːz/; Greek: Αἰσχίνης, Aischínēs; 389–314 BC) was a Greek statesman and one of the ten Attic orators. ''';

  static String aeschylusBio = '''Aeschylus (UK: /ˈiːskɪləs/,[1] US: /ˈɛskɪləs/;[2] Greek: Αἰσχύλος Aiskhylos, pronounced [ai̯s.kʰý.los]; c. 525/524 – c. 456/455 BC) was an ancient Greek tragedian. He is often described as the father of tragedy.[3][4] Academics' knowledge of the genre begins with his work,[5] and understanding of earlier tragedies is largely based on inferences from his surviving plays.[6] According to Aristotle, he expanded the number of characters in the theatre and allowed conflict among them; characters previously had interacted only with the chorus.[nb 1]

Only seven of his estimated seventy to ninety plays have survived, and there is a long-standing debate regarding his authorship of one of these plays, Prometheus Bound, which some believe his son Euphorion actually wrote. Fragments of some other plays have survived in quotations and more continue to be discovered on Egyptian papyrus, often giving further insights into his work.[7] He was probably the first dramatist to present plays as a trilogy; his Oresteia is the only ancient example of the form to have survived.[8] At least one of his plays was influenced by the Persians' second invasion of Greece (480–479 BC). This work, The Persians, is one of very few classical Greek tragedies concerned with contemporary events and the only one to survive to the present,[9] as well as a useful source of information about its period. The significance of the war against Persia was so great to Aeschylus and the Greeks that Aeschylus' epitaph commemorates his participation in the Greek victory at Marathon while making no mention of his success as a playwright. Despite this, Aeschylus's work – particularly the Oresteia – is generally acclaimed by modern critics and scholars.''';

  static String aesopBio = '''Aesop (/ˈiːsɒp/ EE-sop or /ˈeɪsɒp/ AY-sop; Greek: Αἴσωπος, Aísopos; c. 620–564 BCE) was a Greek fabulist and storyteller credited with a number of fables now collectively known as Aesop's Fables. Although his existence remains unclear and no writings by him survive, numerous tales credited to him were gathered across the centuries and in many languages in a storytelling tradition that continues to this day. Many of the tales are characterized by animals and inanimate objects that speak, solve problems, and generally have human characteristics.

Scattered details of Aesop's life can be found in ancient sources, including Aristotle, Herodotus, and Plutarch. An ancient literary work called The Aesop Romance tells an episodic, probably highly fictional version of his life, including the traditional description of him as a strikingly ugly slave (δοῦλος) who by his cleverness acquires freedom and becomes an adviser to kings and city-states. Older spellings of his name have included Esop(e) and Isope. Depictions of Aesop in popular culture over the last 2500 years have included many works of art and his appearance as a character in numerous books, films, plays, and television programs.''';

  static String agathonBio = '''Agathon (/ˈæɡəθɒn/; Ancient Greek: Ἀγάθων; c. 448 – c. 400 BC) was an Athenian tragic poet whose works have been lost. He is best known for his appearance in Plato's Symposium, which describes the banquet given to celebrate his obtaining a prize for his first tragedy at the Lenaia in 416.[1] He is also a prominent character in Aristophanes' comedy the Thesmophoriazusae.''';

  static String agesilausBio = '''Agesilaus II (/əˌdʒɛsəˈleɪəs/; Greek: Ἀγησίλαος Agesilaos; c. 444/443 – c. 360 BC), was a king (basileus) of the ancient Greek city-state of Sparta[a] and a member of the Eurypontid dynasty ruling from 398 to about 360 BC, during most of which time he was, in Plutarch's words, "as good as though commander and king of all Greece", and was for the whole of it greatly identified with his country's deeds and fortunes.[1] Small in stature and lame from birth, Agesilaus became ruler somewhat unexpectedly in his mid-forties. His reign saw successful military incursions into various states in Asia Minor, as well as successes in the Corinthian War; however, several diplomatic decisions resulted in Sparta becoming increasingly isolated prior to his death at the age of 84 in Cyrenaica.

Agesilaus was greatly admired by his friend, the historian Xenophon, who wrote a minor work about him titled Agesilaus.''';

  static String alcaeusBio = '''Alcaeus of Mytilene (/ælˈsiːəs/; Ancient Greek: Ἀλκαῖος ὁ Μυτιληναῖος, Alkaios ho Mutilēnaios; c. 625/620 – c. 580 BC)[1][2] was a lyric poet from the Greek island of Lesbos who is credited with inventing the Alcaic stanza. He was included in the canonical list of nine lyric poets by the scholars of Hellenistic Alexandria. He was a contemporary and an alleged lover of Sappho, with whom he may have exchanged poems. He was born into the aristocratic governing class of Mytilene, the main city of Lesbos, where he was involved in political disputes and feuds.''';

  static String alexanderBio = '''Alexander III of Macedon (Greek: Αλέξανδρος Γʹ ὁ Μακεδών, Aléxandros III ho Makedȏn; 20/21 July 356 BC – 10/11 June 323 BC), commonly known as Alexander the Great (Greek: Ἀλέξανδρος ὁ Μέγας, Aléxandros ho Mégas), was a king (basileus) of the ancient Greek kingdom of Macedon[a] and a member of the Argead dynasty. He was born in Pella in 356 BC and succeeded his father Philip II to the throne at the age of 20. He spent most of his ruling years on an unprecedented military campaign through western Asia and northeast Africa, and by the age of thirty, he had created one of the largest empires of the ancient world, stretching from Greece to northwestern India.[1][2] He was undefeated in battle and is widely considered one of history's most successful military commanders.[3]

During his youth, Alexander was tutored by Aristotle until age 16. After Philip's assassination in 336 BC, he succeeded his father to the throne and inherited a strong kingdom and an experienced army. Alexander was awarded the generalship of Greece and used this authority to launch his father's pan-Hellenic project to lead the Greeks in the conquest of Persia.[4][5] In 334 BC, he invaded the Achaemenid Empire (Persian Empire) and began a series of campaigns that lasted 10 years. Following the conquest of Anatolia, Alexander broke the power of Persia in a series of decisive battles, most notably the battles of Issus and Gaugamela. He subsequently overthrew Persian King Darius III and conquered the Achaemenid Empire in its entirety.[b] At that point, his empire stretched from the Adriatic Sea to the Beas River.

Alexander endeavoured to reach the "ends of the world and the Great Outer Sea" and invaded India in 326 BC, winning an important victory over the Pauravas at the Battle of the Hydaspes. He eventually turned back at the demand of his homesick troops, dying in Babylon in 323 BC, the city that he planned to establish as his capital, without executing a series of planned campaigns that would have begun with an invasion of Arabia. In the years following his death, a series of civil wars tore his empire apart, resulting in the establishment of several states ruled by the Diadochi, Alexander's surviving generals and heirs.

Alexander's legacy includes the cultural diffusion and syncretism which his conquests engendered, such as Greco-Buddhism. He founded some twenty cities that bore his name, most notably Alexandria in Egypt. Alexander's settlement of Greek colonists and the resulting spread of Greek culture in the east resulted in a new Hellenistic civilization, aspects of which were still evident in the traditions of the Byzantine Empire in the mid-15th century AD and the presence of Greek speakers in central and far eastern Anatolia until the Greek genocide of the 1920s. Alexander became legendary as a classical hero in the mould of Achilles, and he features prominently in the history and mythic traditions of both Greek and non-Greek cultures. He was undefeated in battle and became the measure against which military leaders compared themselves. Military academies throughout the world still teach his tactics.[6][c] He is often ranked among the most influential people in history.[7]''';

  static String anacreonBio = '''Anacreon (/əˈnækriən/; Greek: Ἀνακρέων ὁ Τήϊος; c. 582 – c. 485 BC)[1] was a Greek lyric poet, notable for his drinking songs and erotic poems. Later Greeks included him in the canonical list of nine lyric poets. Anacreon wrote all of his poetry in the ancient Ionic dialect. Like all early lyric poetry, it was composed to be sung or recited to the accompaniment of music, usually the lyre. Anacreon's poetry touched on universal themes of love, infatuation, disappointment, revelry, parties, festivals and the observations of everyday people and life.''';

  static String anaxagorasBio = '''Anaxagoras (/ˌænækˈsæɡərəs/; Greek: Ἀναξαγόρας, Anaxagoras, "lord of the assembly"; c. 510 – c. 428 BC) was a Pre-Socratic Greek philosopher. Born in Clazomenae at a time when Asia Minor was under the control of the Persian Empire, Anaxagoras came to Athens. According to Diogenes Laërtius and Plutarch, in later life he was charged with impiety and went into exile in Lampsacus; the charges may have been political, owing to his association with Pericles, if they were not fabricated by later ancient biographers.[2]

Responding to the claims of Parmenides on the impossibility of change, Anaxagoras described the world as a mixture of primary imperishable ingredients, where material variation was never caused by an absolute presence of a particular ingredient, but rather by its relative preponderance over the other ingredients; in his words, "each one is... most manifestly those things of which there are the most in it".[3] He introduced the concept of Nous (Cosmic Mind) as an ordering force, which moved and separated out the original mixture, which was homogeneous, or nearly so.

He also gave a number of novel scientific accounts of natural phenomena. He deduced a correct explanation for eclipses and described the Sun as a fiery mass larger than the Peloponnese, as well as attempting to explain rainbows and meteors.''';

  static String anaximanderBio = '''Anaximander (/æˌnæksɪˈmændər/; Greek: Ἀναξίμανδρος Anaximandros; c. 610 – c. 546 BC), was a pre-Socratic Greek philosopher who lived in Miletus,[4] a city of Ionia (in modern-day Turkey). He belonged to the Milesian school and learned the teachings of his master Thales. He succeeded Thales and became the second master of that school where he counted Anaximenes and, arguably, Pythagoras amongst his pupils.[5]

Little of his life and work is known today. According to available historical documents, he is the first philosopher known to have written down his studies,[6] although only one fragment of his work remains. Fragmentary testimonies found in documents after his death provide a portrait of the man.

Anaximander was an early proponent of science and tried to observe and explain different aspects of the universe, with a particular interest in its origins, claiming that nature is ruled by laws, just like human societies, and anything that disturbs the balance of nature does not last long.[7] Like many thinkers of his time, Anaximander's philosophy included contributions to many disciplines. In astronomy, he attempted to describe the mechanics of celestial bodies in relation to the Earth. In physics, his postulation that the indefinite (or apeiron) was the source of all things led Greek philosophy to a new level of conceptual abstraction. His knowledge of geometry allowed him to introduce the gnomon in Greece. He created a map of the world that contributed greatly to the advancement of geography. He was also involved in the politics of Miletus and was sent as a leader to one of its colonies.''';

  static String antisthenesBio = '''Antisthenes (/ænˈtɪsθɪniːz/;[2] Greek: Ἀντισθένης; c. 446 – c. 366 BC)[1] was a Greek philosopher and a pupil of Socrates. Antisthenes first learned rhetoric under Gorgias before becoming an ardent disciple of Socrates. He adopted and developed the ethical side of Socrates' teachings, advocating an ascetic life lived in accordance with virtue. Later writers regarded him as the founder of Cynic philosophy.''';

  static String archilochusBio = '''Archilochus (/ɑːrˈkɪləkəs/; Greek: Ἀρχίλοχος Arkhilokhos; c. 680–645 BCE)[a] was a Greek lyric poet from the island of Paros in the Archaic period. He is celebrated for his versatile and innovative use of poetic meters, and is the earliest known Greek author to compose almost entirely on the theme of his own emotions and experiences.[3][4]

Alexandrian scholars included him in their canonic list of iambic poets, along with Semonides and Hipponax,[5] yet ancient commentators also numbered him with Tyrtaeus and Callinus as the possible inventor of the elegy.[6] Modern critics often characterize him simply as a lyric poet.[7] Although his work now only survives in fragments, he was revered by the ancient Greeks as one of their most brilliant authors, able to be mentioned in the same breath as Homer and Hesiod,[8] yet he was also censured by them as the archetypal poet of blame[9] – his invectives were even said to have driven his former fiancée and her father to suicide. He presented himself as a man of few illusions either in war or in love, such as in the following elegy, where discretion is seen to be the better part of valour:

Ἀσπίδι μὲν Σαΐων τις ἀγάλλεται, ἥν παρὰ θάμνῳ
ἔντος ἀμώμητον κάλλιπον οὐκ ἐθέλων·
αὐτὸν δ' ἔκ μ' ἐσάωσα· τί μοι μέλει ἀσπὶς ἐκείνη;
Ἐρρέτω· ἐξαῦτις κτήσομαι οὐ κακίω.[10]

One of the Saians (Thracian tribe) now delights in the shield I discarded
Unwillingly near a bush, for it was perfectly good,
But at least I got myself safely out. Why should I care for that shield?
Let it go. Some other time I'll find another no worse.[citation needed]

Archilochus was much imitated even up to Roman times and three other distinguished poets later claimed to have thrown away their shields – Alcaeus, Anacreon and Horace.''';

  static String archimedesBio = '''Archimedes of Syracuse (/ˌɑːrkɪˈmiːdiːz/;[2] Ancient Greek: Ἀρχιμήδης, romanized: Arkhimḗdēs; Doric Greek: [ar.kʰi.mɛː.dɛ̂ːs]; c. 287 – c. 212 BC) was a Greek mathematician, physicist, engineer, inventor, and astronomer.[3] Although few details of his life are known, he is regarded as one of the leading scientists in classical antiquity. Generally considered the greatest mathematician of antiquity and one of the greatest of all time,[4][5][6][7][8][9] Archimedes anticipated modern calculus and analysis by applying concepts of infinitesimals and the method of exhaustion to derive and rigorously prove a range of geometrical theorems, including the area of a circle, the surface area and volume of a sphere, and the area under a parabola.[10]

Other mathematical achievements include deriving an accurate approximation of pi, defining and investigating the spiral bearing his name, and creating a system using exponentiation for expressing very large numbers. He was also one of the first to apply mathematics to physical phenomena, founding hydrostatics and statics, including an explanation of the principle of the lever. He is credited with designing innovative machines, such as his screw pump, compound pulleys, and defensive war machines to protect his native Syracuse from invasion.

Archimedes died during the Siege of Syracuse when he was killed by a Roman soldier despite orders that he should not be harmed. Cicero describes visiting the tomb of Archimedes, which was surmounted by a sphere and a cylinder, which Archimedes had requested be placed on his tomb to represent his mathematical discoveries.

Unlike his inventions, the mathematical writings of Archimedes were little known in antiquity. Mathematicians from Alexandria read and quoted him, but the first comprehensive compilation was not made until c. 530 AD by Isidore of Miletus in Byzantine Constantinople, while commentaries on the works of Archimedes written by Eutocius in the sixth century AD opened them to wider readership for the first time. The relatively few copies of Archimedes' written work that survived through the Middle Ages were an influential source of ideas for scientists during the Renaissance, while the discovery in 1906 of previously unknown works by Archimedes in the Archimedes Palimpsest has provided new insights into how he obtained mathematical results.[11][12][13]''';

  static String aristippusBio = '''Aristippus of Cyrene (/ˌærəˈstɪpəs/; Ancient Greek: Ἀρίστιππος ὁ Κυρηναῖος; c. 435 – c. 356 BCE) was the founder of the Cyrenaic school of Philosophy.[1] He was a pupil of Socrates, but adopted a very different philosophical outlook, teaching that the goal of life was to seek pleasure by circumstances to oneself and by maintaining proper control over both adversity and prosperity. His outlook came to be called "ethical hedonism."[citation needed] Among his pupils was his daughter Arete.''';

  static String aristophanesBio = '''Aristophanes (/ˌærɪˈstɒfəniːz/;[2] Ancient Greek: Ἀριστοφάνης, pronounced [aristopʰánɛːs]; c. 446 – c. 386 BC), son of Philippus, of the deme Kydathenaion (Latin: Cydathenaeum),[3] was a comic playwright of ancient Athens and a poet of Old Attic Comedy.[4] Eleven of his forty plays survive virtually complete. These provide the most valuable examples of a genre of comic drama known as Old Comedy and are used to define it, along with fragments from dozens of lost plays by Aristophanes and his contemporaries.[5]

Also known as "The Father of Comedy"[6] and "the Prince of Ancient Comedy",[7] Aristophanes has been said to recreate the life of ancient Athens more convincingly than any other author.[8] His powers of ridicule were feared and acknowledged by influential contemporaries; Plato[9][10] singled out Aristophanes' play The Clouds as slander that contributed to the trial and subsequent condemning to death of Socrates, although other satirical playwrights[11] had also caricatured the philosopher.

Aristophanes' second play, The Babylonians (now lost), was denounced by Cleon as a slander against the Athenian polis. It is possible that the case was argued in court, but details of the trial are not recorded and Aristophanes caricatured Cleon mercilessly in his subsequent plays, especially The Knights, the first of many plays that he directed himself. "In my opinion," he says through that play's Chorus, "the author-director of comedies has the hardest job of all."[12]''';

  static String aristotleBio = '''Aristotle (/ˈærɪstɒtəl/;[3] Greek: Ἀριστοτέλης Aristotélēs, pronounced [aristotélɛːs]; 384–322 BC) was a Greek philosopher and polymath during the Classical period in Ancient Greece. Taught by Plato, he was the founder of the Lyceum, the Peripatetic school of philosophy, and the Aristotelian tradition. His writings cover many subjects including physics, biology, zoology, metaphysics, logic, ethics, esthetics, poetry, theatre, music, rhetoric, psychology, linguistics, economics, politics, and government. Aristotle provided a complex synthesis of the various philosophies existing prior to him. It was above all from his teachings that the West inherited its intellectual lexicon, as well as problems and methods of inquiry. As a result, his philosophy has exerted a unique influence on almost every form of knowledge in the West and it continues to be a subject of contemporary philosophical discussion.

Little is known about his life. Aristotle was born in the city of Stagira in Northern Greece. His father, Nicomachus, died when Aristotle was a child, and he was brought up by a guardian. At seventeen or eighteen years of age he joined Plato's Academy in Athens and remained there until the age of thirty-seven (c. 347 BC).[4] Shortly after Plato died, Aristotle left Athens and, at the request of Philip II of Macedon, tutored Alexander the Great beginning in 343 BC.[5] He established a library in the Lyceum which helped him to produce many of his hundreds of books on papyrus scrolls. Though Aristotle wrote many elegant treatises and dialogues for publication, only around a third of his original output has survived, none of it intended for publication.[6]

Aristotle's views on physical science profoundly shaped medieval scholarship. Their influence extended from Late Antiquity and the Early Middle Ages into the Renaissance, and were not replaced systematically until the Enlightenment and theories such as classical mechanics. Some of Aristotle's zoological observations found in his biology, such as on the hectocotyl (reproductive) arm of the octopus, were disbelieved until the 19th century. His works contain the earliest known formal study of logic, studied by medieval scholars such as Peter Abelard and John Buridan. Aristotle's influence on logic also continued well into the 19th century.

He influenced Islamic thought during the Middle Ages, as well as Christian theology, especially the Neoplatonism of the Early Church and the scholastic tradition of the Catholic Church. Aristotle was revered among medieval Muslim scholars as "The First Teacher" and among medieval Christians like Thomas Aquinas as simply "The Philosopher". His ethics, though always influential, gained renewed interest with the modern advent of virtue ethics, such as in the thinking of Alasdair MacIntyre and Philippa Foot.''';

  static String biasBio = '''Bias (/ˈbaɪəs/; Greek: Βίας ὁ Πριηνεύς; fl. 6th century BC) of Priene was a Greek sage. He is widely accepted as one of the Seven Sages of Greece and was renowned for his probity. Bias was born at Priene and was the son of Teutamus.[1] He is said to have been distinguished for his skill as an advocate, and for his use of it in defence of the right.[2] In reference to which Demodocus of Leros uttered the following saying – "If you are a judge, give a Prienian decision," and Hipponax said, "More powerful in pleading causes than Bias of Priene."[3]

He was always reckoned among the Seven Sages, and was mentioned by Dicaearchus as one of the Four to whom alone that title was universally given — the remaining three being Thales, Pittacus, and Solon.[4] Satyrus placed him at the head of the Seven Sages,[1] and even Heraclitus, who poured scorn on figures such as Hesiod and Pythagoras,[5] referred to Bias as "a man of more consideration than any."[6] One of the examples of his great goodness is the legend that says that Bias paid a ransom for some women who had been taken prisoner. After educating them as his own daughters, he sent them back to Messina, their homeland, and to their fathers.[1]

Bias is said to have died at a very advanced age while pleading a cause for his client. After he had finished speaking, he rested his head on his grandson. When the advocate on the opposite side had spoken, the judges decided in favor of Bias's client, by which time Bias had died.[2] The city gave him a magnificent funeral and inscribed on his tomb:[7]

Here Bias of Priene lies, whose name
Brought to his home and all Ionia fame.''';

  static String bionBio = '''Bion of Borysthenes (Greek: Βίων Βορυσθενίτης, gen.: Βίωνος; c. 325 – c. 250 BC) was a Greek philosopher. After being sold into slavery, and then released, he moved to Athens, where he studied in almost every school of philosophy. It is, however, for his Cynic-style diatribes that he is chiefly remembered. He satirized the foolishness of people, attacked religion, and eulogized philosophy. Bion was from the town of Olbia on the north coast of the Black Sea by the mouth of the river Borysthenes (modern-day Dnieper). He lived c. 325-c. 250 BC, but the exact dates of his birth and death are uncertain. Strabo[1] mentions him as a contemporary of Eratosthenes, who was born 275 BC. Diogenes Laërtius has preserved an account in which Bion describes his parentage to Antigonus II Gonatas, King of Macedonia.[2] His father was a freedman and a dealer in salt fish, with which he combined the occupation of smuggling. His mother, Olympia, was a Lacedaemonian prostitute. The whole family were sold as slaves, on account of some offence committed by the father. In consequence of this, Bion fell into the hands of a rhetorician, who made him his heir. Having burnt his patron's library, he went to Athens, and applied himself to philosophy, in the course of which study he embraced the tenets of almost every sect in succession. First he was an Academic studying under Xenocrates[3] and Crates of Athens,[4] then he became a Cynic,[4] (perhaps under Crates of Thebes), afterwards he attached to Theodorus,[5] the Cyrenaic philosopher whose alleged atheism is supposed to have influenced Bion,[6] and finally he became a pupil of Theophrastus the Peripatetic.[5] After the manner of the sophists of the period, Bion travelled through Greece and Macedonia, and was admitted to the literary circle at the court of Antigonus II Gonatas.[7] He subsequently taught philosophy at Rhodes,[8] and died at Chalcis in Euboea.[6]''';

  static String chilonBio = '''Chilon of Sparta (fl. 6th century BC) was a Spartan and one of the Seven Sages of Greece. Chilon was the son of Damagetus, and lived towards the beginning of the 6th century BC. Herodotus[1] speaks of him as contemporary with Hippocrates, the father of Peisistratus. Diogenes Laërtius states that he was an old man in the 52nd Olympiad (572 BC), and that he was elected an ephor (overseer) in Sparta in the 56th Olympiad (556/5 BC). Alcidamas states that he was a member of the Spartan assembly.[2] Diogenes Laërtius even goes so far as to claim that Chilon was also the first person who introduced the custom of joining the ephors to the kings as their counselors.[3]

Chilon is said to have helped to overthrow the tyranny at Sicyon, which became a Spartan ally. He is also credited with the change in Spartan policy leading to the development of the Peloponnesian League in the sixth century BC.[4] Another legend claims that he died of joy when his son gained the prize for boxing at the Olympic games,[5] and that his funeral was attended by all the Greeks assembled at the festival.[3]

One of his descendants married king Anaxandridas II of Sparta and bore his son, king Cleomenes I.''';


  static String cleobulusBio = '''Cleobulus (/ˌklioʊˈbjuːləs, kliˈɒbjələs/; Greek: Κλεόβουλος ὁ Λίνδιος, Kleoboulos ho Lindios; fl. 6th century BC[citation needed]) was a Greek poet and a native of Lindos. He is one of the Seven Sages of Greece. Cleobulus was the son of Evagoras and a citizen of Lindus in Rhodes.[1] Clement of Alexandria called Cleobulus king of the Lindians,[2] and Plutarch spoke of him as the tyrant.[3] The letter quoted by Diogenes Laërtius, in which Cleobulus invites Solon to Lindus as a democratic place of refuge from the tyrant Peisistratus in Athens, is undoubtedly a later forgery.[4] Cleobulus is also said to have studied philosophy in Egypt.[5] He had a daughter, Cleobulina, who found fame as a poet, composing riddles in hexameter verse.[5] Cleobulus is said to have lived to the age of seventy,[6] and to have been greatly distinguished, for strength and beauty of person.[5]''';

  static String critiasBio = '''Critias (/ˈkrɪtiəs/; Greek: Κριτίας, Kritias; c. 460 – 403 BC) was an ancient Athenian political figure and author. Born in Athens, Critias was the son of Callaeschrus and a first cousin of Plato's mother Perictione. He became a leading and violent member of the Thirty Tyrants. He also was an associate of Socrates, a fact that did not endear Socrates to the Athenian public.

Critias was noted in his day for his tragedies, elegies and prose works. Some, like Sextus Empiricus, believe that Critias wrote the Sisyphus fragment; others, however, attribute it to Euripides. His only known play is Peirithous, of which only a single 42-line fragment survives (Sextus Empir. p. 403, 1). In addition, eight shorter quotations from unidentified plays have come down to us. Critias gave an account of his ancestry which was later recorded in Plato's Timaeus. Critias's great-grandfather, Dropidas, was an intimate friend of Solon. Dropidas's son, also named Critias, was the grandfather and namesake of the author Critias.[1]

Critias was once a student of Socrates. The two had a strained relationship. However, it is said that Critias was the one who saved Socrates from persecution during the terror of the Thirty Tyrants.[2] However, Critias was very greedy, something that Socrates did not approve of.

After the fall of Athens to the Spartans, Critias, as one of the Thirty Tyrants, blacklisted many of its citizens. Most of his prisoners were executed and their wealth confiscated.

Critias was killed in a battle near Piraeus, the port of Athens, between a band of pro-democracy Athenian exiles led by Thrasybulus and members and supporters of the Thirty, aided by the Spartan garrison. In the battle, the exiles put the oligarchic forces to flight, ending the rule of the Thirty.[3][4]

According to Sextus Empiricus, Critias asserted that "a shrewd and clever-minded man invented for mortals a fear of the gods, so that there might be a deterrent for the wicked..." The text from which this excerpt originates is known both as the Critias fragment and the Sisyphus fragment as its origins are disputed. Most historians attribute the quotation to the character of Sisyphus in a play by Euripides.[5]''';

  static String democritusBio = '''Democritus (/dɪˈmɒkrɪtəs/; Greek: Δημόκριτος, Dēmókritos, meaning "chosen of the people"; c. 460 – c. 370 BC) was an Ancient Greek pre-Socratic philosopher primarily remembered today for his formulation of an atomic theory of the universe.[3]

Democritus was born in Abdera, Thrace,[4] around 460 BC, although there are disagreements about the exact year. His exact contributions are difficult to disentangle from those of his mentor Leucippus, as they are often mentioned together in texts. Their speculation on atoms, taken from Leucippus, bears a passing and partial resemblance to the 19th-century understanding of atomic structure that has led some to regard Democritus as more of a scientist than other Greek philosophers; however, their ideas rested on very different bases.[5] Largely ignored in ancient Athens, Democritus is said to have been disliked so much by Plato that the latter wished all of his books burned.[6] He was nevertheless well known to his fellow northern-born philosopher Aristotle, and was the teacher of Protagoras.[7]

Many consider Democritus to be the "father of modern science".[8] None of his writings have survived; only fragments are known from his vast body of work.[9]''';

  static String demosthenesBio = '''Demosthenes (/dɪˈmɒs.θəniːz/; Greek: Δημοσθένης, romanized: Dēmosthénēs; Attic Greek: [dɛːmosˈtʰenɛːs]; 384 – 12 October 322 BC) was a Greek statesman and orator of ancient Athens. His orations constitute a significant expression of contemporary Athenian intellectual prowess and provide an insight into the politics and culture of ancient Greece during the 4th century BC. Demosthenes learned rhetoric by studying the speeches of previous great orators. He delivered his first judicial speeches at the age of 20, in which he argued effectively to gain from his guardians what was left of his inheritance. For a time, Demosthenes made his living as a professional speech-writer (logographer) and a lawyer, writing speeches for use in private legal suits.

Demosthenes grew interested in politics during his time as a logographer, and in 354 BC he gave his first public political speeches. He went on to devote his most productive years to opposing Macedon's expansion. He idealized his city and strove throughout his life to restore Athens' supremacy and motivate his compatriots against Philip II of Macedon. He sought to preserve his city's freedom and to establish an alliance against Macedon, in an unsuccessful attempt to impede Philip's plans to expand his influence southward by conquering all the other Greek states.

After Philip's death, Demosthenes played a leading part in his city's uprising against the new king of Macedonia, Alexander the Great. However, his efforts failed and the revolt was met with a harsh Macedonian reaction. To prevent a similar revolt against his own rule, Alexander's successor in this region, Antipater, sent his men to track Demosthenes down. Demosthenes took his own life, to avoid being arrested by Archias of Thurii, Antipater's confidant.

The Alexandrian Canon compiled by Aristophanes of Byzantium and Aristarchus of Samothrace recognised Demosthenes as one of the ten greatest Attic orators and logographers. Longinus likened Demosthenes to a blazing thunderbolt and argued that he "perfected to the utmost the tone of lofty speech, living passions, copiousness, readiness, speed."[2] Quintilian extolled him as lex orandi ("the standard of oratory"). Cicero said of him that inter omnis unus excellat ("he stands alone among all the orators"), and also acclaimed him as "the perfect orator" who lacked nothing.[3]''';

  static String diogenesBio = '''Diogenes (/daɪˈɒdʒɪniːz/ dy-OJ-in-eez; Ancient Greek: Διογένης, romanized: Diogénēs [di.oɡénɛ͜ɛs]), also known as Diogenes the Cynic (Διογένης ὁ Κυνικός, Diogénēs ho Kynikós), was a Greek philosopher and one of the founders of Cynic philosophy. He was born in Sinope, an Ionian colony on the Black Sea,[1] in 412 or 404 BC and died at Corinth in 323 BC.[2]

Diogenes was a controversial figure. His father minted coins for a living, and Diogenes was banished from Sinope when he took to debasement of currency.[1] After being exiled, he moved to Athens and criticized many cultural conventions of the city. He modelled himself on the example of Heracles, and believed that virtue was better revealed in action than in theory. He used his simple lifestyle and behaviour to criticize the social values and institutions of what he saw as a corrupt, confused society. He had a reputation for sleeping and eating wherever he chose in a highly non-traditional fashion, and took to toughening himself against nature. He declared himself a cosmopolitan and a citizen of the world rather than claiming allegiance to just one place. There are many tales about his dogging Antisthenes' footsteps and becoming his "faithful hound".[3]

Diogenes holding a lamp during daylight searching for an honest man.
Diogenes Searching for an Honest Man (1640-1647) by Giovanni Benedetto Castiglione held at the National Gallery of Art
Diogenes made a virtue of poverty. He begged for a living and often slept in a large ceramic jar, or pithos, in the marketplace.[4] He became notorious for his philosophical stunts, such as carrying a lamp during the day, claiming to be looking for an honest man. He criticized Plato, disputed his interpretation of Socrates, and sabotaged his lectures, sometimes distracting listeners by bringing food and eating during the discussions. Diogenes was also noted for having mocked Alexander the Great, both in public and to his face when he visited Corinth in 336 BC.[5][6][7]

Diogenes was captured by pirates and sold into slavery, eventually settling in Corinth. There he passed his philosophy of Cynicism to Crates, who taught it to Zeno of Citium, who fashioned it into the school of Stoicism, one of the most enduring schools of Greek philosophy. No writings of Diogenes are known but there are some details of his life from anecdotes (chreia), especially from Diogenes Laërtius' book Lives and Opinions of Eminent Philosophers and some other sources.[8]''';

  static String epicharmusBio = '''Epicharmus of Kos or Epicharmus Comicus or Epicharmus Comicus Syracusanus (Greek: Ἐπίχαρμος ὁ Κῷος), thought to have lived between c. 550 and c. 460 BC, was a Greek dramatist and philosopher who is often credited with being one of the first comic writers, having originated the Doric or Sicilian comedic form.[1] Epicharmus' birthplace is not known, but late and fairly unreliable ancient commentators suggest a number of alternatives. The Suda (E 2766) records that he was either Syracusan by birth or from the Sikanian city of Krastos. Diogenes Laërtius (VIII 78) records that Epicharmus was born in Astypalea, the ancient capital of Kos on the Bay of Kamari, near modern-day Kefalos. Diogenes Laërtius also records that Epicharmus' father was the prominent physician Helothales, who moved the family to Megara in Sicily, when Epicharmus was just a few months old. Although raised according to the Asclepiad tradition of his father, as an adult Epicharmus became a follower of Pythagoras.[7]

All of this biographical information could be treated as suspect. More references to alternative origins and discussion of their likelihood can be found in Pickard-Cambridge's Tragedy, Comedy, Dithyramb, and more recently in Rodriguez Noriega Guillen's Epicarmo di Siracusa: Testimonios y Fragmentos.[8] The standard edition of his fragments by Kaibel has now been updated with the publication of Kassel and Austin's Poetae Comici Graeci. It is most likely that sometime after 484 BC, he lived in Syracuse, and worked as a poet for the tyrants Gelo and Hiero I. The subject matter of his poetry covered a broad range, from exhortations against intoxication and laziness to such unorthodox topics as mythological burlesque, but he also wrote on philosophy, medicine, natural science, linguistics, and ethics. Among many other philosophical and moral lessons, Epicharmus taught that the continuous exercise of virtue could overcome heredity, so that anyone had the potential to be a good person regardless of birth. He died in his 90s (according to a statement in Lucian,[9] he died at ninety-seven).

Diogenes Laërtius records that there was a bronze statue dedicated to him in Syracuse, by the inhabitants, for which Theocritus composed the following inscription:[10]

"As the bright sun excels the other stars,
As the sea far exceeds the river streams:
So does sage Epicharmus men surpass,
Whom hospitable Syracuse has crowned."

Theocritus' Epigram 18 (AP IX 60; Kassel and Austin Test. 18) was written in his honour.''';

  static String euclidBio = '''Euclid (/ˈjuːklɪd/; Ancient Greek: Εὐκλείδης – Eukleídēs, pronounced [eu̯.kleː.dɛːs]; fl. 300 BC), sometimes called Euclid of Alexandria[1] to distinguish him from Euclid of Megara, was a Greek mathematician, often referred to as the "founder of geometry"[1] or the "father of geometry". He was active in Alexandria during the reign of Ptolemy I (323–283 BC). His Elements is one of the most influential works in the history of mathematics, serving as the main textbook for teaching mathematics (especially geometry) from the time of its publication until the late 19th or early 20th century.[2][3][4] In the Elements, Euclid deduced the theorems of what is now called Euclidean geometry from a small set of axioms. Euclid also wrote works on perspective, conic sections, spherical geometry, number theory, and mathematical rigour.

The English name Euclid is the anglicized version of the Greek name Εὐκλείδης, which means "renowned, glorious".[5]''';

  static String euripedesBio = '''Euripides (/jʊəˈrɪpɪdiːz/;[1] Greek: Εὐριπίδης Eurīpídēs, pronounced [eu̯.riː.pí.dɛːs]; c. 480 – c. 406 BC) was a tragedian of classical Athens. Along with Aeschylus and Sophocles, he is one of the three ancient Greek tragedians for whom a significant number of plays have survived. Some ancient scholars attributed 95 plays to him but, according to the Suda, it was 92 at most. Of these, 18 or 19 have survived more or less complete (there has been debate about his authorship of Rhesus, largely on stylistic grounds)[2] and there are also fragments, some substantial, of most of the other plays. More of his plays have survived intact than those of Aeschylus and Sophocles together, partly because his popularity grew as theirs declined[3][4]—he became, in the Hellenistic Age, a cornerstone of ancient literary education, along with Homer, Demosthenes, and Menander.[5]

Euripides is identified with theatrical innovations that have profoundly influenced drama down to modern times, especially in the representation of traditional, mythical heroes as ordinary people in extraordinary circumstances. This new approach led him to pioneer developments that later writers adapted to comedy, some of which are characteristic of romance. Yet he also became "the most tragic of poets",[nb 1] focusing on the inner lives and motives of his characters in a way previously unknown.[6][7] He was "the creator of...that cage which is the theatre of Shakespeare's Othello, Racine's Phèdre, of Ibsen and Strindberg," in which "...imprisoned men and women destroy each other by the intensity of their loves and hates",[8] and yet he was also the literary ancestor of comic dramatists as diverse as Menander and George Bernard Shaw.[9]

Unique among writers of Ancient Athens, Euripides demonstrated sympathy towards the underrepresented members of society.[6][10] His male contemporaries were frequently shocked by the heresies he put into the mouths of characters, such as these words of his heroine Medea:

Sooner would I stand
Three times to face their battles, shield in hand,
Than bear one child![11]

His contemporaries associated him with Socrates as a leader of a decadent intellectualism, both of them being frequently lampooned by comic poets such as Aristophanes. Whereas Socrates was eventually put on trial and executed as a corrupting influence, Euripides chose a voluntary exile in old age, dying in Macedonia.[12] Recent scholarship casts doubt on ancient biographies of Euripides. For example, it is possible that he never visited Macedonia at all,[13] or, if he did, he might have been drawn there by King Archelaus with incentives that were also offered to other artists.[14]''';

  static String heraclitusBio = '''Heraclitus of Ephesus (/ˌhɛrəˈklaɪtəs/;[1] Greek: Ἡράκλειτος ὁ Ἐφέσιος, translit. Hērákleitos ho Ephésios; c. 535 – c. 475 BC, fl. 504/3 BC–501/0 BC[2]) son of Bloson[2], was a pre-Socratic Ionian Greek philosopher, and a native of the city of Ephesus, in modern-day Turkey and then part of the Persian Empire.

Due to the oracular and paradoxical nature of his philosophy, and his fondness for word play, he was called "The Obscure" even in antiquity. He wrote a single work, On Nature, but the obscurity is made worse by its remaining only in fragments. His cryptic utterances have been the subject of numerous interpretations. He has been seen variously as a "material monist or a process philosopher; a scientific cosmologist, a metaphysician, or mainly a religious thinker; an empiricist, a rationalist, or a mystic; a conventional thinker or a revolutionary; a developer of logic or one who denied the law of non-contradiction; the first genuine philosopher or an anti-intellectual obscurantist."[3]

He was of distinguished parentage but eschewed his privileged life for a lonely one as a philosopher. Little else is known about his early life and education. He regarded himself as self-taught and a pioneer of wisdom. He was considered a misanthrope given to depression; he was also called "the weeping philosopher", in contrast to Democritus, "the laughing philosopher".

Heraclitus believed the world was in accordance with Logos (literally, "word", "reason", or "account"). He also believed the world was ultimately made of fire. He was committed to a unity of opposites and harmony in the world. He was most famous for his insistence on ever-present change, or flux or becoming, as the characteristic feature of the world, as stated in the famous saying, "No man ever steps in the same river twice" as well as "Panta rhei", everything flows. This aspect of his philosophy is contrasted with that of Parmenides, who believed in being, and that nothing changes. Both had an influence on Plato and thus on all of Western philosophy.''';

  static String herodotusBio = '''Herodotus (/hɪˈrɒdətəs/; Ancient Greek: Ἡρόδοτος, Hēródotos, Attic Greek pronunciation: [hɛː.ró.do.tos]; c. 484 – c. 425 BC) was an ancient Greek historian who was born in Halicarnassus in the Persian Empire (modern-day Bodrum, Turkey). He is known for having written the book The Histories (Greek: Ἱστορίαι Historíai), a detailed record of his "inquiry" (ἱστορία historía) on the origins of the Greco-Persian Wars. He is widely considered to have been the first writer to have treated historical subjects using a method of systematic investigation—specifically, by collecting his materials and then critically arranging them into an historiographic narrative. On account of this, he is often referred to as "The Father of History," a title first conferred on him by the first-century BC Roman orator Cicero.[1]

Despite Herodotus's historical significance, little is known about his personal life. His Histories primarily deals with the lives of Croesus, Cyrus, Cambyses, Smerdis, Darius, and Xerxes and the battles of Marathon, Thermopylae, Artemisium, Salamis, Plataea, and Mycale; however, his many cultural, ethnographical, geographical, historiographical, and other digressions form a defining and essential part of the Histories and contain a wealth of information. Herodotus has been criticized for the fact that his book includes many obvious legends and fanciful accounts. Many authors, starting with the late fifth-century BC historian Thucydides, have accused him of making up stories for entertainment. However, Herodotus states that he is merely reporting what he has seen and been told, on several occasions saying that he does not himself believe the story that he reports. A sizable portion of the information he provides has since been confirmed by historians and archaeologists.''';

  static String hesiodBio = '''Hesiod (/ˈhiːsiəd, ˈhɛsiəd/;[1] Greek: Ἡσίοδος Hēsíodos) was a Greek poet generally thought by scholars to have been active between 750 and 650 BC, around the same time as Homer.[2][3] He is generally regarded as the first written poet in the Western tradition to regard himself as an individual persona with an active role to play in his subject.[4] Ancient authors credited Hesiod and Homer with establishing Greek religious customs.[5] Modern scholars refer to him as a major source on Greek mythology, farming techniques, early economic thought (he is sometimes considered history's first economist),[6] archaic Greek astronomy and ancient time-keeping.''';

  static String hippocratesBio = '''Hippocrates of Kos (/hɪˈpɒkrətiːz/; Greek: Ἱπποκράτης ὁ Κῷος, translit. Hippokrátēs ho Kṓos; c. 460 – c. 370 BC), also known as Hippocrates II, was a Greek physician of the Age of Pericles (Classical Greece), who is considered one of the most outstanding figures in the history of medicine. He is often referred to as the "Father of Medicine"[1] in recognition of his lasting contributions to the field as the founder of the Hippocratic School of Medicine. This intellectual school revolutionized Ancient Greek medicine, establishing it as a discipline distinct from other fields with which it had traditionally been associated (theurgy and philosophy), thus establishing medicine as a profession.[2][3]

However, the achievements of the writers of the Corpus, the practitioners of Hippocratic medicine and the actions of Hippocrates himself were often conflated; thus very little is known about what Hippocrates actually thought, wrote, and did. Hippocrates is commonly portrayed as the paragon of the ancient physician and credited with coining the Hippocratic Oath, which is still relevant and in use today. He is also credited with greatly advancing the systematic study of clinical medicine, summing up the medical knowledge of previous schools, and prescribing practices for physicians through the Hippocratic Corpus and other works.[2][4]''';

  static String homerBio = '''Homer (/ˈhoʊmər/; Ancient Greek: Ὅμηρος Greek pronunciation: [hómɛːros], Hómēros) is the semi-legendary author of the Iliad and the Odyssey, two epic poems that are the central works of ancient Greek literature. The Iliad is set during the Trojan War, the ten-year siege of the city of Troy by a coalition of Greek kingdoms. It focuses on a quarrel between King Agamemnon and the warrior Achilles lasting a few weeks during the last year of the war. The Odyssey focuses on the ten-year journey home of Odysseus, king of Ithaca, after the fall of Troy. Many accounts of Homer's life circulated in classical antiquity, the most widespread being that he was a blind bard from Ionia, a region of central coastal Anatolia in present-day Turkey. Modern scholars consider these accounts legendary.[2][3][4]

The Homeric Question – concerning by whom, when, where and under what circumstances the Iliad and Odyssey were composed – continues to be debated. Broadly speaking, modern scholarly opinion falls into two groups. One holds that most of the Iliad and (according to some) the Odyssey are the works of a single poet of genius. The other considers the Homeric poems to be the result of a process of working and reworking by many contributors, and that "Homer" is best seen as a label for an entire tradition.[4] It is generally accepted that the poems were composed at some point around the late eighth or early seventh century BC.[5]

The poems are in Homeric Greek, also known as Epic Greek, a literary language which shows a mixture of features of the Ionic and Aeolic dialects from different centuries; the predominant influence is Eastern Ionic.[6][7] Most researchers believe that the poems were originally transmitted orally.[8] From antiquity until the present day, the influence of Homeric epic on Western civilization has been great, inspiring many of its most famous works of literature, music, art and film.[9] The Homeric epics were the greatest influence on ancient Greek culture and education; to Plato, Homer was simply the one who "has taught Greece" – ten Hellada pepaideuken.[10][11]''';

  static String isocratesBio = '''Isocrates (/aɪˈsɒkrəˌtiːz/; Ancient Greek: Ἰσοκράτης [isokrátɛ̂ːs]; 436–338 BC), an ancient Greek rhetorician, was one of the ten Attic orators. Among the most influential Greek rhetoricians of his time, Isocrates made many contributions to rhetoric and education through his teaching and written works.

Greek rhetoric is commonly traced to Corax of Syracuse, who first formulated a set of rhetorical rules in the fifth century BC. His pupil Tisias was influential in the development of the rhetoric of the courtroom, and by some accounts was the teacher of Isocrates. Within two generations, rhetoric had become an important art, its growth driven by social and political changes such as democracy and courts of law.''';

  static String parmenidesBio = '''Parmenides of Elea (/pɑːrˈmɛnɪdiːz ... ˈɛliə/; Greek: Παρμενίδης ὁ Ἐλεάτης; fl. late sixth or early fifth century BC) was a pre-Socratic Greek philosopher from Elea in Magna Graecia (meaning "Great Greece," the term which Romans gave to Greek-populated coastal areas in Southern Italy). He is thought to have been in his prime (or "floruit") around 475 BC.[a]

Parmenides has been considered the founder of metaphysics or ontology and has influenced the whole history of Western philosophy.[5][b] He was the founder of the Eleatic school of philosophy, which also included Zeno of Elea and Melissus of Samos. Zeno's paradoxes of motion were to defend Parmenides' view.

The single known work by Parmenides is a poem, On Nature, only fragments of which survive, containing the first sustained argument in the history of philosophy. In it, Parmenides prescribes two views of reality. In "the way of truth" (a part of the poem), he explains how all reality is one, change is impossible, and existence is timeless, uniform, and necessary. In "the way of opinion", Parmenides explains the world of appearances, in which one's sensory faculties lead to conceptions which are false and deceitful, yet he does offer a cosmology.

Parmenides' philosophy has been explained with the slogan "whatever is is, and what is not cannot be". He is also credited with the phrase out of nothing nothing comes. He argues that "A is not" can never be thought or said truthfully, and thus despite appearances everything exists as one, giant, unchanging thing. This is generally considered one of the first digressions into the philosophical concept of being, and has been contrasted with Heraclitus's statement that "No man ever steps into the same river twice" as one of the first digressions into the philosophical concept of becoming. Scholars have generally believed that either Parmenides was responding to Heraclitus, or Heraclitus to Parmenides.

Parmenides' views have remained relevant in philosophy, even thousands of years after his death. Alexius Meinong, much like Parmenides, defended the view that even the "golden mountain" is real since it can be talked about. The rivalry between Heraclitus and Parmenides has been also been re-introduced in debates in the philosophy of time between A theory and B theory.''';

  static String perianderBio = '''Periander (/ˌpɛriˈændər/; Greek: Περίανδρος; died c. 585 BC), was the Second Tyrant of the Cypselid dynasty that ruled over Corinth. Periander's rule brought about a prosperous time in Corinth's history, as his administrative skill made Corinth one of the wealthiest city states in Greece.[1] Several accounts state that Periander was a cruel and harsh ruler, but others[citation needed] claim that he was a fair and just king who worked to ensure that the distribution of wealth in Corinth was more or less even. He is often considered one of the Seven Sages of Greece, men of the 6th century BC who were renowned for centuries for their wisdom. (The other Sages were most often considered to be Thales, Solon, Cleobulus, Chilon, Bias, and Pittacus.)''';

  static String periclesBio = '''Pericles (/ˈpɛrɪkliːz/; Attic Greek: Περικλῆς Periklēs, pronounced [pe.ri.klɛ̂ːs] in Classical Attic; c. 495 – 429 BC) was a prominent and influential Greek statesman, orator and general of Athens during its golden age – specifically the time between the Persian and Peloponnesian wars. He was descended, through his mother, from the powerful and historically influential Alcmaeonid family. Pericles had such a profound influence on Athenian society that Thucydides, a contemporary historian, acclaimed him as "the first citizen of Athens".[1] Pericles turned the Delian League into an Athenian empire, and led his countrymen during the first two years of the Peloponnesian War. The period during which he led Athens, roughly from 461 to 429 BC, is sometimes known as the "Age of Pericles", though the period thus denoted can include times as early as the Persian Wars, or as late as the next century.

Pericles promoted the arts and literature; it is principally through his efforts that Athens acquired the reputation of being the educational and cultural center of the ancient Greek world. He started an ambitious project that generated most of the surviving structures on the Acropolis (including the Parthenon). This project beautified and protected the city, exhibited its glory, and gave work to the people.[2] Pericles also fostered Athenian democracy to such an extent that critics call him a populist.[3][4] He, along with several members of his family, succumbed to the Plague of Athens in 429 BC, which weakened the city-state during a protracted conflict with Sparta.''';

  static String pindarBio = '''Pindar (/ˈpɪndər/; Greek: Πίνδαρος Pindaros, [píndaros]; Latin: Pindarus; c. 518 – 438 BC) was an Ancient Greek lyric poet from Thebes. Of the canonical nine lyric poets of ancient Greece, his work is the best preserved. Quintilian wrote, "Of the nine lyric poets, Pindar is by far the greatest, in virtue of his inspired magnificence, the beauty of his thoughts and figures, the rich exuberance of his language and matter, and his rolling flood of eloquence, characteristics which, as Horace rightly held, make him inimitable."[2] His poems can also, however, seem difficult and even peculiar. The Athenian comic playwright Eupolis once remarked that they "are already reduced to silence by the disinclination of the multitude for elegant learning".[3] Some scholars in the modern age also found his poetry perplexing, at least until the 1896 discovery of some poems by his rival Bacchylides; comparisons of their work showed that many of Pindar's idiosyncrasies are typical of archaic genres rather than of only the poet himself. His poetry, while admired by critics, still challenges the casual reader and his work is largely unread among the general public.[4]

Pindar was the first Greek poet to reflect on the nature of poetry and on the poet's role.[5] Like other poets of the Archaic Age, he has a profound sense of the vicissitudes of life, but he also articulates a passionate faith in what men can achieve by the grace of the gods, most famously expressed in the conclusion to one of his Victory Odes:[6]

Creatures of a day! What is anyone?
What is anyone not? A dream of a shadow
Is our mortal being. But when there comes to men
A gleam of splendour given of heaven,
Then rests on them a light of glory
And blessed are their days. (Pythian 8)[7][8]

His poetry illustrates the beliefs and values of Archaic Greece at the dawn of the classical period.[9]''';

  static String pittacusBio = '''Pittacus (/ˈpɪtəkəs/; Greek: Πιττακός; c. 640 – 568 BC) was an ancient Mytilenaen military general and one of the Seven Sages of Greece. Pittacus was a native of Mytilene and son of Hyrradius. He became a Mytilenaean general who, with his army, was victorious in the battle against the Athenians and their commander Phrynon. In consequence of this victory, the Mytilenaeans held Pittacus in the greatest honour and presented the supreme power into his hands. After ten years of reign, he resigned his position and the city and constitution were brought into good order.

When the Athenians were about to attack his city, Pittacus challenged their general to a single combat, with the understanding that the result should decide the war, and much bloodshed be thereby avoided. The challenge was accepted, and he killed his enemy with a broad sword. He was then chosen ruler of his city and governed for ten years, during which time he made laws in poetry, one of which was to this effect: "A crime committed by a person when drunk should receive double the punishment that it would merit if the offender were sober." His great motto was this: "Whatever you do, do it well."[1]

Some authors mention that he had a son called Tyrrhaeus. The legend says that his son was killed and when the murderer was brought before Pittacus, he dismissed the man and said, "Pardon is better than repentance." Of this matter, Heraclitus says that he had the murderer into his power and then released him, saying, "Pardon is better than punishment."

Pittacus said that "[It] is a hard thing to be a good man." In Plato's Protagoras, Socrates discusses this saying at length with Protagoras, and Prodicus of Ceos calls "barbarian" the Aeolic dialect that Pittacus spoke: "He didn't know to distinguish the words correctly, being from Lesbos, and having been raised with a barbarian dialect."[2]

He flourished about the forty-second Olympiad. Having lived more than seventy years, he died in the third year of the fifty-second Olympiad (568 BC).''';

  static String platoBio = '''Plato (/ˈpleɪtoʊ/ PLAY-toe;[2] Greek: Πλάτων Plátōn, pronounced [plá.tɔːn] in Classical Attic; 428/427 or 424/423 – 348/347 BC) was an Athenian philosopher during the Classical period in Ancient Greece, founder of the Platonist school of thought, and the Academy, the first institution of higher learning in the Western world.

He is widely considered the pivotal figure in the history of Ancient Greek and Western philosophy, along with his teacher, Socrates, and his most famous student, Aristotle.[a] Plato has also often been cited as one of the founders of Western religion and spirituality.[4] The so-called Neoplatonism of philosophers like Plotinus and Porphyry influenced Saint Augustine and thus Christianity. Alfred North Whitehead once noted: "the safest general characterization of the European philosophical tradition is that it consists of a series of footnotes to Plato."[5]

Plato was the innovator of the written dialogue and dialectic forms in philosophy. Plato is also considered the founder of Western political philosophy. His most famous contribution is the theory of Forms known by pure reason, in which Plato presents a solution to the problem of universals known as Platonism (also ambiguously called either Platonic realism or Platonic idealism). He is also the namesake of Platonic love and the Platonic solids.

His own most decisive philosophical influences are usually thought to have been along with Socrates, the pre-Socratics Pythagoras, Heraclitus and Parmenides, although few of his predecessors' works remain extant and much of what we know about these figures today derives from Plato himself.[b] Unlike the work of nearly all of his contemporaries, Plato's entire body of work is believed to have survived intact for over 2,400 years.[7] Although their popularity has fluctuated over the years, the works of Plato have never been without readers since the time they were written.[8]''';

  static String plutarchBio = '''Plutarch (/ˈpluːtɑːrk/; Greek: Πλούταρχος, Ploútarkhos; Koine Greek: [ˈplutarkʰos]; AD 46–after 119)[1] was a Greek Middle Platonist philosopher,[2] biographer, essayist, and priest at the Temple of Apollo. He is known primarily for his Parallel Lives and Moralia.[3] Upon becoming a Roman citizen, he was named Lucius Mestrius Plutarchus (Λούκιος Μέστριος Πλούταρχος).[a] Plutarch was born to a prominent family in the small town of Chaeronea, about 80 kilometres (50 mi) east of Delphi, in the Greek region of Boeotia. His family was wealthy. The name of Plutarch's father has not been preserved, but based on the common Greek custom of repeating a name in alternate generations, it was probably Nikarchus (Nίκαρχoς). The name of Plutarch's grandfather was Lamprias, as he attested in Moralia[4] and in his Life of Antony.

His brothers, Timon and Lamprias, are frequently mentioned in his essays and dialogues, which speak of Timon in particular in the most affectionate terms. Rualdus, in his 1624 work Life of Plutarchus, recovered the name of Plutarch's wife, Timoxena, from internal evidence afforded by his writings. A letter is still extant, addressed by Plutarch to his wife, bidding her not to grieve too much at the death of their two-year-old daughter, who was named Timoxena after her mother. He hinted at a belief in reincarnation in that letter of consolation.[5]

The exact number of his sons is not certain, although two of them, Autobulus and the second Plutarch, are often mentioned. Plutarch's treatise De animae procreatione in Timaeo is dedicated to them, and the marriage of his son Autobulus is the occasion of one of the dinner parties recorded in the "Table Talk". Another person, Soklarus, is spoken of in terms which seem to imply that he was Plutarch's son, but this is nowhere definitely stated. His treatise on marriage questions, addressed to Eurydice and Pollianus, seems to speak of the latter as having been recently an inmate of his house, but without any clear evidence on whether she was his daughter or not.[6]

Plutarch was the uncle of Sextus of Chaeronea, who was one of the teachers of Marcus Aurelius, and who may have been the same person as the philosopher Sextus Empiricus.

Plutarch studied mathematics and philosophy at the Academy of Athens under Ammonius from 66 to 67.[7]

At some point, Plutarch received Roman citizenship. As evidenced by his new name, Lucius Mestrius Plutarchus, his sponsor for citizenship was Lucius Mestrius Florus, a Roman of consular status whom Plutarch also used as a historical source for his Life of Otho.[8]

He lived most of his life at Chaeronea, and was initiated into the mysteries of the Greek god Apollo. For many years Plutarch served as one of the two priests at the temple of Apollo at Delphi, the site of the famous Delphic Oracle, twenty miles from his home. He probably took part in the Eleusinian Mysteries.[9] By his writings and lectures Plutarch became a celebrity in the Roman Empire, yet he continued to reside where he was born, and actively participated in local affairs, even serving as mayor. At his country estate, guests from all over the empire congregated for serious conversation, presided over by Plutarch in his marble chair. Many of these dialogues were recorded and published, and the 78 essays and other works which have survived are now known collectively as the Moralia.[10]''';

  static String polybiusBio = '''Polybius (/pəˈlɪbiəs/; Greek: Πολύβιος, Polýbios; c.  200 – c.  118 BC)[2] was a Greek historian of the Hellenistic period noted for his work The Histories, which covered the period of 264–146 BC in detail. The work describes the rise of the Roman Republic to the status of dominance in the ancient Mediterranean world. It includes his eyewitness account of the Sack of Carthage and Corinth in 146 BC, and the Roman annexation of mainland Greece after the Achaean War.

Polybius is important for his analysis of the mixed constitution or the separation of powers in government, which was influential on Montesquieu's The Spirit of the Laws and the framers of the United States Constitution. He was also noted for witnessing the events that he recorded.[3]

The leading expert on Polybius was F. W. Walbank (1909–2008), who for 50 years published studies related to him, including a long commentary of his Histories and a biography.[4]''';

  static String protagorasBio = '''Protagoras (/proʊˈtæɡərəs/; Greek: Πρωταγόρας; c. 490 BC – c. 420 BC)[1] was a pre-Socratic Greek philosopher. He is numbered as one of the sophists by Plato. In his dialogue Protagoras, Plato credits him with inventing the role of the professional sophist.

Protagoras also is believed to have created a major controversy during ancient times through his statement that, "Man is the measure of all things", interpreted by Plato to mean that there is no absolute truth but that which individuals deem to be the truth.

Although there is reason to question the extent of the interpretation of his arguments that has followed, that concept of individual relativity was revolutionary for the time, and contrasted with other philosophical doctrines that claimed the universe was based on something objective, outside human influence or perceptions.''';

  static String pythagorasBio = '''Pythagoras of Samos[a] (c. 570 – c. 495 BC)[b] was an ancient Ionian Greek philosopher and the eponymous founder of Pythagoreanism. His political and religious teachings were well known in Magna Graecia and influenced the philosophies of Plato, Aristotle, and, through them, Western philosophy. Knowledge of his life is clouded by legend, but he appears to have been the son of Mnesarchus, a gem-engraver on the island of Samos. Modern scholars disagree regarding Pythagoras's education and influences, but they do agree that, around 530 BC, he travelled to Croton in southern Italy, where he founded a school in which initiates were sworn to secrecy and lived a communal, ascetic lifestyle. This lifestyle entailed a number of dietary prohibitions, traditionally said to have included vegetarianism, although modern scholars doubt that he ever advocated for complete vegetarianism.

The teaching most securely identified with Pythagoras is metempsychosis, or the "transmigration of souls", which holds that every soul is immortal and, upon death, enters into a new body. He may have also devised the doctrine of musica universalis, which holds that the planets move according to mathematical equations and thus resonate to produce an inaudible symphony of music. Scholars debate whether Pythagoras developed the numerological and musical teachings attributed to him, or if those teachings were developed by his later followers, particularly Philolaus of Croton. Following Croton's decisive victory over Sybaris in around 510 BC, Pythagoras's followers came into conflict with supporters of democracy and Pythagorean meeting houses were burned. Pythagoras may have been killed during this persecution, or escaped to Metapontum, where he eventually died.

In antiquity, Pythagoras was credited with many mathematical and scientific discoveries, including the Pythagorean theorem, Pythagorean tuning, the five regular solids, the Theory of Proportions, the sphericity of the Earth, and the identity of the morning and evening stars as the planet Venus. It was said that he was the first man to call himself a philosopher ("lover of wisdom")[c] and that he was the first to divide the globe into five climatic zones. Classical historians debate whether Pythagoras made these discoveries, and many of the accomplishments credited to him likely originated earlier or were made by his colleagues or successors. Some accounts mention that the philosophy associated with Pythagoras was related to mathematics and that numbers were important, but it is debated to what extent, if at all, he actually contributed to mathematics or natural philosophy.

Pythagoras influenced Plato, whose dialogues, especially his Timaeus, exhibit Pythagorean teachings. Pythagorean ideas on mathematical perfection also impacted ancient Greek art. His teachings underwent a major revival in the first century BC among Middle Platonists, coinciding with the rise of Neopythagoreanism. Pythagoras continued to be regarded as a great philosopher throughout the Middle Ages and his philosophy had a major impact on scientists such as Nicolaus Copernicus, Johannes Kepler, and Isaac Newton. Pythagorean symbolism was used throughout early modern European esotericism, and his teachings as portrayed in Ovid's Metamorphoses influenced the modern vegetarian movement.''';

  static String socratesBio = '''Socrates (/ˈsɒkrətiːz/;[2] Ancient Greek: Σωκρᾰ́της, romanized: Sōkrátēs, [sɔːkrátɛːs]; c. 470 – 399 BC)[3][4] was a classical Greek (Athenian) philosopher credited as one of the founders of Western philosophy, and as being the first moral philosopher[5][6] of the Western ethical tradition of thought.[7][8][9] An enigmatic figure, he made no writings, and is known chiefly through the accounts of classical writers writing after his lifetime, particularly his students Plato and Xenophon. Other sources include the contemporaneous Antisthenes, Aristippus, and Aeschines of Sphettos. Aristophanes, a playwright, is the main contemporary author to have written plays mentioning Socrates during Socrates' lifetime, though a fragment of Ion of Chios' Travel Journal provides important information about Socrates' youth.[10][11]

Plato's dialogues are among the most comprehensive accounts of Socrates to survive from antiquity, from which Socrates has become renowned for his contributions to the fields of ethics and epistemology. It is this Platonic Socrates who lends his name to the concepts of Socratic irony and the Socratic method, or elenchus. However, questions remain regarding the distinction between the real-life Socrates and Plato's portrayal of Socrates in his dialogues.[12]

Socrates exerted a strong influence on philosophers in later antiquity and in the modern era. Depictions of Socrates in art, literature and popular culture have made him one of the most widely known figures in the Western philosophical tradition.''';

  static String solonBio = '''Solon (Greek: Σόλων Sólōn [só.lɔːn]; c.  630 – c.  560 BC)[1] was an Athenian statesman, lawmaker and poet. He is remembered particularly for his efforts to legislate against political, economic and moral decline in archaic Athens.[2] His reforms failed in the short-term, yet he is often credited with having laid the foundations for Athenian democracy.[3][4][5] He wrote poetry for pleasure, as patriotic propaganda, and in defence of his constitutional reform.

Modern knowledge of Solon is limited by the fact that his works only survive in fragments and appear to feature interpolations by later authors and by the general paucity of documentary and archaeological evidence covering Athens in the early 6th century BC.[6] Ancient authors such as Herodotus and Plutarch are the main sources, but wrote about Solon long after his death. 4th-century orators, such as Aeschines, tended to attribute to Solon all the laws of their own, much later times.[2][7]''';

  static String sophoclesBio = '''Sophocles (/ˈsɒfəkliːz/;[1] Greek: Σοφοκλῆς Sophoklēs, pronounced [so.pʰo.klɛ̂ːs]; c. 497/6 – winter 406/5 BC)[2] is one of three ancient Greek tragedians whose plays have survived. His first plays were written later than or contemporary with those of Aeschylus, and earlier than or contemporary with those of Euripides. Sophocles wrote over 120 plays[3] during the course of his life, but only seven have survived in a complete form: Ajax, Antigone, Women of Trachis, Oedipus Rex, Electra, Philoctetes and Oedipus at Colonus.[4] For almost 50 years, Sophocles was the most celebrated playwright in the dramatic competitions of the city-state of Athens that took place during the religious festivals of the Lenaea and the Dionysia. He competed in 30 competitions, won 24, and was never judged lower than second place. Aeschylus won 13 competitions, and was sometimes defeated by Sophocles, while Euripides won four competitions.[5]

The most famous tragedies of Sophocles feature Oedipus and also Antigone: they are generally known as the Theban plays, although each play was actually a part of a different tetralogy, the other members of which are now lost. Sophocles influenced the development of drama, most importantly by adding a third actor, thereby reducing the importance of the chorus in the presentation of the plot. He also developed his characters to a greater extent than earlier playwrights such as Aeschylus.[6]''';

  static String thalesBio = '''Thales of Miletus (/ˈθeɪliːz/ THAY-leez; Greek: Θαλῆς (ὁ Μιλήσιος), Thalēs; c. 624/623 – c. 548/545 BC) was a Greek mathematician, astronomer and pre-Socratic philosopher from Miletus in Ionia, Asia Minor. He was one of the Seven Sages of Greece. Many, most notably Aristotle, regarded him as the first philosopher in the Greek tradition,[1][2] and he is otherwise historically recognized as the first individual in Western civilization known to have entertained and engaged in scientific philosophy.[3][4]

Thales is recognized for breaking from the use of mythology to explain the world and the universe, and instead explaining natural objects and phenomena by theories and hypotheses, in a precursor to modern science. Almost all the other pre-Socratic philosophers followed him in explaining nature as deriving from a unity of everything based on the existence of a single ultimate substance, instead of using mythological explanations. Aristotle regarded him as the founder of the Ionian School and reported Thales' hypothesis that the originating principle of nature and the nature of matter was a single material substance: water.[5]

In mathematics, Thales used geometry to calculate the heights of pyramids and the distance of ships from the shore. He is the first known individual to use deductive reasoning applied to geometry, by deriving four corollaries to Thales' theorem. He is the first known individual to whom a mathematical discovery has been attributed.[6]''';

  static String themistoclesBio = '''Themistocles (/θəˈmɪstəkliːz/; Greek: Θεμιστοκλῆς Greek pronunciation: [tʰemistoklɛ̂ːs] Themistoklẽs; "Glory of the Law";[3] c. 524–459 BC)[1][2] was an Athenian politician and general. He was one of a new breed of non-aristocratic politicians who rose to prominence in the early years of the Athenian democracy. As a politician, Themistocles was a populist, having the support of lower-class Athenians, and generally being at odds with the Athenian nobility. Elected archon in 493 BC, he convinced the polis to increase the naval power of Athens, a recurring theme in his political career. During the first Persian invasion of Greece he fought at the Battle of Marathon[4] (490 BC) and was possibly one of the ten Athenian strategoi (generals) in that battle.[citation needed]

In the years after Marathon, and in the run-up to the second Persian invasion of 480–479 BC, Themistocles became the most prominent politician in Athens. He continued to advocate for a strong Athenian Navy, and in 483 BC he persuaded the Athenians to build a fleet of 200 triremes; these proved crucial in the forthcoming conflict with Persia. During the second invasion, he effectively commanded the Greek allied navy at the battles of Artemisium and Salamis in 480 BC. Due to his subterfuge, the Allies successfully lured the Persian fleet into the Straits of Salamis, and the decisive Greek victory there was the turning point of the war. The invasion was conclusively repulsed the following year after the Persian defeat at the land Battle of Plataea.

After the conflict ended, Themistocles continued his pre-eminence among Athenian politicians. However, he aroused the hostility of Sparta by ordering the re-fortification of Athens, and his perceived arrogance began to alienate him from the Athenians. In 472 or 471 BC, he was ostracised, and went into exile in Argos. The Spartans now saw an opportunity to destroy Themistocles, and implicated him in the alleged treasonous plot of 478 BC of their own general Pausanias. Themistocles thus fled from Greece. Alexander I of Macedon (r. 498–454 BC) temporarily gave him sanctuary at Pydna before he traveled to Asia Minor, where he entered the service of the Persian king Artaxerxes I (reigned 465–424 BC). He was made governor of Magnesia, and lived there for the rest of his life.

Themistocles died in 459 BC, probably of natural causes.[1][5] His reputation was posthumously rehabilitated, and he was re-established as a hero of the Athenian (and indeed Greek) cause. Themistocles can still reasonably be thought of as "the man most instrumental in achieving the salvation of Greece" from the Persian threat, as Plutarch describes him. His naval policies would have a lasting impact on Athens as well, since maritime power became the cornerstone of the Athenian Empire and golden age. Thucydides assessed Themistocles as "a man who exhibited the most indubitable signs of genius; indeed, in this particular he has a claim on our admiration quite extraordinary and unparalleled".[6]''';

  static String theocritusBio = '''Theocritus (/θiːˈɒkrɪtəs/; Greek: Θεόκριτος, Theokritos; born c. 300 BC, died after 260 BC) was a Sicilian poet and the creator of Ancient Greek pastoral poetry.[1] Little is known of Theocritus beyond what can be inferred from his writings. We must, however, handle these with some caution, since some of the poems (Idylls; Εἰδύλλια) commonly attributed to him have little claim to authenticity. It is clear that at a very early date two collections were made: one consisting of poems whose authorship was doubtful yet formed a corpus of bucolic poetry, the other a strict collection of those works considered to have been composed by Theocritus himself. [2]

Theocritus was from Sicily, as he refers to Polyphemus, the Cyclops in the Odyssey, as his "countryman." He also probably lived in Alexandria for a while, where he wrote about everyday life, notably Pharmakeutria. It is also speculated that Theocritus was born in Syracuse, lived on the island of Kos, and lived in Egypt during the time of Ptolemy II.

The record of these recensions is preserved by two epigrams, one of which proceeds from Artemidorus of Tarsus, a grammarian, who lived in the time of Sulla and is said to have been the first editor of these poems. He says, "The Muses of country song were once scattered, but now they are all together in one pen, in one flock."[3] The second epigram is anonymous, and runs as follows: "The Chian is another man, but I, Theocritus, who wrote these poems, am one of the great populace of Syracuse, the son of Praxagoras and renowned Philinna; and the Muse I have adopted is no alien."[4] The last line may mean that he wrote nothing but bucolic poems, or that he only wrote in Doric. The assertion that he was from Syracuse appears to be upheld by allusions in the Idylls (7.7, 28.16–18).[2]

The information concerning his parentage bears the stamp of genuineness, and disposes of a rival theory based upon a misinterpretation of Idyll 7—which made him the son of one Simichus. A larger collection, possibly more extensive than that of Artemidorus, and including poems of doubtful authenticity, was known to the author of the Suda, who says: "Theocritus wrote the so-called bucolic poems in the Doric dialect. Some persons also attribute to him the following: Daughters of Proetus, Hopes, Hymns, Heroines, Dirges, Lyrics, Elegies, Iambics, Epigrams."[2]

The first of these may have been known to Virgil, who refers to the Proetides at Eclogue 6.48. The spurious poem 21 may have been one of the Hopes, and poem 26 may have been one of the Heroines; elegiacs are found in 8.33—60, and the spurious epitaph on Bion may have been one of the Dirges. The other classes are all represented in the larger collection which has come down to us.[2]''';

  static String theognisBio = '''Theognis of Megara (Greek: Θέογνις ὁ Μεγαρεύς, Théognis ho Megareús) was a Greek lyric poet active in approximately the sixth century BC. The work attributed to him consists of gnomic poetry quite typical of the time, featuring ethical maxims and practical advice about life. He was the first Greek poet known to express concern over the eventual fate and survival of his own work[1] and, along with Homer, Hesiod and the authors of the Homeric Hymns, he is among the earliest poets whose work has been preserved in a continuous manuscript tradition (the work of other archaic poets is preserved as scattered fragments).[2] In fact more than half of the extant elegiac poetry of Greece before the Alexandrian period is included in the approximately 1,400 lines of verse attributed to him [3] (though several poems traditionally attributed to him were composed by others, e.g. Solon, Euenos).[4] Some of these verses inspired ancient commentators to value him as a moralist[5] yet the entire corpus is valued today for its "warts and all" portrayal of aristocratic life in archaic Greece.[6]

The verses preserved under Theognis' name are written from the viewpoint of an aristocrat confronted by social and political revolution typical of Greek cities in the archaic period. Part of his work is addressed to Cyrnus, who is presented as his erōmenos. The author of the poems celebrated him in his verse and educated him in the aristocratic values of the time, yet Cyrnus came to symbolize much about his imperfect world that the poet bitterly resented:

πᾶσι δ᾽ ὅσοισι μέμηλε καὶ ἐσσομένοισιν ἀοιδὴ
:ἔσσῃ ὁμῶς, ὄφρ᾽ ἂν γῆ τε καὶ ἠέλιος,
αὐτὰρ ἐγὼν ὀλίγης παρὰ σεῦ οὐ τυγχάνω αἰδοῦς,
:ἀλλ᾽ ὥσπερ μικρὸν παῖδα λόγοις μ᾽ ἀπατᾷς.

[7]
To all to whom there is pleasure in song and to people yet unborn
You also will be a song, while the earth and sun remain,
Yet I am treated by you without even the least mark of respect
And, as if I were a child, you have deceived me with words.

In spite of such self-disclosures, almost nothing is known about Theognis the man: little is recorded by ancient sources and modern scholars question the authorship of most of the poems preserved under his name.[8]''';

  static String theophrastusBio = '''Theophrastus (/ˌθiːəˈfræstəs/; Greek: Θεόφραστος Theόphrastos; c. 371 – c. 287 BC),[3] a Greek native of Eresos in Lesbos[4] (Λέσβος Lésvos), was the successor to Aristotle in the Peripatetic school. He came to Athens at a young age and initially studied in Plato's school. After Plato's death, he attached himself to Aristotle who took to Theophrastus in his writings. When Aristotle fled Athens, Theophrastus took over as head of the Lyceum.[4] Theophrastus presided over the Peripatetic school for thirty-six years, during which time the school flourished greatly. He is often considered the father of botany for his works on plants. After his death, the Athenians honoured him with a public funeral. His successor as head of the school was Strato of Lampsacus.

The interests of Theophrastus were wide ranging, extending from biology and physics to ethics and metaphysics. His two surviving botanical works, Enquiry into Plants (Historia Plantarum) and On the Causes of Plants, were an important influence on Renaissance science. There are also surviving works On Moral Characters, On Sense Perception, and On Stones, as well as fragments on Physics and Metaphysics. In philosophy, he studied grammar and language and continued Aristotle's work on logic. He also regarded space as the mere arrangement and position of bodies, time as an accident of motion, and motion as a necessary consequence of all activity.[citation needed] In ethics, he regarded happiness as depending on external influences as well as on virtue.''';

  static String thucydidesBio = '''Thucydides (/θjuːˈsɪdɪdiːz/; Ancient Greek: Θουκυδίδης Thoukūdídēs [tʰuːkyːdídɛːs]; c.  460 – c.  400 BC) was an Athenian historian and general. His History of the Peloponnesian War recounts the fifth-century BC war between Sparta and Athens until the year 411 BC. Thucydides has been dubbed the father of "scientific history" by those who accept his claims to have applied strict standards of impartiality and evidence-gathering and analysis of cause and effect, without reference to intervention by the deities, as outlined in his introduction to his work.[2][3][4]

He also has been called the father of the school of political realism, which views the political behavior of individuals and the subsequent outcomes of relations between states as ultimately mediated by, and constructed upon, the emotions of fear and self-interest.[5] His text is still studied at universities and military colleges worldwide.[6] The Melian dialogue is regarded as a seminal work of international relations theory, while his version of Pericles' Funeral Oration is widely studied by political theorists, historians, and students of the classics.

More generally, Thucydides developed an understanding of human nature to explain behaviour in such crises as plagues, massacres, and civil war.''';

  static String xenophanesBio = '''Xenophanes of Colophon (/zəˈnɒfəniːz/;[1][2] Ancient Greek: Ξενοφάνης ὁ Κολοφώνιος [ksenopʰánɛːs ho kolopʰɔ̌ːnios]; c. 570 – c. 475 BC)[3] was a Greek philosopher, theologian, poet, and social and religious critic. Xenophanes is seen as one of the most important presocratic philosophers. Eusebius quoting Aristocles of Messene says that Xenophanes was the founder of a line of philosophy that culminated in Pyrrhonism. This line begins with Xenophenes and goes through Parmenides, Melissus of Samos, Zeno of Elea, Leucippus, Democritus, Protagoras, Nessas of Chios, Metrodorus of Chios, Diogenes of Smyrna, Anaxarchus, and finally Pyrrho.[4] It had also been common since antiquity to see Xenophanes as the teacher of Zeno of Elea, the colleague of Parmenides, and generally associated with the Eleatic school, but common opinion today is likewise that this is false.[5]

Xenophanes lived a life of travel, having left Ionia at the age of 25 and continuing to travel throughout the Greek world for another 67 years.[6] Some scholars say he lived in exile in Sicily.[7] Knowledge of his views comes from fragments of his poetry, surviving as quotations by later Greek writers. To judge from these, his elegiac and iambic[8] poetry criticized and satirized a wide range of ideas, including Homer and Hesiod, the belief in the pantheon of anthropomorphic gods and the Greeks' veneration of athleticism. He is the earliest Greek poet who claims explicitly to be writing for future generations, creating "fame that will reach all of Greece, and never die while the Greek kind of songs survives."[9]''';

  static String xenophonBio = '''Xenophon of Athens (/ˈzɛnəfən, -ˌfɒn/; Greek: Ξενοφῶν, Ancient Greek: [ksenopʰɔ̂ːn], Xenophōn; c. 430 BC[2] – 354 BC) was an ancient Greek historian, philosopher and soldier.[3] Xenophon became commander of the Ten Thousand at about 30, with noted military historian Theodore Ayrault Dodge saying of him, “the centuries since have devised nothing to surpass the genius of this warrior.”[4] He established the precedent for many logistical operations and was among the first to use flanking maneuvers and feints. A student of Socrates, Xenophon is known for his writings and recording the history of his time (late-5th and early-4th centuries BC), in such works as Anabasis and Hellenica, which covered the final seven years and the aftermath of the Peloponnesian War (431–404 BC), thus representing a thematic continuation of Thucydides' History of the Peloponnesian War.

As one of the Ten Thousand (Greek mercenaries), Xenophon participated in Cyrus the Younger's failed campaign to claim the Persian throne from his brother Artaxerxes II of Persia. He recounted the events in Anabasis, his most notable history. Like Plato, Xenophon is an authority on Socrates, about whom he wrote several books of dialogues (the Memorabilia) and an Apology of Socrates to the Jury, which recounts the philosopher's trial in 399 BC.

Despite being born an Athenian citizen, Xenophon was also associated with Sparta, the traditional enemy of Athens. His pro-oligarchic politics, military service under Spartan generals in the Persian campaign and elsewhere, and his friendship with King Agesilaus II endeared Xenophon to the Spartans. Some of his works have a pro–Spartan bias, especially the royal biography Agesilaus and the Constitution of the Spartans.

Xenophon's works span several genres and are written in plain-language Attic Greek, for which reason they serve as translation exercises for contemporary students of the Ancient Greek language. In the Lives and Opinions of Eminent Philosophers, Diogenes Laërtius observed that, as a writer, Xenophon of Athens was known as the “Attic Muse”, for the sweetness of his diction (2.6[clarification needed]).''';

  //Start of philosopher library data:
  static List<String> aeschinesQuotes = [
    'Lying rumours do not penetrate farther than our ears.',
    'Truth is strong enough to overcome all human sophistries.',
    'For at a congress of the Lacedaemonian allies and the other Greeks, in which Amyntas, the father of Philip, being entitled to a seat, was represented by a delegate whose vote was absolutely under his control, he joined the other Greeks in voting to help Athens to recover possession of Amphipolis. As proof of this I presented from the public records the resolution of the Greek congress and the names of those who voted.',
    'The man who is unprincipled in private life will never make a good public servant, nor will one who is of no account at home prove a man of light and leading with the embassy in Macedonia; for he has only changed his abode, not his nature.',
    'He is specially deserving of our hatred, in that being wicked he has all the outward signs of virtue.',
    'An evil nature wielding great authority brings misfortune upon the community.',
    'Right is not unlimited, but is limited by the laws.'
  ];

  static List<String> aeschylusQuotes = [
    '''So in the Libyan fable it is told 
    That once an eagle, stricken with a dart,
    Said, when he saw the fashion of the shaft,
    \"With our own feathers, not by others' hands,
    Are we now smitten.\"''',
    '''Of all the gods, Death only craves not gifts:
    Nor sacrifice, nor yet drink-offering poured
    Avails; no altars hath he, nor is soothed
    By hymns of praise. From him alone of all
    The powers of heaven Persuasion holds aloof.''',
    '''O Death the Healer, scorn thou not, I pray,
To come to me: of cureless ills thou art
The one physician. Pain lays not its touch
Upon a corpse.''',
    '''A prosperous fool is a grievous burden.''',
    '''Bronze is the mirror of the form; wine, of the heart''',
    '''It is not the oath that makes us believe the man, but the man the oath.''',
    '''Wealth itself is blameless, but there can be fear for its precious eye; for I consider the presence of a house's master to be its saving light.''',
    '''My friends, anyone with real experience of trouble knows how, when a surge of it comes upon them, they are apt to fear everything; but when fortune's tide is good, they trust that the same breeze will blow favourably for ever.''',
    "Mankind's troubles flicker about, and you'll nowhere see misery fly on the same wings.",
    '''Learn to know thy heart,
    And, as the times, so let thy manners change,
    For by the law of change a new God rules.''',
    "Words are the physicians of a mind diseased.",
    "For it would be better to die once and for all than to suffer pain for all one's life.",
  ];


  static List<String> aesopQuotes = [
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

  static List<String> agathonQuotes =[
    'Even God cannot change the past.',
    'Art loves chance, and chance loves art.',
    'It is a part of probability that many improbable things will happen.',
    'Every ruler must remember three things. Firstly, that he rules man; secondly, that he rules according to law, and thirdly, that he does not rule for ever.',
  ];

  static List<String> agesilausQuotes = [
    'Royalty consists not in vain pomp, but in great virtues',
    'If I have done any deed worthy of remembrance, that deed will be my monument. If not, no monument can preserve my memory.',
    'If I have done any honorable exploit, that is my monument; but if I have done none, all your statues will signify nothing.',
    'Valor would cease to be a virtue, if there were no injustice.',
    'By sowing frugality we reap liberty, a golden harvest.',
    'If all men were just there would be no need of valor.',
    'I shall show that the place does not honor the man, but the man the place.'
  ];

  static List<String> alcaeusQuotes = [
    '''Not in hewn stones, nor in well-fashioned beams,
Not in the noblest of the builder's dreams,
But in courageous men of purpose great,
There is the fortress, there the living State.''',
    '''O violet-tressed Sappho chaste,
O maid with honeyed smile!
I fain would tell what is in my breast,
Did shame me not beguile.''',
  ];

  static List<String> alexanderQuotes = [
    'Are you still to learn that the end and perfection of our victories is to avoid the vices and infirmities of those whom we subdue?',
    'Holy shadows of the dead, I’m not to blame for your cruel and bitter fate, but the accursed rivalry which brought sister nations and brother people, to fight one another. I do not feel happy for this victory of mine. On the contrary, I would be glad, brothers, if I had all of you standing here next to me, since we are united by the same language, the same blood and the same visions.',
    'Now you fear punishment and beg for your lives, so I will let you free, if not for any other reason so that you can see the difference between a Greek king and a barbarian tyrant, so do not expect to suffer any harm from me. A king does not kill messengers.',
    'There is nothing impossible to him who will try.',
    'Shall I pass by and leave you lying there because of the expedition you led against Greece, or shall I set you up again because of your magnanimity and your virtues in other respects?',
    'For my part, I assure you, I had rather excel others in the knowledge of what is excellent, than in the extent of my power and dominion.',
    'For as a newborn babe cannot be nourished without the nurse\'s milk, nor conducted to the approaches that lead to growth in life, so a city cannot thrive without fields and the fruits thereof pouring into its walls.',
  ];

  static List<String> anacreonQuotes = [
    '''To-day belongs to me,
To-morrow who can tell.''',
    '''The black earth drinks, in turn
The trees drink up the earth.
The sea the torrents drinks, the sun the sea,
And the moon drinks the sun.
Why, comrades, do ye flout me,
If I, too, wish to drink?''',
    '''Nature gave horns to the bull,
Hoofs gave she to the horse.
To the lion cavernous jaws,
And swiftness to the hare.
The fish taught she to swim,
The bird to cleave the air;
To man she reason gave;
Not yet was woman dowered.
What, then, to woman gave she?
The priceless gift of beauty.
Stronger than any buckler,
Than any spear more piercing.
Who hath the gift of beauty.
Nor fire nor steel shall harm her.''',
    '''Ah, cruel 'tis to love,
And cruel not to love,
But cruelest of all
To love and love in vain.''',
    '''Love for lineage nothing cares.
Tramples wisdom under foot.
Worth derides, and only looks
For money.''',
    '''Cursed be he above all others
Who's enslaved by love of money.
Money takes the place of brothers,
Money takes the place of parents.
Money brings us war and slaughter.''',
    '''Whence can we the future learn?
Life to mortals is obscure.''',
    '''But when an old man dances,
His locks with age are grey.
But he's a child in mind.''',
    '''E'en though I would not, die I must;
Why stray I thus through life?''',
    '''And last of all comes death.'''
  ];

  static List<String> anaxagorasQuotes = [
    "Wrongly do the Greeks suppose that aught begins or ceases to be; for nothing comes into being or is destroyed; but all is an aggregation or secretion of pre-existent things: so that all-becoming might more correctly be called becoming-mixed, and all corruption, becoming-separate.",
    "All things were together, infinite both in number and in smallness; for the small too was infinite.",
    "And since these things are so, we must suppose that there are contained many things and of all sorts in the things that are uniting, seeds of all things, with all sorts of shapes and colours and savours.",
    "Mind is infinite and self-ruled, and is mixed with nothing, but is alone itself by itself.",
    "Thought is something limitless and independent, and has been mixed with no thing but is alone by itself. ... What was mingled with it would have prevented it from having power over anything in the way in which it does. ... For it is the finest of all things and the purest.",
    "The Greeks follow a wrong usage in speaking of coming into being and passing away; for nothing comes into being or passes away, but there is mingling and separation of things that are. So they would be right to call coming into being mixture, and passing away separation.",
    "The sun provides the moon with its brightness."
  ];

  static List<String> anaximanderQuotes = [
    '''There cannot be a single, simple body which is infinite, either, as some hold, one distinct from the elements, which they then derive from it, nor without this qualification. For there are some who make this (i.e. a body distinct from the elements) the infinite, and not air or water, in order that the other things may not be destroyed by their infinity. They are in opposition one to another — air is cold, water moist, and fire hot—and therefore, if any one of them were infinite, the rest would have ceased to be by this time. Accordingly they say that what is infinite is something other than the elements, and from it the elements arise.''',
    '''The Earth is cylindrical, three times as wide as it is deep, and only the upper part is inhabited. But this Earth is isolated in space, and the sky is a complete sphere in the center of which is located, unsupported, our cylinder, the Earth, situated at an equal distance from all the points of the sky.'''
  ];

  static List<String> antisthenesQuotes = [
    "The investigation of the meaning of words is the beginning of education.",
    "I'd rather be mad than feel pleasure.",
    "It is a royal privilege to do good and be ill spoken of.",
    "It is better to fall in with crows than with flatterers; for in the one case you are devoured when dead, in the other case while alive.",
    "States are doomed when they are unable to distinguish good men from bad.",
    "As iron is eaten away by rust, so the envious are consumed by their own passion.",
    "Ill repute is a good thing and much the same as pain.",
    "It is better to fight with a few good men against all the wicked, than with many wicked men against a few good men.",
    "One should attend to one's enemies, for they are the first persons to detect one's errors.",
    "Virtue is the same for a man and for a woman.",
    "Wealth and poverty do not lie in a person's estate, but in their souls.",
    "I have enough to eat till my hunger is stayed, to drink till my thirst is sated; to clothe myself withal; and out of doors not Callias there, with all his riches, is more safe than I from shivering; and when I find myself indoors, what warmer shirting do I need than my bare walls? what ampler greatcoat than the tiles above my head?",
    "There is no work so mean, but it would amply serve me to furnish me with sustenance.",
    "To all my friends without distinction I am ready to display my opulence: come one, come all; and whosoever likes to take a share is welcome to the wealth that lies within my soul."
  ];

  static List<String> archilochusQuotes = [
    '''One of the Saians (Thracian tribe) now delights in the shield I discarded
Unwillingly near a bush, for it was perfectly good,
But at least I got myself safely out. Why should I care for that shield?
Let it go. Some other time I'll find another no worse.''',
    '''I am the servant of Lord Enyalios [Ares, god of war],
and skilled in the lovely gift of the Muses.''',
    '''For of the two poets who for all time deserve to be compared with no other, namely Homer and Archilochus, Homer praised nearly everything...But Archilochus went to the opposite extreme, to censure, seeing, I suppose, that men are in greater need of this, and first of all he censures himself...", thus winning for himself "...the highest commendation from heaven.''',
    '''My Soul, my Soul, all disturbed by sorrows inconsolable,
Bear up, hold out, meet front-on the many foes that rush on you
Now from this side and now that, enduring all such strife up close,
Never wavering; and should you win, don't openly exult,
Nor, defeated, throw yourself lamenting in a heap at home,
But delight in things that are delightful and, in hard times, grieve
Not too much—appreciate the rhythm that controls men's lives.''',
    "Keep some measure in the joy you take in luck, and the degree you give way to sorrow."
  ];

  static List<String> archimedesQuotes = [
    "Give me the place to stand, and I shall move the earth.",
    "Those who claim to discover everything but produce no proofs of the same may be confuted as having actually pretended to discover the impossible.",
    "Mathematics reveals its secrets only to those who approach it with pure love, for its own beauty.",
    "He who knows how to speak, knows also when."
  ];

  static List<String> aristippusQuotes = [
    "To endeavour to adapt circumstances to myself, not myself to circumstances",
    "Every complexion of life, every station and circumstance sat gracefully upon him.",
    "It is not abstinence from pleasures that is best, but mastery over them without ever being worsted",
    "Wise people, even though all laws were abolished, would still lead the same life",
  ];

  static List<String> aristophanesQuotes = [
    "Men of sense often learn from their enemies.",
    "It is from their foes, not their friends, that cities learn the lesson of building high walls and ships of war.",
    "Man naturally is deceitful, ever indeed, and always, in every one thing.",
    "Weak mortals, chained to the earth, creatures of clay as frail as the foliage of the woods, you unfortunate race, whose life is but darkness, as unreal as a shadow, the illusion of a dream.",
    "Words give wings to the mind and make a man soar to heaven.",
    "I pained folk but little and caused them much amusement; my conscience rebuked me for nothing.",
    "Comedy too can sometimes discern what is right. I shall not please, but I shall say what is true."
  ];

  static List<String> aristotleQuotes = [
    "My lectures are published and not published; they will be intelligible to those who heard them, and to none beside.",
    "Knowledge of the fact differs from knowledge of the reason for the fact.",
    '''All men by nature desire to know. An indication of this is the delight we take in our senses; for even apart from their usefulness they are loved for themselves; and above all others the sense of sight. For not only with a view to action, but even when we are not going to do anything, we prefer sight to almost everything else. The reason is that this, most of all the senses, makes us know and brings to light many differences between things.''',
    "That which is desirable on its own account and for the sake of knowing it is more of the nature of wisdom than that which is desirable on account of its results.",
    "If, then, God is always in that good state in which we sometimes are, this compels our wonder; and if in a better this compels it yet more. And God is in a better state. And life also belongs to God; for the actuality of thought is life, and God is that actuality; and God's self-dependent actuality is life most good and eternal.",
    "Those who assert that the mathematical sciences say nothing of the beautiful or the good are in error. For these sciences say and prove a great deal about them; if they do not expressly mention them, but prove attributes which are their results or definitions, it is not true that they tell us nothing about them. The chief forms of beauty are order and symmetry and definiteness, which the mathematical sciences demonstrate in a special degree.",
    "If there is some end of the things we do, which we desire for its own sake, clearly this must be the good. Will not knowledge of it, then, have a great influence on life? Shall we not, like archers who have a mark to aim at, be more likely to hit upon what we should? If so, we must try, in outline at least, to determine what it is.",
    "It is the mark of an educated man to look for precision in each class of things just so far as the nature of the subject admits; it is evidently equally foolish to accept probable reasoning from a mathematician and to demand from a rhetorician scientific proofs.",
    "Piety requires us to honor truth above our friends.",
    "Human good turns out to be activity of soul in accordance with virtue, and if there are more than one virtue, in accordance with the best and most complete.",
    "For one swallow does not make a summer, nor does one day; and so too one day, or a short time, does not make a man blessed and happy.",
    "We must act in the same way, then, in all other matters as well, that our main task may not be subordinated to minor questions. Nor must we demand the cause in all matters alike; it is enough in some cases that the fact be well established, as in the case of the first principles; the fact is the primary thing or first principle.",
    "Everything that depends on the action of nature is by nature as good as it can be.",
    "When people are friends, they have no need of justice, but when they are just, they need friendship in addition.",
    "For we are busy that we may have leisure, and make war that we may live in peace."
    "The best friend is the man who in wishing me well wishes it for my sake."
  ];

  static List<String> biasQuotes = [
    "Great riches come to many men by chance.",
    "Choose the course which you adopt with deliberation; but when you have adopted it, then persevere in it with firmness.",
    "Do not speak fast, for that shows folly.",
    "Love prudence.",
    "Speak of the Gods as they are.",
    "Accept of things, having procured them by persuasion, not by force.",
    "Whatever good fortune befalls you, attribute it to the gods.",
    "Cherish wisdom as a means of travelling from youth to old age, for it is more lasting than any other possession.",
    '''Seek to please all the citizens, even though
Your house may be in an ungracious city.
For such a course will favour win from all:
But haughty manners oft produce destruction.''',
    '''Great strength of body is the gift of nature;
But to be able to advise whate'er
Is most expedient for one's country's good,
Is the peculiar work of sense and wisdom.''',
    "Most men are wicked."
  ];

  static List<String> bionQuotes = [
    "Good slaves are free, but bad free men are slaves of many passions.",
    "How stupid it was for the king to tear out his hair in grief, as if baldness were a cure for sorrow.",
    "Boys throw stones at frogs in fun, but the frogs do not die in fun, but in earnest.",
    "Love of money is the mother-city (metropolis) of all evils.",
    "Just as the good actor perform well whatever role the poet assigns, so too must the good man perform whatever Fortune assigns. For she, says Bion, just like a poet, sometimes assigns the leading role, sometimes that of the supporting role; sometimes that of a king, sometimes that of a beggar. Do not, therefore, being a supporting actor, desire the role of the lead.",
    "Therefore we should not try to alter circumstances but to adapt ourselves to them as they really are, just as sailors do. They don't try to change the winds or the sea but ensure that they are always ready to adapt themselves to conditions. In a flat calm they use the oars; with a following breeze they hoist full sail; in a head wind they shorten sail or heave to. Adapt yourself to circumstances in the same way.",
    "Old age is the harbor of all ills.",
    "Wealth is the sinews of success.",
    "The road to Hades is easy to travel; at any rate men pass away with their eyes shut.",
    "Self-conceit is the enemy of progress.",
  ];

  static List<String> chilonQuotes = [
    "Seek no excess﻿—all timely things are good.",
    '''Gold is best tested by a whetstone hard,
Which gives a certain proof of purity;
And gold itself acts as the test of men,
By which we know the temper of their minds.''',
    "Threaten no one; for that is a womanly trick.",
    "Be more prompt to go to one’s friends in adversity than in prosperity.",
    "Do not speak evil of the dead.",
    "Honor old age.",
    "Prefer punishment to disgraceful gain; for the one is painful but once, but the other for one’s whole life.",
    "To rule one’s tongue, especially at a banquet, and not to speak ill of one’s neighbors; for if one does so one is sure to hear what one will not like.",
    "A sole governor is in a slippery position at home; and I consider that tyrant a fortunate man who dies a natural death in his own house.",
  ];

  static List<String> cleobulusQuotes = [
    '''I am a brazen maiden lying here
Upon the tomb of Midas. And as long
As water flows, as trees are green with leaves,
As the sun shines and eke the silver moon,
As long as rivers flow, and billows roar,
So long will I upon this much wept tomb,
Tell passers by, "Midas lies buried here.''',
    "Ignorance and talkativeness bear the chief sway among men.",
    "Cherish not a thought.",
    "Be fond of hearing rather than of talking.",
    "Seek virtue and eschew vice.",
    "Be superior to pleasure.",
    "Be ready for reconciliation after quarrels.",
    "Avoid injustice.",
    "Moderation is the best thing.",
    "Do nothing by force."
  ];

  static List<String> critiasQuotes = [
    '''No matter how hard you fight the darkness, every light casts a shadow, and the closer you get to the light, the darker that shadow becomes.''',
    "Nevertheless I must say what I was told. It was excavated to the depth of a hundred feet, and its breadth was a stadium everywhere; it was carried round the whole of the plain, and was ten thousand stadia in length.",
    "But when the divine portion began to fade away, and became diluted too often and too much with the mortal admixture, and the human nature got the upper hand, they then, being unable to bear their fortune, behaved unseemly, and to him who had an eye to see grew visibly debased, for they were losing the fairest of their precious gifts; but to those who had no eye to see the true happiness, they appeared glorious and blessed at the very time when they were full of avarice and unrighteous power."
  ];

  static List<String> democritusQuotes = [
    "We know nothing accurately in reality, but [only] as it changes according to the bodily condition, and the constitution of those things that flow upon [the body] and impinge upon it.",
    "Medicine heals diseases of the body, wisdom frees the soul from passions.",
    "Man is a universe in little.",
    "Many much-learned men have no intelligence.",
    "Immoderate desire is the mark of a child, not a man.",
    "Men have fashioned an image of Chance as an excuse for their own stupidity. For Chance rarely conflicts with intelligence, and most things in life can be set in order by an intelligent sharpsightedness.",
    "Education is an ornament for the prosperous, a refuge for the unfortunate.",
    "Beautiful objects are wrought by study through effort, but ugly things are reaped automatically without toil.",
    "The animal needing something knows how much it needs, the man does not.",
    "Moderation multiplies pleasures, and increases pleasure.",
    "The laws would not prevent each man from living according to his inclination, unless individuals harmed each other; for envy creates the beginning of strife.",
    "If your desires are not great, a little will seem much to you; for small appetite makes poverty equivalent to wealth.",
    "Not from fear but from a sense of duty refrain from your sins."
  ];

  static List<String> demosthenesQuotes = [
    "The easiest thing in the world is self-deceit; for every man believes what he wishes, though the reality is often different.",
    "The readiest and surest way to get rid of censure, is to correct ourselves.",
    "It is not possible to found a lasting power upon injustice, perjury, and treachery.",
    "No man can tell what the future may bring forth, and small opportunities are often the beginning of great enterprises.",
    "The man who has received a benefit ought always to remember it, but he who has granted it ought to forget the fact at once.",
    "Every advantage in the past is judged in the light of the final issue.",
    "Whatever shall be to the advantage of all, may that prevail!",
    "You cannot have a proud and chivalrous spirit if your conduct is mean and paltry; for whatever a man's actions are, such must be his spirit."
  ];

  static List<String> diogenesQuotes = [
    '''When the slave auctioneer asked in what he was proficient, he replied, "In ruling men."''',
    '''He pointed to a certain Corinthian with a fine purple border to his robe ... and said, “Sell me to this man; he needs a master.”''',
    '''Once he saw the officials of a temple leading away someone who had stolen a bowl belonging to the treasurers, and said, "The great thieves are leading away the little thief."''',
    '''He was seized and dragged off to King Philip, and being asked who he was, replied, "A spy upon your insatiable greed."''',
    '''When Alexander the Great addressed him with greetings, and asked if he wanted anything, Diogenes replied "Yes, stand a little out of my sunshine."''',
    "Virtue cannot dwell with wealth either in a city or in a house.",
    '''He lit a lamp in broad daylight and said, as he went about, "I am looking for a human."''',
    "It is not that I am mad, it is only that my head is different from yours",
    "I wish it were as easy to banish hunger by rubbing the belly.",
    "I am a citizen of the world.",
    "Other dogs bite only their enemies, whereas I bite also my friends in order to save them.",
    "Poverty is a virtue which one can teach oneself"
  ];

  static List<String> epicharmusQuotes = [
    '''As the bright sun excels the other stars,
As the sea far exceeds the river streams:
So does sage Epicharmus men surpass,
Whom hospitable Syracuse has crowned.''',
    "A mortal should think mortal thoughts, not immortal thoughts.",
    "The best thing a man can have, in my view, is health.",
    "The hand washes the hand: give something and you may get something.",
    "Don't forget to exercise incredulity; for it is the sinews of the soul."
  ];



  static List<String> euclidQuotes = [
    "Give him threepence, since he must make gain out of what he learns.",
    "There is no royal road to geometry.",
    "The laws of nature are but the mathematical thoughts of God.",
    "What has been affirmed without proof can also be denied without proof.",
    "Handwriting is a spiritual designing, even though it appears by means of a material instrument."
  ];

  static List<String> euripedesQuotes = [
    "The company of just and righteous men is better than wealth and a rich estate.",
    "A bad beginning makes a bad ending.",
    "Time will explain it all. He is a talker, and needs no questioning before he speaks.",
    "Waste not fresh tears over old griefs.",
    "Sweet is the remembrance of troubles when you are in safety.",
    "Ignorance of one's misfortunes is clear gain.",
    "Cleverness is not wisdom. And not to think mortal thoughts is to see few days.",
    "Humility, a sense of reverence before the sons of heaven — of all the prizes that a mortal man might win, these, I say, are wisest; these are best.",
    "Events will take their course, it is no good of being angry at them; he is happiest who wisely turns them to the best account.",
    "I sacrifice to no god save myself — And to my belly, greatest of deities.",
    "Nothing has more strength than dire necessity.",
    "Leave no stone unturned.",
    "A coward turns away, but a brave man's choice is danger.",
    "Cowards do not count in battle; they are there, but not in it."
  ];

  static List<String> heraclitusQuotes = [
    "Everything flows and nothing stays.",
    "You could not step twice into the same river.",
    "Eternity is a child playing, playing checkers; the kingdom belongs to a child.",
    "It is harder to fight against pleasure than against anger.",
    "War is the father and king of all: some he has made gods, and some men; some slaves and some free.",
    "The best people renounce all for one goal, the eternal fame of mortals; but most people stuff themselves like cattle.",
    "Ten thousand do not turn the scale against a single man of worth.",
    "Greater fates gain greater rewards.",
    "The many are mean; only the few are noble.",
    "The majority of people have no understanding of the things with which they daily meet, nor, when instructed, do they have any right knowledge of them, although to themselves they seem to have.",
    "Though wisdom is common, yet the many live as if they had a wisdom of their own.",
    "Opposition brings concord. Out of discord comes the fairest harmony.",
    "Character is destiny.",
    "Even sleepers are workers and collaborators on what goes on in the universe.",
  ];

  static List<String> herodotusQuotes = [
    "I know that human happiness never remains long in the same place.",
    "Men trust their ears less than their eyes.",
    "In peace sons bury fathers, but in war fathers bury sons.",
    "From great wrongdoing there are great punishments from the gods.",
    "For if one should propose to all men a choice, bidding them select the best customs from all the customs that there are, each race of men, after examining them all, would select those of his own people; thus all think that their own customs are by far the best",
    "It is better to be envied than pitied.",
    "Force has no place where there is need of skill.",
    "Circumstances rule men; men do not rule circumstances.",
    "I am bound to tell what I am told, but not in every case to believe it.",
    "Men trust their ears less than their eyes.",
    "This is the bitterest pain among men, to have much knowledge but no power."
  ];

  static List<String> hesiodQuotes = [
    "We know how to speak many falsehoods which resemble real things, but we know, when we will, how to speak true things.",
    "Love, who is most beautiful among the immortal gods, the melter of limbs, overwhelms in their hearts the intelligence and wise counsel of all gods and all men.",
    "There was not after all a single kind of strife, but on earth there are two kinds: one of them a man might praise when he recognized her, but the other is blameworthy.",
    "For in misery men grow old quickly.",
    "But the rest, countless plagues, wander amongst men; for earth is full of evils and the sea is full.",
    "He is a fool who tries to withstand the stronger, for he does not get the mastery and suffers pain besides his shame.",
    "Often an entire city has suffered because of an evil man.",
    "He harms himself who does harm to another, and the evil plan is most harmful to the planner.",
    "Invite the man that loves thee to a feast, but let alone thine enemy.",
    "Do not seek evil gains; evil gains are the equivalent of disaster.",
    "There's no place like home.",
    "Observe due measure, for right timing is in all things the most important factor.",
    "Neither make thy friend equal to a brother; but if thou shalt have made him so, be not the first to do him wrong."
  ];

  static List<String> hippocratesQuotes = [
    "As to diseases, make a habit of two things — to help, or at least, to do no harm.",
    "Time is that wherein there is opportunity, and opportunity is that wherein there is no great time.",
    "Conclusions which are merely verbal cannot bear fruit, only those do which are based on demonstrated fact.",
    "Everything in excess is opposed to nature.",
    "To do nothing is sometimes a good remedy.",
    "Life is short, and Art long; the crisis fleeting; experience perilous, and decision difficult.",
    "For extreme diseases, extreme methods of cure, as to restriction, are most suitable.",
    "Medicine is of all the Arts the most noble; but, owing to the ignorance of those who practice it, and of those who, inconsiderately, form a judgment of them, it is at present far behind all the other arts.",
    "It is time which imparts strength to all things and brings them to maturity.",
    "Those things which are sacred, are to be imparted only to sacred persons; and it is not lawful to import them to the profane until they have been initiated in the mysteries of the science."
  ];

  static List<String> homerQuotes = [
    '''Rage—Goddess, sing the rage of Peleus' son Achilles,
murderous, doomed, that cost the Achaeans countless losses,
hurling down to the House of Death so many sturdy souls,
great fighters' souls, but made their bodies carrion,
feasts for the dogs and birds.''',
    "If any man obeys the gods, they listen to him also.",
    '''Lordship for many is no good thing. Let there be one ruler,
  one king.''',
    "Never to be cast away are the gifts of the gods.",
    '''Now always be the best, my boy, the bravest,
and hold your head up high above the others.''',
    "Victory passes back and forth between men.",
    "Hateful to me as the gates of Hades is the man who hides one thing in his heart and speaks another.",
    '''If I hold out here and I lay siege to Troy,
my journey home is gone, but my glory never dies.''',
    "Life and death are balanced as it were on the edge of a razor.",
    "Better to flee from death than feel its grip.",
    "There can be no covenants between men and lions, wolves and lambs can never be of one mind.",
    "For a friend with an understanding heart is worth no less than a brother.",
    '''By god, I'd rather slave on earth for another man—
  some dirt-poor tenant farmer who scrapes to keep alive—
  than rule down here over all the breathless dead.''',
    "Each man delights in the work that suits him best.",
  ];

  static List<String> isocratesQuotes = [
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

  static List<String> parmenidesQuotes = [
    "You must learn all things, both the unshaken heart of persuasive truth, and the opinions of mortals in which there is no true warranty.",
    "The only roads of enquiry there are to think of: one, that it is and that it is not possible for it not to be, this is the path of persuasion (for truth is its companion); the other, that it is not and that it must not be — this I say to you is a path wholly unknowable.",
    "For it is the same thing that can be thought and that can be.",
    "It is indifferent to me where I am to begin, for there shall I return again.",
    "Never will this prevail, that the things that are not are — bar your thought from this road of inquiry.",
    "Do not let habit, born from experience, force you along this road, directing aimless eye and echoing ear and tongue; but judge by reason the much contested proof which I have spoken.",
    "There is one story left, one road: that it is. And on this road there are very many signs that, being, is uncreated and imperishable, whole, unique, unwavering, and complete."
  ];

  static List<String> perianderQuotes = [
    "Practice does everything.",
    "Tranquility is a good thing.",
    "Rashness is dangerous.",
    "Gain is disgraceful.﻿",
    "Democracy is better than tyranny.",
    "Pleasures are transitory, but honor is immortal.",
    "Be moderate when prosperous, but prudent when unfortunate.",
    "Be the same to your friends when they are prosperous, and when they are unfortunate.",
    "Whatever you agree to do, observe.﻿—Do not divulge secrets."
  ];

  static List<String> periclesQuotes = [
    "The whole Earth is the Sepulchre of famous men; and their story is not graven only on Stone over their native earth, but lives on far away, without visible symbol, woven into the stuff of other men's lives.",
    "Freedom is the sure possession of those alone who have the courage to defend it.",
    "Future ages will wonder at us, as the present age wonders at us now.",
    "Although only a few may originate a policy, we are all able to judge it.",
    "Time is the wisest counselor of all.",
    "What you leave behind is not what is engraved in stone monuments, but what is woven into the lives of others.",
    "We do not say that a man who takes no interest in politics is a man who minds his own business; we say that he has no business here at all.",
    "The secret to happiness is freedom. And the secret to freedom is courage.",
    "But the bravest are surely those who have the clearest vision of what is before them, glory and danger alike, and yet notwithstanding go out to meet it.",
    "Instead of looking on discussion as a stumbling block in the way of action, we think it an indispensable preliminary to any wise action at all."
  ];

  static List<String> pindarQuotes = [
    '''Creatures of a day! What is anyone?
What is anyone not? A dream of a shadow
Is our mortal being. But when there comes to men
A gleam of splendour given of heaven,
Then rests on them a light of glory
And blessed are their days. ''',
    '''Here profits not
To tell the whole truth with clear face unveiled.
Often is man's best wisdom to be silent.''',
    '''For words
Live longer down the years than deeds.''',
    '''War is sweet to those who have no experience of it,
but the experienced man trembles exceedingly at heart on its approach.''',
    '''War is sweet to them that know it not.''',
    "Become such as you are, having learned what that is.",
    '''Whoever knows many things
By nature is a poet.'''
  ];

  static List<String> pittacusQuotes = [
    "Forgiveness is better than revenge.",
    "Whatever you do, do it well.",
    "Even the Gods cannot strive against necessity.",
    "Power shows the man.",
    "Do not say before hand what you are going to do; for if you fail, you will be laughed at.",
    "Speak no ill of a friend, nor even of an enemy.",
    "Cultivate truth, good faith, experience, cleverness, sociability, and industry.",
    "Whatever you rebuke your neighbor for, do not do it yourself."
  ];

  static List<String> platoQuotes = [
    "Since those who rule in the city do so because they own a lot, I suppose they're unwilling to enact laws to prevent young people who've had no discipline from spending and wasting their wealth, so that by making loans to them, secured by the young people's property, and then calling those loans in, they themselves become even richer and more honored.",
    "The inexperienced in wisdom and virtue, ever occupied with feasting and such, are carried downward, and there, as is fitting, they wander their whole life long, neither ever looking upward to the truth above them nor rising toward it, nor tasting pure and lasting pleasures. Like cattle, always looking downward with their heads bent toward the ground and the banquet tables, they feed, fatten, and fornicate. In order to increase their possessions they kick and butt with horns and hoofs of steel and kill each other, insatiable as they are.",
    "The beginning is the most important part of the work.",
    "Until philosophers are kings, or the kings and princes of this world have the spirit and power of philosophy, and political greatness and wisdom meet in one, and those commoner natures who pursue either to the exclusion of the other are compelled to stand aside, cities will never have rest from their evils.",
    "Let every man remind their descendants that they also are soldiers who must not desert the ranks of their ancestors, or from cowardice fall behind.",
    "I only wish that wisdom were the kind of thing that flowed … from the vessel that was full to the one that was empty.",
    "There is no one who ever acts honestly in the administration of states, nor any helper who will save any one who maintains the cause of the just."
  ];

  static List<String> plutarchQuotes = [
    "Our judgments, if they do not borrow from reason and philosophy a fixity and steadiness of purpose in their acts, are easily swayed and influenced by the praise or blame of others, which make us distrust our own opinions.",
    "Valour, however unfortunate, commands great respect even from enemies: but the Romans despise cowardice, even though it be prosperous.",
    "Authority and place demonstrate and try the tempers of men, by moving every passion and discovering every frailty.",
    "Perseverance is more prevailing than violence; and many things which cannot be overcome when they are together, yield themselves up when taken little by little.",
  ];

  static List<String> polybiusQuotes = [
    "As every multitude is fickle, full of lawless desires, unreasoned passion, and violent anger, the multitude must be held in by invisible terrors and suchlike pageantry. For this reason I think, not that the ancients acted rashly and at haphazard in introducing among the people notions concerning the gods and beliefs in the terrors of hell.",
    "Had previous chroniclers neglected to speak in praise of History in general, it might perhaps have been necessary for me to recommend everyone to choose for study and welcome such treatises as the present, since men have no more ready corrective of conduct than knowledge of the past.",
    "I observe that while several modern writers deal with particular wars and certain matters connected with them, no one, as far as I am aware, has even attempted to inquire critically when and whence the general and comprehensive scheme of events originated and how it led up to the end.",
    "He indeed who believes that by studying isolated histories he can acquire a fairly just view of history as a whole, is, as it seems to me, much in the case of one, who, after having looked at the dissevered limbs of an animal once alive and beautiful, fancies he has been as good as an eyewitness of the creature itself in all its action and grace."
  ];

  static List<String> protagorasQuotes = [
    "Man is the measure of all things: of things which are, that they are, and of things which are not, that they are not.",
    "There are two sides to every question.",
    "The Athenians are right to accept advice from anyone, since it is incumbent on everyone to share in that sort of excellence, or else there can be no city at all.",
    "When it comes to consideration of how to do well in running the city, which must proceed entirely through justice and soundness of mind.",
  ];

  static List<String> pythagorasQuotes = [
    '''Dear youths, I warn you cherish peace divine,
And in your hearts lay deep these words of mine.''',
    '''Rest satisfied with doing well, and leave others to talk of you as they please.''',
    '''  As long as Man continues to be the ruthless destroyer of lower living beings, he will never know health or peace. For as long as men massacre animals, they will kill each other. Indeed, he who sows the seed of murder and pain cannot reap joy and love.''',
    "Let no one persuade you by word or deed to do or say whatever is not best for you.",
    "The soul of man is divided into three parts, intelligence, reason, and passion. Intelligence and passion are possessed by other animals, but reason by man alone.",
    "Number is the ruler of forms and ideas, and the cause of gods and daemons.",
    "Reason is immortal, all else mortal.",
    "Truth is so great a perfection, that if God would render himself visible to men, he would choose light for his body and truth for his soul.",
    "Sooner throw a pearl at hazard than an idle or useless word; and do not say a little in many words, but a great deal in a few.",
    "There is no word or action but has its echo in Eternity.",
    "Thought is an Idea in transit, which when once released, never can be lured back, nor the spoken word recalled.",
    "The oldest, shortest words— \"yes\" and \"no\"— are those which require the most thought.",
    "Time is the soul of this world.",
    "Above all things reverence thy Self."
  ];

  static List<String> socratesQuotes = [
    "The unexamined life is not worth living.",
    "I set to do you—each one of you, individually and in private—what I hold to be the greatest possible service. I tried to persuade each one of you to concern himself less with what he has than with what he is, so as to render himself as excellent and rational as possible.",
    "It would be better for me... that multitudes of men should disagree with me rather than that I, being one, should be out of harmony with myself.",
    "If the entire soul, then, follows without rebellion the part which loves wisdom, the result is that in general each part can carry out its own function—can be just, in other words—and in particular each is able to enjoy pleasures which are its own, the best, and, as far as possible, the truest.",
    "Anyone who holds a true opinion without understanding is like a blind man on the right road.",
    "Each of these private teachers who work for pay ... inculcates nothing else than these opinions of the multitude which they opine when they are assembled and calls this knowledge wisdom.",
    "The inexperienced in wisdom and virtue, ever occupied with feasting and such, are carried downward, and there, as is fitting, they wander their whole life long, neither ever looking upward to the truth above them nor rising toward it, nor tasting pure and lasting pleasures. Like cattle, always looking downward with their heads bent toward the ground and the banquet tables, they feed, fatten, and fornicate. In order to increase their possessions they kick and butt with horns and hoofs of steel and kill each other, insatiable as they are.",
    "False words are not only evil in themselves, but they infect the soul with evil."
  ];

  static List<String> solonQuotes = [
    "You made your rulers mighty, gave them guards, so now you groan 'neath slavery's heavy rod.",
    "I grow old ever learning many things.",
    "Consider your honour, as a gentleman, of more weight than an oath.",
    "No fool can be silent at a feast.",
    "Do not counsel what is most pleasant, but what is best.",
    '''Wealth I desire to have; but wrongfully to get it, I do not wish.
Justice, even if slow, is sure.''',
    '''For often evil men are rich, and good men poor;
But we will not exchange with them
Our virtue for their wealth since one abides always,
While riches change their owners every day.'''
  ];

  static List<String> sophoclesQuotes = [
    "When ice appears out of doors, and boys seize it up while it is solid, at first they experience new pleasures. But in the end their pride will not agree to let it go, but their acquisition is not good for them if it stays in their hands. In the same way an identical desire drives lovers to act and not to act.",
    "A lie never lives to be old.",
    "No man loves life like him that's growing old.",
    "A short saying often contains much wisdom.",
    "It is no weakness for the wisest man to learn when he is wrong.",
    "A short saying often contains much wisdom.",
    '''Truly, to tell lies is not honorable;
But when the truth entails tremendous ruin,
To speak dishonorably is pardonable.''',
    "Do nothing secretly; for Time sees and hears all things, and discloses all.",
    "Fortune is not on the side of the faint-hearted."
  ];

  static List<String> thalesQuotes = [
    "Know thyself.",
    "Avoid doing what you would blame others for doing.",
    "Nothing is more active than thought, for it flies over the whole universe; nothing is stronger than necessity, for all must submit to it.",
    "Hope is the only good that is common to all men; those who have nothing else possess hope still.",
    "Time is wisest because it discovers everything.",
    "A multitude of words is no proof of a prudent mind."
];

  static List<String> themistoclesQuotes = [
    "I never learned how to tune a harp, or play upon a lute; but I know how to raise a small and inconsiderable city to glory and greatness.",
    "May I never sit on a tribunal where my friends shall not find more favor from me than strangers.",
    "Strike, if you will, but hear.",
    "I have with me two gods, Persuasion and Compulsion.",
    "I choose the likely man in preference to the rich man; I want a man without money rather than money without a man.",
  ];

  static List<String> theocritusQuotes = [
    "While there's life there's hope, and only the dead have none.",
    '''Lo! how small
  Was the gift, and yet how precious! Friendship's gifts are priceless all.''',
    "The Greeks got into Troy by trying, my pretties; everything's done by trying.",
  ];

  static List<String> theognisQuotes = [
    "One finds many companions for food and drink, but in a serious business a man's companions are few.",
    '''We struggle onward, ignorant and blind,
For a result unknown and undesign’d;
Avoiding seeming ills, misunderstood,
Embracing evil as a seeming good.''',
    '''The lucky man is honored ...
But earnest striving wins no praise at all.''',
    "Adopt the character of the twisting octopus, which takes on the appearance of the nearby rock.",
    '''Don’t wag the tail of life if it goes well,
But leave in undisturbed. If it should go
Badly, rock it until it straightens up.''',
    '''Unless the gods deceive my mind,
  That man is forging fetters for himself.''',
    "Bright youth passes swiftly as a thought."
  ];

  static List<String> theophrastusQuotes = [
    "Time is the most valuable thing a man can spend.",
    "The Unseasonable man is one who will go up to a busy person, and open his heart to him. He will serenade his mistress when she has a fever. He will address himself to a man who has been cast in a surety-suit, and request him to become his security. He will come to give evidence when the trial is over.",
    "Superstition would seem to be simply cowardice in regard to the supernatural.",
    "When we are beginning to live, then we are dying. There is, therefore, nothing more profitless than ambition.",
    "If you are an ignorant man, you are acting wisely; but if you have had any education, you are behaving like a fool."
  ];

  static List<String> thucydidesQuotes = [
    "So little pains do the vulgar take in the investigation of truth, accepting readily the first story that comes to hand.",
    "For the true author of the subjugation of a people is not so much the immediate agent, as the power which permits it having the means to prevent it.",
    "I am more afraid of our own blunders than of the enemy's devices.",
    "The bravest are surely those who have the clearest vision of what is before them, glory and danger alike, and yet notwithstanding, go out to meet it.",
    "In generosity we are equally singular, acquiring our friends by conferring, not by receiving, favours.",
    "But the prize for courage will surely be awarded most justly to those who best know the difference between hardship and pleasure and yet are never tempted to shrink from danger.",
    "Hatred also is short lived; but that which makes the splendor of the present and the glory of the future remains forever unforgotten.",
    "And it is certain that those who do not yield to their equals, who keep terms with their superiors, and are moderate towards their inferiors, on the whole succeed best."
  ];

  static List<String> xenophanesQuotes = [
    '''Mortals deem that the gods are begotten as they are,
and have clothes like theirs, and voice and form.''',
    '''But if cattle and horses and lions had hands
or could paint with their hands and create works such as men do,
horses like horses and cattle like cattle
also would depict the gods' shapes and make their bodies
of such a sort as the form they themselves have.''',
    "For all things are from the earth and to the earth all things come in the end.",
    "There is one god, greatest among gods and men, similar to mortals neither in shape nor in thought."
  ];

  static List<String> xenophonQuotes = [
    "It is only for those to employ force who possess strength without judgment; but the well advised will have recourse to other means.",
    "There is small risk a general will be regarded with contempt by those he leads, if, whatever he may have to preach, he shows himself best able to perform.",
    "As to what happened next, it is possible to maintain that the hand of heaven was involved, and also possible to say that when men are desperate no one can stand up to them.",
    "Every one of you is the leader.",
    "It is common opinion among us in regard to beauty and wisdom that there is an honourable and a shameful way of bestowing them. For to offer one’s beauty for money to all comers is called prostitution; but we think it virtuous to become friendly with a lover who is known to be a man of honour. So is it with wisdom. Those who offer it to all comers for money are known as sophists, prostitutors of wisdom.",
    "Conquerors do not, as a rule, give up their arms.",
    "Yet is it more honourable, and just, and upright, and pleasing, to treasure in the memory good acts than bad.",
    "If the campaign is in summer the general must show himself greedy for his share of the sun and the heat, and in winter for the cold and the frost, and in all labours for toil and fatigue. This will help to make him beloved of his followers."
  ];

  final QuotesData aeschines = new QuotesData('Aeschines', '389 BC', '314 BC', aeschinesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/0/07/Aeschines_bust.jpg', aeschinesBio);
  final QuotesData aeschylus = new QuotesData('Aeschylus', '525 BC', '456 BC', aeschylusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Herma_of_Aeschylus%2C_Klas08.jpg/1024px-Herma_of_Aeschylus%2C_Klas08.jpg', aeschylusBio);
  final QuotesData aesop = new QuotesData('Aesop', '620 BC', '560 BC', aesopQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Vel%C3%A1zquez_-_Esopo_%28Museo_del_Prado%2C_1639-41%29.jpg/800px-Vel%C3%A1zquez_-_Esopo_%28Museo_del_Prado%2C_1639-41%29.jpg', aesopBio);
  final QuotesData agathon = new QuotesData('Agathon', '448 BCE', '400 BCE', agathonQuotes, 'https://i.pinimg.com/originals/00/69/dc/0069dcf6111501f7c59360e7c89595c2.jpg', agathonBio);
  final QuotesData agesilaus = new QuotesData('Agesilaus II', 'c. 444 BC', 'c. 360 BC', agesilausQuotes, 'https://upload.wikimedia.org/wikipedia/commons/7/79/Spartan_King_Agesilaus.jpg', agesilausBio);
  final QuotesData alcaeus = new QuotesData('Alcaeus of Mytilene', 'c. 620 BC', 'c. 6th Century BC', alcaeusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Alkaios_Sappho_Staatliche_Antikensammlungen_2416_n1.jpg/1920px-Alkaios_Sappho_Staatliche_Antikensammlungen_2416_n1.jpg', alcaeusBio);
  final QuotesData alexander = new QuotesData('Alexander the Great', '356 BC', '323 BC', alexanderQuotes, 'https://upload.wikimedia.org/wikipedia/commons/0/00/Alejandro_Magno%2C_Alexander_The_Great_Bust_Alexander_BM_1857_%28cropped%29.jpg', alexanderBio);
  final QuotesData anacreon = new QuotesData('Anacreon', '582 BC', '485 BC', anacreonQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Anacreon_Louvre.jpg/1280px-Anacreon_Louvre.jpg', anacreonBio);
  final QuotesData anaxagoras = new QuotesData('Anaxagoras', 'c. 500 BC', '428 BC', anaxagorasQuotes, 'https://upload.wikimedia.org/wikipedia/commons/2/2c/Anaxagoras_Lebiedzki_Rahl.jpg', anaxagorasBio);
  final QuotesData anaximander= new QuotesData('Anaximander', 'c. 610 BC', 'c. 546 BC', anaximanderQuotes, 'https://upload.wikimedia.org/wikipedia/commons/4/44/Anaximander_Mosaic_%28cropped%2C_with_sundial%29.jpg', anaximanderBio);
  final QuotesData antisthenes = new QuotesData('Antisthenes', 'c. 445 BC', 'c. 365 BC', antisthenesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Antisthenes_Pio-Clementino_Inv288.jpg/1280px-Antisthenes_Pio-Clementino_Inv288.jpg', antisthenesBio);
  final QuotesData archilochus = new QuotesData('Archilocus', 'c. 680 BC', 'c. 645 BC', archilochusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Archilochus_01_pushkin.jpg/1024px-Archilochus_01_pushkin.jpg', archilochusBio);
  final QuotesData archimedes = new QuotesData('Archimedes', 'c. 287 BC', 'c. 212 BC', archimedesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Domenico-Fetti_Archimedes_1620.jpg/1280px-Domenico-Fetti_Archimedes_1620.jpg', archimedesBio);
  final QuotesData aristippus = new QuotesData('Aristippus of Cyrene', 'c. 435 BC', 'c. 356 BCE', aristippusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/2/25/Aristippus.jpg', aristippusBio);
  final QuotesData aristophanes = new QuotesData('Aristophanes', 'c. 446 BC', 'c. 386 BC', aristophanesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/8/83/Aristofanes.jpg', aristophanesBio);
  final QuotesData aristotle = new QuotesData('Aristotle', '384 BC', '322 BC', aristotleQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Aristotle_Altemps_Inv8575.jpg/1280px-Aristotle_Altemps_Inv8575.jpg', aristotleBio);
  final QuotesData bias = new QuotesData('Bias of Priene', 'c. 6th Century BC', 'c. 6th Century BC', biasQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Bias_Pio-Clementino_Inv279.jpg/1024px-Bias_Pio-Clementino_Inv279.jpg', biasBio);
  final QuotesData bion = new QuotesData('Bion of Borysthenes', 'c. 325 BC', 'c. 250 BC', bionQuotes, 'https://upload.wikimedia.org/wikipedia/commons/9/9b/Antikythera_philosopher.JPG', bionBio);
  final QuotesData chilon = new QuotesData('Chilon of Sparta', 'c. 620 BC', 'c. 520 BC', chilonQuotes, 'https://upload.wikimedia.org/wikipedia/commons/d/d4/Chilon_of_Sparta.jpg', chilonBio);
  final QuotesData cleobulus = new QuotesData('Cleobulus', 'c. 6th Century BC', 'c. 6th Century BC', cleobulusQuotes, 'https://novoscriptorium.files.wordpress.com/2020/02/cleobulus_of_lindos.jpg?w=640', cleobulusBio);
  final QuotesData critias = new QuotesData('Critias', 'c. 460 BC', 'c. 403 BC', critiasQuotes, 'https://www.iep.utm.edu/wp-content/media/critias.jpg', critiasBio);
  final QuotesData democritus = new QuotesData('Democritus', 'c. 460 BC', 'c. 370 BC', democritusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/b/b9/Democritus2.jpg', democritusBio);
  final QuotesData demosthenes = new QuotesData('Demosthenes', 'c. 384 BC', 'c. 322 BC', demosthenesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Demosthenes_orator_Louvre.jpg/440px-Demosthenes_orator_Louvre.jpg', demosthenesBio);
  final QuotesData diogenes = new QuotesData('Diogenes', 'c. 412 BC', 'c. 323 BC', diogenesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/b/b1/Jean-L%C3%A9on_G%C3%A9r%C3%B4me_-_Diogenes_-_Walters_37131.jpg', diogenesBio);
  final QuotesData epicharmus = new QuotesData('Epicharmus', 'c. 550 BC', 'c. 460 BC', epicharmusQuotes, 'https://greatestgreeks.files.wordpress.com/2017/06/pictorial_history_of_epicarmopoet_and_writer.jpg?w=257&h=213', epicharmusBio);
  final QuotesData euclid = new QuotesData('Euclid', '323 BC ', '283 BC', euclidQuotes, 'https://upload.wikimedia.org/wikipedia/commons/c/c4/EuclidStatueOxford.jpg', euclidBio);
  final QuotesData euripedes = new QuotesData('Euripedes', 'c. 480 BC', 'c. 406 BC', euripedesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Euripides_Pio-Clementino_Inv302.jpg/1280px-Euripides_Pio-Clementino_Inv302.jpg', euripedesBio);
  final QuotesData heraclitus = new QuotesData('Heraclitus', 'c. 535 BC', 'c. 475 BC', heraclitusQuotes, 'https://upload.wikimedia.org/wikipedia/en/8/86/Heraklit.jpg', heraclitusBio);
  final QuotesData herodotus = new QuotesData('Herodotus', 'c. 484 BC', 'c. 425 BC', herodotusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Marble_bust_of_Herodotos_MET_DT11742.jpg/1280px-Marble_bust_of_Herodotos_MET_DT11742.jpg', herodotusBio);
  final QuotesData hesiod = new QuotesData('Hesiod', 'c. 700 BC', 'c. 700 BC', hesiodQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Pseudo-Seneca_MAN_Napoli_Inv5616_n02.jpg/1280px-Pseudo-Seneca_MAN_Napoli_Inv5616_n02.jpg', hesiodBio);
  final QuotesData hippocrates = new QuotesData('Hippocrates', 'c. 460 BC', '377 BC', hippocratesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/7/7c/Hippocrates.jpg', hippocratesBio);
  final QuotesData homer = new QuotesData('Homer', 'Unknown (Close to 700 BC)', 'Unknown', homerQuotes, 'https://upload.wikimedia.org/wikipedia/commons/1/1c/Homer_British_Museum.jpg', homerBio);
  final QuotesData isocrates = new QuotesData('Isocrates', '436 BC', '338 BC', isocratesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Isocrates_pushkin.jpg/1280px-Isocrates_pushkin.jpg', isocratesBio);
  final QuotesData parmenides = new QuotesData('Parmenides', 'c. 515 BC', 'c. 450 BC', parmenidesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/e/ed/Parmenides.jpg', parmenidesBio);
  final QuotesData periander = new QuotesData('Periander', 'Prior to 635 BC', '585 BC', perianderQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Periander_Pio-Clementino_Inv276.jpg/1024px-Periander_Pio-Clementino_Inv276.jpg', perianderBio);
  final QuotesData pericles = new QuotesData('Pericles', 'ca. 495 BC', '429 BC', periclesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Pericles_Pio-Clementino_Inv269_n2.jpg/1024px-Pericles_Pio-Clementino_Inv269_n2.jpg', periclesBio);
  final QuotesData pindar = new QuotesData('Pindar', 'c. 518 BC', '438 BC', pindarQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Pindar_statue.jpg/1024px-Pindar_statue.jpg', pindarBio);
  final QuotesData pittacus = new QuotesData('Pittacus of Mytilene', 'c. 640 BC', '568 BC', pittacusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/d/da/Pittacos_Louvre_Ma_3572.jpg', pittacusBio);
  final QuotesData plato = new QuotesData('Plato', 'c. 427 BC', 'c. 347 BC', platoQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Plato_Silanion_Musei_Capitolini_MC1377.jpg/1024px-Plato_Silanion_Musei_Capitolini_MC1377.jpg', platoBio);
  final QuotesData plutarch = new QuotesData('Plutarch', 'c. 46 AD', 'c. 120 AD', plutarchQuotes, 'https://upload.wikimedia.org/wikipedia/commons/3/34/Plutarch_of_Chaeronea-03.jpg', plutarchBio);
  final QuotesData polybius = new QuotesData('Polybius', 'c. 203 BC', '120 BC', polybiusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/c/c8/Stele_des_Polybios.jpg', polybiusBio);
  final QuotesData protagoras = new QuotesData('Protagoras', 'c. 481 BC', 'c. 420 BC', protagorasQuotes, 'https://www.iep.utm.edu/wp-content/media/protagoras.jpg', protagorasBio);
  final QuotesData pythagoras = new QuotesData('Pythagoras', 'c. 570 BC', 'c. 496 BC', pythagorasQuotes, 'https://upload.wikimedia.org/wikipedia/commons/1/1a/Kapitolinischer_Pythagoras_adjusted.jpg', pythagorasBio);
  final QuotesData socrates = new QuotesData('Socrates', 'c. 470 BC', '399 BC', socratesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Socrates_Louvre.jpg/1280px-Socrates_Louvre.jpg', socratesBio);
  final QuotesData solon = new QuotesData('Solon', 'c. 638 BCE', 'c. 558 BCE', solonQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Ignoto%2C_c.d._solone%2C_replica_del_90_dc_ca_da_orig._greco_del_110_ac._ca%2C_6143.JPG/440px-Ignoto%2C_c.d._solone%2C_replica_del_90_dc_ca_da_orig._greco_del_110_ac._ca%2C_6143.JPG', solonBio);
  final QuotesData sophocles = new QuotesData('Sophocles', '496 BC', '406 BC', sophoclesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/1/19/Sophocles_pushkin.jpg', sophoclesBio);
  final QuotesData thales = new QuotesData('Thales', 'c. 624 BC', 'c. 546 BC', thalesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Illustrerad_Verldshistoria_band_I_Ill_107.jpg/1024px-Illustrerad_Verldshistoria_band_I_Ill_107.jpg', thalesBio);
  final QuotesData themistocles = new QuotesData('Themistocles', 'c. 524 BC', '459 BC', themistoclesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/8/86/Illustrerad_Verldshistoria_band_I_Ill_116.png', themistoclesBio);
  final QuotesData theocritus = new QuotesData('Theocritus', 'c. 300 BC', '260 BC', theocritusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/3/3a/Theocritus-greek-poet-born-in-syracuse.jpg', theocritusBio);
  final QuotesData theognis = new QuotesData('Theognis of Megara', '570 BC', '485 BC', theognisQuotes, 'https://upload.wikimedia.org/wikipedia/commons/7/7f/Tanagra%2C_5th_century_kylix_a_symposiast_sings_Theognis_o_paidon_kalliste.png', theognisBio);
  final QuotesData theophrastus = new QuotesData('Theophrastus', 'c. 370 BC', 'c. 286 BC', theophrastusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/d/d3/Teofrasto_Orto_botanico_detail.jpg', theophrastusBio);
  final QuotesData thucydides= new QuotesData('Thucydides', 'c. 472 BC', 'c. 400 BC', thucydidesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/1/19/Thucydides_pushkin02.jpg', thucydidesBio);
  final QuotesData xenophanes = new QuotesData('Xenophanes', '570 BC', '480 BC', xenophanesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Xenophanes_in_Thomas_Stanley_History_of_Philosophy.jpg', xenophanesBio);
  final QuotesData xenophon = new QuotesData('Xenophon', 'c. 431 BC', 'c. 345 BC', xenophonQuotes, 'https://upload.wikimedia.org/wikipedia/commons/8/8e/Xenophon.jpg', xenophonBio);


//-x-x-x-x-x-x End of philosopher library data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomScrollView(slivers: <Widget>[
          const SliverAppBar(
            pinned: false,
            expandedHeight: 200.0,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'Author Library',
                  style: TextStyle(
                    fontFamily: 'Garamond',
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
                background: Image(
                  image: AssetImage('assets/dark_pattern.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 40.0),
                  child: Column(
                    children: <Widget>[
                      StickyHeader(
                        header: stickyHeaderContainer('A'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Aeschines'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: aeschines,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Aeschylus'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: aeschylus,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Aesop'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: aesop,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Agathon'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: agathon,
                                    ),
                                  ),
                                );
                              },
                            ),

                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Agesilaus II'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: agesilaus,
                                    ),
                                  ),
                                );
                              },
                            ),

                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Alcaeus of Mytilene'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: alcaeus,
                                    ),
                                  ),
                                );
                              },
                            ),

                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Alexander the Great'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: alexander,
                                    ),
                                  ),
                                );
                              },
                            ),

                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Anacreon'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: anacreon,
                                    ),
                                  ),
                                );
                              },
                            ),

                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Anaxagoras'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: anaxagoras,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Anaximander'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: anaxagoras,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Antisthenes'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: antisthenes,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Archilochus'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: archilochus,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Archimedes'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: archimedes,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Aristippus of Cyrene'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: aristippus,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Aristophanes'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: aristophanes,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Aristotle'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: aristotle,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('B'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Bias of Priene'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: bias,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Bion of Borysthenes'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: bion,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('C'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Chilon of Sparta'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: chilon,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Cleobulus'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: cleobulus,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Critias'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: critias,
                                    ),
                                  ),
                                );
                              },
                            ),

                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('D'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Democritus'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: democritus,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Demosthenes'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: demosthenes,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Diogenes'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: diogenes,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('E'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Epicharmus of Kos'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: epicharmus,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Euclid'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: euclid,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Euripedes'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: euripedes,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('H'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Heraclitus'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: heraclitus,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Herodotus'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: herodotus,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Hesiod'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: hesiod,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Hippocrates'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: hippocrates,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Homer'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: homer,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('I'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Isocrates'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: isocrates,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('P'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Parmenides'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: parmenides,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Periander'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: periander,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Pericles'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: pericles,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Pindar'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: pindar,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Pittacus of Mytilene'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: pittacus,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Plato'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: plato,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Plutarch'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: plutarch,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Polybius'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: polybius,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Protagoras'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: protagoras,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Pythagoras'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: pythagoras,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('S'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Socrates'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: socrates,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Solon'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: solon,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Sophocles'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: sophocles,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('T'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Thales'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: thales,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Themistocles'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: themistocles,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Theocritus'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: theocritus,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Theognis of Megara'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: theognis,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Theophrastus'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: theophrastus,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Thucydides'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: thucydides,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('X'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Xenophanes'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: xenophanes,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Xenophon'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: parmenides,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

//Function to return individual list elements inside a container
Widget libraryScreenContainer(String text) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
    child: Container(
      margin: EdgeInsets.all(8.0),
      alignment: Alignment.centerLeft,
      child: Text(text,
          style: TextStyle(
            fontFamily: 'Cinzel',
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
          )),
    ),
  );
}


class StoicScreen extends StatefulWidget {
  @override
  _StoicScreenState createState() => _StoicScreenState();
}

class _StoicScreenState extends State<StoicScreen> {


  static String epictetusBio = '''Epictetus was an Ancient Greek philosopher. He was born in Hierapolis, Phrygia around 55 AD.[1] The name his parents gave him is unknown; the word epíktetos (επίκτητος) in Greek simply means "acquired." He spent his youth as a slave in Rome to Epaphroditos, a rich freedman and secretary to Nero. The city was near the modern-day town of Pamukkale in Turkey. He died around 135 AD[2] in Nikopolis in Epirus, in Greece. He was one of the most influential philosophers of the late Stoa. Epictetus founded a school of philosophy, where he also taught. None of his writings survive, but one of his pupils, Arrian, wrote what Epictetus taught.

Philosophy, Epictetus taught, is a way of life and not just a theoretical discipline. To Epictetus, all external events are determined by fate, and so are beyond our control; we should accept whatever happens calmly and dispassionately. However, individuals are responsible for their own actions, which they can examine and control through rigorous self-discipline.

Suffering occurs from trying to control what is uncontrollable, or from neglecting what is within our power. As part of the universal city that is the universe, it is our duty to care for all our fellow men. Those who follow these precepts will achieve happiness and peace of mind.''';

  static String catoBio = '''Cato the Younger (Marcus Porcius Cato Uticensis, 95 BC, Rome – April 46 BC, Utica) was a politician and statesman in the late Roman Republic, and a follower of the Stoic philosophy. He was known as Cato Minor to distinguish him from his great-grandfather (Cato the Elder). A noted orator, he had great moral integrity. He could not be bribed, and disliked the political corruption of the age. He is remembered for his stubbornness and for his lengthy conflict with Julius Caesar.

Plutarch tells a story about Cato's peers' immense respect for him, even at a young age. During a Roman ritual military game, called "Troy", in which all aristocratic teenagers participated as a sort of "coming of age" ceremony, a mock battle with wooden weapons was performed on horseback. While the child of one of Sulla's surrogates was chosen by the adult organizers to lead one of the "teams," the team refused to follow him because of his character, and when they were finally asked whom they would follow, the boys unanimously chose Cato.''';

  static String chrysippusBio = '''Chrysippus of Soli (/kraɪˈsɪpəs, krɪ-/;[3] Greek: Χρύσιππος ὁ Σολεύς, Chrysippos ho Soleus; c. 279 – c. 206 BC[4]) was a Greek Stoic philosopher. He was a native of Soli, Cilicia, but moved to Athens as a young man, where he became a pupil of Cleanthes in the Stoic school. When Cleanthes died, around 230 BC, Chrysippus became the third head of the school. A prolific writer, Chrysippus expanded the fundamental doctrines of Zeno of Citium, the founder of the school, which earned him the title of Second Founder of Stoicism.[5]

Chrysippus excelled in logic, the theory of knowledge, ethics, and physics. He created an original system of propositional logic in order to better understand the workings of the universe and role of humanity within it. He adhered to a deterministic view of fate, but nevertheless sought a role for personal freedom in thought and action. Ethics, he thought, depended on understanding the nature of the universe, and he taught a therapy of extirpating the unruly passions which depress and crush the soul. He initiated the success of Stoicism as one of the most influential philosophical movements for centuries in the Greek and Roman world.

Of his written works, none have survived except as fragments. Recently, segments of some of his works were discovered among the Herculaneum papyri.[6]''';

  static String cleanthesBio = '''Cleanthes (/kliˈænθiːz/; Greek: Κλεάνθης Kleanthēs; c. 330 BC – c. 230 BC), of Assos, was a Greek Stoic philosopher and successor to Zeno of Citium as the second head (scholarch) of the Stoic school in Athens. Originally a boxer, he came to Athens where he took up philosophy, listening to Zeno's lectures. He supported himself by working as a water-carrier at night. After the death of Zeno, c. 262 BC, he became the head of the school, a post he held for the next 32 years. Cleanthes successfully preserved and developed Zeno's doctrines. He originated new ideas in Stoic physics, and developed Stoicism in accordance with the principles of materialism and pantheism. Among the fragments of Cleanthes' writings which have come down to us, the largest is a Hymn to Zeus. His pupil was Chrysippus who became one of the most important Stoic thinkers.''';

  static String gaiusBio = '''Gaius Musonius Rufus (/ˈruːfəs/, Greek: Μουσώνιος Ῥοῦφος) was a Roman Stoic philosopher of the 1st century AD. He taught philosophy in Rome during the reign of Nero and so was sent into exile in 65 AD, returning to Rome only under Galba. He was allowed to stay in Rome when Vespasian banished all other philosophers from the city in 71 AD although he was eventually banished anyway, returning only after Vespasian's death. A collection of extracts from his lectures still survives. He is also remembered for being the teacher of Epictetus.''';

  static String senecaBio = '''Lucius Annaeus Seneca the Younger (/ˈsɛnɪkə/; c. 4 BC – AD 65)[1] was a Roman Stoic philosopher, statesman, dramatist, and—in one work—satirist from the Silver Age of Latin literature.

Seneca was born in Corduba in Hispania, and raised in Rome, where he was trained in rhetoric and philosophy. His father was Seneca the Elder, his elder brother was Lucius Junius Gallio Annaeanus, and his nephew was the poet Lucan. In AD 41, Seneca was exiled to the island of Corsica under emperor Claudius,[2] but was allowed to return in 49 to become a tutor to Nero. When Nero became emperor in 54, Seneca became his advisor and, together with the praetorian prefect Sextus Afranius Burrus, provided competent government for the first five years of Nero's reign. Seneca's influence over Nero declined with time, and in 65 Seneca was forced to take his own life for alleged complicity in the Pisonian conspiracy to assassinate Nero, in which he was likely to have been innocent.[3] His stoic and calm suicide has become the subject of numerous paintings.

As a writer Seneca is known for his philosophical works, and for his plays, which are all tragedies. His prose works include a dozen essays and one hundred twenty-four letters dealing with moral issues. These writings constitute one of the most important bodies of primary material for ancient Stoicism. As a tragedian, he is best known for plays such as his Medea, Thyestes, and Phaedra. Seneca's influence on later generations is immense—during the Renaissance he was "a sage admired and venerated as an oracle of moral, even of Christian edification; a master of literary style and a model [for] dramatic art."[4]''';

  static String marcusAureliusBio = '''Marcus Aurelius (/ɔːˈriːliəs, ɔːˈriːljəs/;[1] Marcus Aurelius Antoninus Augustus; 26 April 121 – 17 March 180) was a Roman emperor from 161 to 180 and a Stoic philosopher. He was the last of the rulers known as the Five Good Emperors (a term coined some 13 centuries later by Niccolò Machiavelli), and the last emperor of the Pax Romana, an age of relative peace and stability for the Roman Empire. He served as Roman consul in 140, 145, and 161.

Marcus was born during the reign of Hadrian to the emperor's nephew, the praetor Marcus Annius Verus (III), and his wife, the heiress Domitia Lucilla. Following the death of his father, Marcus was raised by his mother and grandfather, Marcus Annius Verus (II). After Hadrian's adoptive son, Aelius Caesar, died in 138, the emperor adopted Marcus' uncle Antoninus Pius as his new heir. In turn, Antoninus adopted Marcus and the son of Aelius, Lucius (later to rule as Emperor Lucius Verus alongside Marcus). Hadrian died that year and Antoninus became emperor. Now heir to the throne, Marcus studied Greek and Latin under tutors such as Herodes Atticus and Marcus Cornelius Fronto. He kept in close correspondence with Fronto for many years afterwards. Marcus married Antoninus' daughter Faustina in 145. Antoninus died following an illness in 161.

The reign of Marcus Aurelius was marked by military conflict. In the East, the Roman Empire fought successfully with a revitalized Parthian Empire and the rebel Kingdom of Armenia. Marcus defeated the Marcomanni, Quadi, and Sarmatian Iazyges in the Marcomannic Wars; however, these and other Germanic peoples began to represent a troubling reality for the Empire. He modified the silver purity of the Roman currency, the denarius. The persecution of Christians in the Roman Empire is believed[by whom?] to have increased[how?] during his reign.[why?] The Antonine Plague broke out in 165 or 166 and devastated the population of the Roman Empire, causing the deaths of five million people. Lucius Verus may have died from the plague in 169.

Unlike some of his predecessors, Marcus chose not to adopt an heir. His children included Lucilla, who married Lucius, and Commodus, whose succession after Marcus has become a subject of debate among both contemporary and modern historians. The Column and Equestrian Statue of Marcus Aurelius still stand in Rome, where they were erected in celebration of his military victories. Meditations, the writings of "the philosopher" – as contemporary biographers called Marcus, are a significant source of the modern understanding of ancient Stoic philosophy. They have been praised by fellow writers, philosophers, monarchs, and politicians centuries after his death.''';

  static String zenoBio = '''Zeno of Citium (/ˈziːnoʊ/; Greek: Ζήνων ὁ Κιτιεύς, Zēnōn ho Kitieus; c. 334 – c. 262 BC) was a Hellenistic philosopher of Phoenician origin[3] from Citium (Κίτιον, Kition), Cyprus. Zeno was the founder of the Stoic school of philosophy, which he taught in Athens from about 300 BC. Based on the moral ideas of the Cynics, Stoicism laid great emphasis on goodness and peace of mind gained from living a life of Virtue in accordance with Nature. It proved very popular, and flourished as one of the major schools of philosophy from the Hellenistic period through to the Roman era.''';

  static List<String> epictetusQuotes = [
    "To the rational being only the irrational is unendurable, but the rational is endurable.",
    "Yet God hath not only granted these faculties, by which we may bear every event without being depressed or broken by it, but like a good prince and a true father, hath placed their exercise above restraint, compulsion, or hindrance, and wholly without our own control.",
    "In a word, neither death, nor exile, nor pain, nor anything of this kind is the real cause of our doing or not doing any action, but our inward opinions and principles.",
    "No thing great is created suddenly, any more than a bunch of grapes or a fig. If you tell me that you desire a fig, I answer you that there must be time. Let it first blossom, then bear fruit, then ripen.",
    "Were I a nightingale, I would act the part of a nightingale; were I a swan, the part of a swan.",
    "If what the philosophers say be true,—that all men's actions proceed from one source; that as they assent from a persuasion that a thing is so, and dissent from a persuasion that it is not, and suspend their judgment from a persuasion that it is uncertain,—so likewise they seek a thing from a persuasion that it is for their advantage.",
    "Practice yourself, for heaven's sake, in little things; and thence proceed to greater.",
    "It is unlikely that the good of a snail should reside in its shell: so is it likely that the good of a man should?",
    "It is difficulties that show what men are.",
    "Appearances to the mind are of four kinds. Things either are what they appear to be; or they neither are, nor appear to be; or they are, and do not appear to be; or they are not, and yet appear to be. Rightly to aim in all these cases is the wise man's task.",
    "Whatever you would make habitual, practice it; and if you would not make a thing habitual, do not practice it, but accustom yourself to something else."
  ];

  static List<String> catoQuotes = [
    '''A honest man is seldom a vagrant.''',
    '''After I'm dead I'd rather have people ask why I have no monument than why I have one.''',
    '''All have the gift of speech, but few are possessed of wisdom.''',
    "An angry man opens his mouth and shuts his eyes.",
    "Bitter are the roots of study, but how sweet their fruit.",
    "Blessed be they as virtuous, who when they feel their virile members swollen with lust, visit a brothel rather than grind at some husband's private mill.",
    "Consider in silence whatever any one says: speech both conceals and reveals the inner soul of man.",
    "Consider it the greatest of all virtues to restrain the tongue.",
    "Don't promise twice what you can do at once.",
    "Flee sloth; for the indolence of the soul is the decay of the body.",
    "I will begin to speak, when I have that to say which had not better be unsaid.",
    "In doing nothing men learn to do evil.",
    "Old age isn't so bad when you consider the alternatives.",
    "Regard not dreams, since they are but the images of our hopes and fears.",
    "Speak briefly and to the point.",
    "The best way to keep good acts in memory is to refresh them with new.",
    "Those magistrates who can prevent crime, and do not, in effect encourage it.",
    "Wise men are more dependent on fools than fools on wise men."
  ];

  static List<String> chrysippusQuotes = [
    "Living virtuously is equal to living in accordance with one's experience of the actual course of nature.",
    "Wise people are in want of nothing, and yet need many things. On the other hand, nothing is needed by fools, for they do not understand how to use anything, but are in want of everything.",
    "He who is running a race ought to endeavor and strive to the utmost of his ability to come off victor; but it is utterly wrong for him to trip up his competitor, or to push him aside. So in life it is not unfair for one to seek for himself what may accrue to his benefit; but it is not right to take it from another.",
    "If I had followed the multitude, I should not have studied philosophy.",
    "If I knew that it was fated for me to be sick, I would even wish for it; for the foot also, if it had intelligence, would volunteer to get muddy.",
    "The universe itself is God and the universal outpouring of its soul",
    "We should infer in the case of a beautiful dwelling-place that it was built for its owners and not for mice; we ought, therefore, in the same way to regard the universe as the dwelling-place of the gods."
  ];

  static List<String> cleanthesQuotes = [
    '''Lead me on, O Zeus, and thou Destiny,

To that goal long ago to me assigned.

I’ll follow readily but if my will prove weak;

Wretched as I am, I must follow still.

Fate guides the willing, but drags the unwilling.''',
    "Conduct me, Jove, and you, O Destiny, / Wherever your decrees have fixed my station.",
    "The Fates guide the person who accepts them and hinder the person who resists them."
  ];

  static List<String> gaiusQuotes = [
    "Being good is the same as being a philosopher. If you obey your father, you will follow the will of a man; if you choose the philosopher's life, the will of God. It is plain, therefore, that your duty lies in the pursuit of philosophy.",
    "Choose to die well while you can; wait too long, and it might become impossible to do so.",
    "For mankind, evil is injustice and cruelty and indifference to a neighbor’s trouble, while virtue is brotherly love and goodness and justice and beneficence and concern for the welfare of your neighbor.",
    "For what does the man who accepts insult do that is wrong? It is the doer of wrong who puts themselves to shame-the sensible man wouldn't go to the law, since he wouldn't even consider that he had been insulted!",
    '''  Besides, to be annoyed or angered about such things would be petty-instead easily and silently bear what has happened, since this is appropriate for those whose purpose is to be noble-minded.''',
    "From good people you’ll learn good, but if you mingle with the bad you’ll destroy such soul as you had.",
    "Generally speaking, if you devote yourself to the life of philosophy, whilst tilling the land at the same time, I couldn’t compare it to any other way of life, nor would I prefer any other livelihood.",
    "Humanity must seek what is not simple and obvious using the simple and obvious.",
    "If we were to measure what is good by how much pleasure it brings, nothing would be better than self-control- if we were to measure what is to be avoided by its pain, nothing would be more painful than lack of self-control.",
    "If you accomplish something good with hard work, the labor passes quickly, but the good endures.",
    "If you do something shameful in pursuit of pleasure, the pleasure passes quickly, but the shame endures.",
    "If you choose death because it is the greater evil, what sense is there in that? Or if you choose it as the lesser-evil, remember who gave you the choice. Why not try coming to terms with what you have been given?",
    "In our control is the most beautiful and important thing, the thing because of which even the god himself is happy— namely, the proper use of our impressions. We must concern ourselves absolutely with the things that are under our control and entrust the things not in our control to the universe.",
    "Indeed, how could exile be an obstacle to person’s own cultivation, or to attaining virtue when no one has ever been cut off from learning or practicing what is needed by exile?",
    "It is living more in accord with nature-drawing your sustenance directly from the earth-the nurse and mother of us all-rather than from another source.",
    "It is not possible to live well today unless you treat it as your last day.",
    "It is widely held that we'll be despised by others if we don't try hard to hurt the first enemies we meet – this is the mark of cold-hearted, ignorant individuals.",
    "We say that the detestable person is recognized (among other things) by their inability to harm their enemies – actually, they are much more easily recognized by their inability to help them.",
    "Just as plants receive nourishment for survival, not pleasure – for humans, food is the medicine of life.",
    "Therefore it is appropriate for us to eat for living, not pleasure, especially if we want to follow the wise words of Socrates, who said \"Most men live to eat; I eat to live.\"",
    "Just as there is no use in medical study unless it leads to the health of the human body, so there is no use to a philosophical doctrine unless it leads to the virtue of the human soul.",
    "Most of all, teachers shouldn't only be speakers of helpful words, but their actions should be consistent with them. The pupil's duty is to attend pro-actively to what is said, and to be on guard in case they accept something false without thinking.",
    '''Of the things that exist, God has put some in our control, others not in our control. In our control he has put the noblest and most excellent part by reason of which He is Himself happy, the power of using our impressions. For when this is correctly used, it means serenity, cheerfulness, constancy; it also means justice and law and self-control and virtue as a whole. But all other things He has not put in our control. Therefore we ought to become of like mind with God and, dividing things in like manner, we ought in every way to lay claim to the things that are in our control, but what is not in our control we ought to entrust to the universe and gladly yield to it whether it asks for our children, our country, our body, or anything whatsoever.''',
    "Only by exhibiting actions in harmony with the sound words which he has received will anyone be helped by philosophy.",
    "Others have been in poor health from overindulgence and high living, before exile has provided strength, forcing them to live a more vigorous life.",
    "Since every man dies, it is better to die with distinction than to live long.",
    "Since it so happens that the human being is not soul alone, nor body alone, but a kind of synthesis of the two, the person in training must take care of both, the better part, the soul, more zealously; as is fitting, but also of the other, if he shall not be found lacking in any part that constitutes man.",
    "That God who made man provided him food and drink for the sake of preserving his life and not for giving him pleasure, one can see very well from this: when food is performing its real function, it does not produce pleasure for man, that is in the process of digestion and assimilation.",
    '''The best livelihood (particularly for the strong) is earning a living from the soil, whether you own your land or not. Many can support their families by farming land owned by the state or private landowners. Some even get rich through hard work with their own hands.
The earth repays those who cultivate her, both justly and well, multiplying what she received – endowing in abundance all the necessities of life to anyone willing to work-and all this without violating your dignity or self-respect!''',
    "The human being is born with an inclination toward virtue.",
    "To accept injury without a spirit of savage resentment-to show ourselves merciful toward those who wrong us-being a source of good hope to them-is characteristic of a benevolent and civilized way of life.",
    "To many people, even to most, despite living safely in their home city, fear of what seem to them the dire consequences of free speech is present.",
    "The courageous, in exile or at home, is fearless in the face of all such threats; for that reason they've the courage to say what they think equally at home or in exile.",
    "Virtue is not simply theoretical knowledge, but it is practical application as well. So a man who wishes to become good not only must be thoroughly familiar with the precepts which are conducive to virtue but must also be earnest and zealous in applying these principles.",
    "We begin to lose our hesitation to do immoral things when we lose our hesitation to speak of them.",
    "Wealth is able to buy the pleasures of eating, drinking and other sensual pursuits-yet can never afford a cheerful spirit or freedom from sorrow.",
    "What good are gilded rooms or precious stones-fitted on the floor, inlaid in the walls, carried from great distances at the greatest expense? These things are pointless and unnecessary-without them isn’t it possible to live healthy? Aren’t they the source of constant trouble? Don’t they cost vast sums of money that, through public and private charity, may have benefited many?",
    "Why do we criticize tyrants, when in fact we are much worse than they are? We have the same inclinations as they do; we just lack opportunities to act on them.",
    "You will earn the respect of all if you begin by earning the respect of yourself. Don't expect to encourage good deeds in people conscious of your own misdeeds."
  ];

  static List<String> senecaQuotes = [
    "Of war men ask the outcome, not the cause.",
    "Once again prosperous and successful crime goes by the name of virtue; good men obey the bad, might is right and fear oppresses law.",
    "'Tis the first art of kings, the power to suffer hate.",
    "Arms observe no bounds; nor can the wrath of the sword, once drawn, be easily checked or stayed; war delights in blood.",
    "Who can be forced has not learned how to die.",
    "Things that were hard to bear are sweet to remember.",
    "A good mind possesses a kingdom.",
    "Death weighs on him who is known to all, but dies unknown to himself.",
    "Who profits by a sin has done the sin.",
    "What man can you show me who places any value on his time, who reckons the worth of each day, who understands that he is dying daily?",
    "For we are mistaken when we look forward to death; the major portion of death has already passed. Whatever years be behind us are in death's hands.",
    "The primary indication, to my thinking, of a well-ordered mind is a man’s ability to remain in one place and linger in his own company.",
    "It is not the man who has too little, but the man who craves more, that is poor.",
    "For love of bustle is not industry – it is only the restlessness of a hunted mind.",
    "No man can have a peaceful life who thinks too much about lengthening it.",
    "I commend you and rejoice in the fact that you are persistent in your studies, and that, putting all else aside, you make it each day your endeavour to become a better man.",
    "Of course, however, the living voice and the intimacy of a common life will help you more than the written word. You must go to the scene of action, first, because men put more faith in their eyes than in their ears, and second, because the way is long if one follows precepts, but short and helpful, if one follows patterns.",
    "But both courses are to be avoided; you should not copy the bad simply because they are many, nor should you hate the many because they are unlike you.",
    "Live among men as if God beheld you; speak with God as if men were listening.",
    "Armies have endured all manner of want, have lived on roots, and have resisted hunger by means of food too revolting to mention. All this they have suffered to gain a kingdom, and—what is more marvellous—to gain a kingdom that will be another’s. Will any man hesitate to endure poverty, in order that he may free his mind from madness?",
    "If you would not have a man flinch when the crisis comes, train him before it comes.",
    "A trifling debt makes a man your debtor; a large one makes him an enemy.",
    "Prove your words by your deeds.",
    "What is wisdom? Always desiring the same things, and always refusing the same things.",
    "Men do not care how nobly they live, but only how long, although it is within the reach of every man to live nobly, but within no man's power to live long.",
    "You will thus understand that what you fear is either insignificant or short-lived.",
    "Remember, however, before all else, to strip things of all that disturbs and confuses, and to see what each is at bottom; you will then comprehend that they contain nothing fearful except the actual fear.",
    "I do not know whether I shall make progress; but I should prefer to lack success rather than to lack faith.",
    "I forbid you to be cast down or depressed. It is not enough if you do not shrink from work; ask for it.",
    "Would you know what makes men greedy for the future? It is because no one has yet found himself.",
    "Besides, he who follows another not only discovers nothing but is not even investigating.",
    "What then? Shall I not follow in the footsteps of my predecessors? I shall indeed use the old road, but if I find one that makes a shorter cut and is smoother to travel, I shall open the new road. Men who have made these discoveries before us are not our masters, but our guides. Truth lies open for all; it has not yet been monopolized. And there is plenty of it left even for posterity to discover.",
    "It is the quality of a great soul to scorn great things and to prefer that which is ordinary rather than that which is too great.",
    "Then it is that the height of unhappiness is reached, when men are not only attracted, but even pleased, by shameful things, and when there is no longer any room for a cure, now that those things which once were vices have become habits.",
    "If you see a man who is unterrified in the midst of dangers, untouched by desires, happy in adversity, peaceful amid the storm, who looks down upon men from a higher plane, and views the gods on a footing of equality, will not a feeling of reverence for him steal over you, will you not say: “This quality is too great and too lofty to be regarded as resembling this petty body in which it dwells? A divine power has descended upon that man.",
    "Very often the things that cost nothing cost us the most heavily; I can show you many objects the quest and acquisition of which have wrested freedom from our hands.",
    '''“You will have less money.” Yes, and less trouble. “Less influence.” Yes, and less envy.''',
    "He that owns himself has lost nothing. But how few men are blessed with ownership of self!",
    "Treat your inferiors as you would be treated by your betters.",
    "Would you really know what philosophy offers to humanity? Philosophy offers counsel.",
    "For what else are you busied with except improving yourself every day, laying aside some error, and coming to understand that the faults which you attribute to circumstances are in yourself?",
    "And what is freedom, you ask? It means not being a slave to any circumstance, to any constraint, to any chance; it means compelling Fortune to enter the lists on equal terms.",
    "The conclusion is, not that hardships are desirable, but that virtue is desirable, which enables us patiently to endure hardships.",
    "It may include the chest in which Regulus was confined, or the wound of Cato which was torn open by Cato’s own hand, or the exile of Rutilius, or the cup of poison which removed Socrates from gaol to heaven.",
    "It is better, of course, to know useless things than to know nothing.",
    "We are mad, not only individually, but nationally. We check manslaughter and isolated murders; but what of war and the much-vaunted crime of slaughtering whole peoples?",
    "Do not hope without despair, or despair without hope.",
    "Our lack of confidence is not the result of difficulty. The difficulty comes from our lack of confidence.",
    "Apply reason to difficulties; harsh circumstances can be softened, narrow limits can be widened, and burdensome things can be made to press less severely on those who bear them cleverly."
  ];

  static List<String> marcusAureliusQuotes = [
    "When you wake up in the morning, tell yourself: The people I deal with today will be meddling, ungrateful, arrogant, dishonest, jealous, and surly. They are like this because they can't tell good from evil.",
    "He was a man who looked at what ought to be done, not to the reputation which is got by a man's acts.",
    "The universe is change; our life is what our thoughts make it.",
    "Be not as one that hath ten thousand years to live; death is nigh at hand: while thou livest, while thou hast time, be good.",
    "I shall meet today inquisitive, ungrateful, violent, treacherous, envious, uncharitable men. All these things have come upon them through ignorance of real good and ill.",
    "An angry countenance is much against nature...But were it so, that all anger and passion were so thoroughly quenched in thee, that it were altogether impossible to kindle it any more, yet herein must not thou rest satisfied, but further endeavour by good consequence of true ratiocination, perfectly to conceive and understand, that all anger and passion is against reason.",
    "You will find rest from vain fancies if you perform every act in life as though it were your last.",
    "Constantly regard the universe as one living being, having one substance and one soul; and observe how all things have reference to one perception, the perception of this one living being.",
    "Search men's governing principles, and consider the wise, what they shun and what they cleave to.",
    "Everywhere and at all times it is in thy power piously to acquiesce in thy present condition, and to behave justly to those who are about thee, and to exert thy skill upon thy present thoughts, that nothing shall steal into them without being well examined.",
    "Whatever may befall you, it was preordained for you from everlasting.",
    "A wrongdoer is often a man who has left something undone, not always one who has done something.",
    "Everything harmonizes with me, which is harmonious to thee, O Universe. Nothing for me is too early or too late, which is in due time for thee.",
    "Rememberest the gods, and that they wish not to be flattered, but wish all reasonable beings to be made like themselves"
  ];

  static List<String> zenoQuotes = [
    "Happiness is a good flow of life.",
    "No one entrusts a secret to a drunken man; but one will entrust a secret to a good man; therefore, the good man will not get drunk.",
    "The end may be defined as life in accordance with nature or, in other words, in accordance with our own human nature as well as that of the universe.",
    "Love is a God, who cooperates in securing the safety of the city.",
    "All the good are friends of one another.",
    "We have two ears and one mouth, so we should listen more than we say.",
    "No evil is honorable; but death is honorable; therefore death is not evil.",
    "A bad feeling is a commotion of the mind repugnant to reason, and against nature.",
    "That which exercises reason is more excellent than that which does not exercise reason; there is nothing more excellent than the universe, therefore the universe exercises reason.",
    "If melodiously piping flutes sprang from the olive, would you doubt that a knowledge of flute-playing resided in the olive? And what if plane trees bore harps which gave forth rhythmical sounds? Clearly you would think in the same way that the art of music was possessed by plane trees. Why, then, seeing that the universe gives birth to beings that are animate and wise, should it not be considered animate and wise itself?"
  ];

  final QuotesData epictetus = new QuotesData('Epictetus', 'c. 55 AD', 'c. 135 AD', epictetusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Epicteti_Enchiridion_Latinis_versibus_adumbratum_%28Oxford_1715%29_frontispiece.jpg/1024px-Epicteti_Enchiridion_Latinis_versibus_adumbratum_%28Oxford_1715%29_frontispiece.jpg', epictetusBio);
  final QuotesData cato = new QuotesData('Cato the Younger', '95 BC', '46 BC', catoQuotes, 'https://upload.wikimedia.org/wikipedia/commons/8/8d/Cato_Volubilis_bronze_bust.jpg', catoBio);
  final QuotesData chrysippus = new QuotesData('Chryssipus', 'c. 279 BC', 'c. 206 BC', chrysippusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Chrysippos_BM_1846.jpg/1280px-Chrysippos_BM_1846.jpg', chrysippusBio);
  final QuotesData cleanthes = new QuotesData('Cleanthes', 'c. 330 BC', 'c. 230 BC', cleanthesQuotes, 'https://upload.wikimedia.org/wikipedia/commons/5/54/Cleanthes_from_L._Annaei_Senecae_philosophi_Opera%2C_1605%2C_title_page_detail.png', cleanthesBio);
  final QuotesData gaius = new QuotesData('Gaius Musonius Rufus', 'c. 20 AD', 'c. 101 AD', gaiusQuotes, 'https://optimizehq.imgix.net/authors/headshots/gaius-musonius-rufus.jpg', gaiusBio);
  final QuotesData seneca = new QuotesData('Seneca the Younger', 'c. 4 BC', 'AD 65', senecaQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Duble_herma_of_Socrates_and_Seneca_Antikensammlung_Berlin_07.jpg/1280px-Duble_herma_of_Socrates_and_Seneca_Antikensammlung_Berlin_07.jpg', senecaBio);
  final QuotesData marcusAurelius = new QuotesData('Marcus Aurelius', 'AD 121', 'AD 180', marcusAureliusQuotes, 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/L%27Image_et_le_Pouvoir_-_Buste_cuirass%C3%A9_de_Marc_Aur%C3%A8le_ag%C3%A9_-_3.jpg/1024px-L%27Image_et_le_Pouvoir_-_Buste_cuirass%C3%A9_de_Marc_Aur%C3%A8le_ag%C3%A9_-_3.jpg', marcusAureliusBio);
  final QuotesData zeno = new QuotesData('Zeno of Citium', '334 BC', '262 BC', zenoQuotes, 'https://upload.wikimedia.org/wikipedia/commons/b/bc/Paolo_Monti_-_Servizio_fotografico_%28Napoli%2C_1969%29_-_BEIC_6353768.jpg', zenoBio);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomScrollView(slivers: <Widget>[
          const SliverAppBar(
            pinned: false,
            expandedHeight: 200.0,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'The Stoics',
                  style: TextStyle(
                    fontFamily: 'Garamond',
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
                background: Image(
                  image: AssetImage('assets/mountains.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 40.0),
                  child: Column(
                    children: <Widget>[
                      StickyHeader(
                        header: stickyHeaderContainer('C'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Cato the Younger'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: cato,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Cleanthes'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: cleanthes,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Chrysippus of Soli'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: chrysippus,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),

                      StickyHeader(
                        header: stickyHeaderContainer('E'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Epictetus'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: epictetus,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('G'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Gaius Musonius Rufus'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: gaius,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),

                      StickyHeader(
                        header: stickyHeaderContainer('M'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Marcus Aurelius'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: marcusAurelius,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('S'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Seneca the Younger'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: seneca,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('Z'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Zeno of Citium'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: zeno,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class QuotesPage extends StatefulWidget {
  @override
  _QuotesPageState createState() => _QuotesPageState();
}

class _QuotesPageState extends State<QuotesPage> {
  bool _isFavorite = false;
  void toggleState(){
    setState((){
      if(_isFavorite){
        _isFavorite = !_isFavorite;
      }
      else if(!_isFavorite){
        _isFavorite = !_isFavorite;
      }
    });
  }
  @override
  Widget build(BuildContext context) {

    QuotesData data = ModalRoute.of(context).settings.arguments;
    final List<String> quotes = data.getQuotes();

    return SafeArea(
      child: Scaffold(
        body: ListView.separated(
          padding: const EdgeInsets.all(8.0),
          itemCount: quotes.length,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Container(
                child: Center(child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(quotes[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Garamond',
                        fontSize: 20.0,
                      ),
                      )
                    ),
                    Divider(height: 15.0, color: Colors.transparent),
                  ],
                )),
              ),
            );
          },
        separatorBuilder: (BuildContext context, int index) => const Divider())),
    );

//      appBar: AppBar(title: Text('Quotes by $name')),
//      body: Builder(
//        builder: (context) {
//          final double height = MediaQuery.of(context).size.height;
//          return CarouselSlider(
//            options: CarouselOptions(
//              height: height,
//              viewportFraction: 1.0,
//              enlargeCenterPage: false,
//// autoPlay: false,
//            ),
//            items: data
//                .getQuotes()
//                .map((item) => Container(
//              child: Padding(
//                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
//                child: Center(
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                    children: <Widget>[
//                      Text(item,
//                          textAlign: TextAlign.justify,
//                          style: TextStyle(
//                            fontFamily: 'Helvetica',
//                          )),
//                      Text('''
//
//
//$name''', textAlign: TextAlign.center),
//                    ],
//                  ),
//                ),
//              ),
//            ),
//            )
//                .toList(),
//          );
//        },
//      ),
//    );
  }
}





