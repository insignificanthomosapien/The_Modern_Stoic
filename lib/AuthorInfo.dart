class AuthorInfo{
  String name;
  String birthYear;
  String deathYear;


  AuthorInfo(String authorName, String birth, String death){
    name = authorName;
    birthYear = birth;
    deathYear = death;
  }

  String getAuthorName(){
    return name;
  }

  String getBirthYear(){
    return birthYear;
  }

  String getDeathYear(){
    return deathYear;
  }



}