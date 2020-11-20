class UserModel {
  final String id;
  final String email;

  UserModel({this.email, this.id});

  Map<String, dynamic> toMap() {
    return {'id': id, 'email': email};
  }

  UserModel.fromFirestore(Map<String, dynamic> firestore)
      : id = firestore['id'],
        email = firestore['email'];
}
