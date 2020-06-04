class User {
  String name, profession;

  User({this.name, this.profession});
}

class Profile {
  User user;

  Profile(this.user);
}

class ProfileProvider {
  static Profile getProfile() => Profile(
        User(
          name: "Erik Walters",
          profession: 'Photograph',
        ),
      );

  static List<String> photos() =>
      List.generate(15, (index) => 'assets/shared/mohamed.jpg');

  static List<String> videos() =>
      List.generate(15, (index) => 'assets/shared/Safadi.jpg');

  static List<String> posts() =>
      List.generate(15, (index) => 'assets/shared/mohamed.jpg');

  static List<String> friends() =>
      List.generate(15, (index) => 'assets/shared/Safadi.jpg');
}
