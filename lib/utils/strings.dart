
const String BASE_URL = "https://yam-bo.com/api/v1";
const String BASE_PLATFORM_URL = "$BASE_URL/yambo";
const String PRODUCTS_URL = "$BASE_PLATFORM_URL/products";
const String PARTNERS_URL = "$BASE_PLATFORM_URL/partners";
const String CATEGORIES_URL = "$BASE_PLATFORM_URL/categories";
const String LOGIN_URL = "$BASE_URL/login_check";
const String REFRESH_URL = "token/refresh";
const String CONTACT_URL = "$BASE_PLATFORM_URL/forms/contact";
const String ACCOUNT_URL = "$BASE_PLATFORM_URL/accounts";
const String SUBSCRIPTION_URL = "$BASE_PLATFORM_URL/forms/souscription";

//https://flexitekhtbts69g7p8s6e54.s3.eu-west-3.amazonaws.com
const String IMAGE_BASE_URL = "https://prodyambo.s3.eu-west-3.amazonaws.com";


String lastName = "Prénom";
String firstName = "Nom";
String email = "Adresse email";
String birthdate = "Date de naissance";
String phone = "Numéro de téléphone";
String promoCode = "Code promo";
String pwd = "Mot de passe";
String confirmPwd = "Confirmer le mot de passe";

const String kDbFileName = 'yambo.db';
const String kDbStoreName = 'offers';

const String LASTNAME = "LASTNAME";
const String FORENAME = "FORENAME";
const String ACCOUNTID = "ACCOUNT_ID";
const String USERNAME = "USERNAME";
const String PHONE = "PHONE";
const String BIRTHDATE = "BIRTHDATE";
const String TOKEN = "TOKEN";
const String REFRESHTOKEN = "REFRESH_TOKEN";

const String errorString = "Une erreur s'est produite, réessayez";
const String sentError = "Impossible d'envoyer le message";

const String AWAITING_PAYMENT = "AWAITING_PAYMENT";
const String CART = "CART";
const String PARTIALLY_PAID = "PARTIALLY_PAID";
const String FULFILLED = "FULFILLED";
const String CANCELLED = "CANCELLED";

const String CART_UPDATE_SUCCESS = "Produit mis à jour avec succès";
const String CART_UPDATE_ERROR = "Impossible de mettre à jour le produit";
const String CART_ADD_SUCCESS = "Impossible d'ajouter le produit";
const String CART_ADD_ERROR = "Impossible d'ajouter le produit";

enum OrderStatus { CART, AWAITING_PAYMENT, PARTIALLY_PAID, FULFILLED, CANCELLED }

enum SuscriptionStatus { HASNOT, HAS, ERROR, LOADING }