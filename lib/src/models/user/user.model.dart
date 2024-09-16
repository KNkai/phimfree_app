class UserModel {
  final String? id;
  final String? name;
  final String? email;
  final String? avatarUrl;
  final DateTime? createdAt;
  final List<String>? favoriteMovieIds; // Store movie IDs here

  UserModel({
    this.id,
    this.name,
    this.email,
    this.avatarUrl,
    this.createdAt,
    this.favoriteMovieIds,
  });

  // To create a User from a JSON object
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      avatarUrl: json['avatarUrl'],
      createdAt: DateTime.parse(json['createdAt']),
      favoriteMovieIds: List<String>.from(json['favoriteMovieIds']),
    );
  }

  // To convert a User object into a JSON object
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'avatarUrl': avatarUrl,
      'createdAt':
          createdAt?.toIso8601String() ?? DateTime.now().toIso8601String(),
      'favoriteMovieIds': favoriteMovieIds,
    };
  }
}
