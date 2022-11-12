class QuizModel {
  String question;
  List<String> optionList;
  int answer;
  QuizModel(this.question, this.optionList, this.answer);
}

QuizModel quiz1 = QuizModel("1. What color does yellow and green make?",
    ["Lime", "Maroom", "Ocean mist", "Tangerine"], 0);

QuizModel quiz2 = QuizModel(
    "2. MS-Word is an example of _____",
    [
      "An operating system",
      " A processing device",
      "Application software",
      "An input device"
    ],
    2);

QuizModel quiz3 = QuizModel("3.Ctrl, Shift and Alt are called .......... keys.",
    ["modifier", "alphanumeric", "function", "adjustment"], 0);

QuizModel quiz4 = QuizModel(
    "4.The staple food of the Vedic Aryan was  ",
    [
      "Barley and rice",
      " Milk and its products",
      "Rice and pulses",
      " Vegetables and fruits"
    ],
    1);

QuizModel quiz5 = QuizModel(
    "5. The tropic of cancer does not pass through which of these Indian states ?",
    ["Madhya Pradesh", " West Bengal", "Rajasthan", "Odisha"],
    3);
QuizModel quiz6 = QuizModel(
    "6.A computer cannot \"boot\" if it does not have the _____",
    [" Compiler", "Loader", "Operating system", "Assembler"],
    2);
QuizModel quiz7 = QuizModel(
    "7. ________ is the process of dividing the disk into tracks and sectors.",
    ["Tracking", "Formatting", "Crashing", "Allotting"],
    1);
QuizModel quiz8 = QuizModel("8. Junk e-mail is also called ______",
    ["Spam", "Spoof", "Sniffer script", " Spool"], 0);
QuizModel quiz9 = QuizModel(
    "9. Microsoft Office is an example of a?",
    [
      " Closed source software",
      "Open source software",
      "Horizontal market software",
      "vertical market software"
    ],
    2);
QuizModel quiz10 = QuizModel(
    "10. By default, your documents print in ________ mode?",
    ["Landscape", "Portrait", "Page Setup", " Print View"],
    1);
// QuizModel quiz11 = QuizModel(
//     "11. _______are attempts by individuals to obtain confidential information from you by falsifying their identity.",
//     ["Phishing trips", " Computer viruses", "Phishing scams	", "Spyware scams"],
//     2);
QuizModel quiz11 = QuizModel(
    "11. Storage capacity of magnetic disk depends on ________",
    [
      "disk pack in disk surface",
      " tracks per inch of surface",
      "bits per inch of tracks",
      "All of the above"
    ],
    3);
QuizModel quiz12= QuizModel("12. Where is RAM located?",
    ["Mother Board", " Expansion Board", "External Drive", "None"], 0);
QuizModel quiz13 = QuizModel(
    "13. Several computers linked to a server to share programs and storage space________",
    ["Network", "Grouping", "Library", " Integrated system"],
    0);
QuizModel quiz14 = QuizModel(
    "14. A _______ is a software program used to view Web pages.",
    ["site", "host", "link", "browser"],
    3);
