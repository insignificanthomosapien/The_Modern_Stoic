class QuotesData{
  String authorName;
  String birthYear;
  String deathYear;
  List<String> quotes= [];
  String imageLink;
  String bio;

  QuotesData(String author, String birth, String death, List<String> x, String y, String biography){
    authorName = author;
    birthYear = birth;
    deathYear = death;
    for(int i = 0; i < x.length; i++){
      quotes.add(x[i]);
    }
    imageLink = y;
    bio = biography;
  }

  String getBirthYear(){
    return birthYear;
  }

  String getDeathYear(){
    return deathYear;
  }

  String getAuthorName(){
    return authorName;
  }

  List<String> getQuotes(){
    return quotes;
  }

  String getQuoteAtIndex(int index){
    return quotes[index];
  }

  String getImageLink(){
    return imageLink;
  }

  String getBio(){
    return bio;
  }


}