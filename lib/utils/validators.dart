String? lastNameValidator(String prenom) {
  return prenom.length<3 ? "Entrer un prénom d'au moins 3 lettres" : null;
}
String? firstNameValidator(String nom) {
  return nom.length<3 ? "Entrer un nom d'au moins 3 lettres" : null;
}
String? promoCodeValidator(String code) {
  return code.length == 0 ? "Le code est non nul" : null;
}
String? cniValidator(String cni) {
  return cni.length<11 ? "Entrer un numéro valide" : null;
}
final RegExp emailVal = RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
String? emailValidator(String email) {
  return !emailVal.hasMatch(email) ? 'Entrer une email valide' : null;
}
String? telValidator(String tel) {
  return tel.length<8 ? "Entrer un numéro d'au moins 8 chiffres" : null;
}
String? birthdateValidator(String birthdate) {
  return birthdate.length<8 ? "Entrer une date valide" : null;
}

String? passwordValidator(String pin) {
  return pin.length<4 ? "Entrer un mot de passe d'au moins 6 chiffres" : null;
}

String? pinConfirmValidator(String confirmation, String password) {
  return passwordValidator(confirmation) ??
      ((password == confirmation)
          ? null
          : 'Les mots de passe ne sont pas identiques');
}
