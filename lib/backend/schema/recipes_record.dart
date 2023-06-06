import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecipesRecord extends FirestoreRecord {
  RecipesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "recipeName" field.
  String? _recipeName;
  String get recipeName => _recipeName ?? '';
  bool hasRecipeName() => _recipeName != null;

  // "prepTime" field.
  String? _prepTime;
  String get prepTime => _prepTime ?? '';
  bool hasPrepTime() => _prepTime != null;

  // "cookName" field.
  String? _cookName;
  String get cookName => _cookName ?? '';
  bool hasCookName() => _cookName != null;

  // "servings" field.
  String? _servings;
  String get servings => _servings ?? '';
  bool hasServings() => _servings != null;

  // "bakeTemp" field.
  String? _bakeTemp;
  String get bakeTemp => _bakeTemp ?? '';
  bool hasBakeTemp() => _bakeTemp != null;

  // "recipeType" field.
  String? _recipeType;
  String get recipeType => _recipeType ?? '';
  bool hasRecipeType() => _recipeType != null;

  // "ingredients" field.
  String? _ingredients;
  String get ingredients => _ingredients ?? '';
  bool hasIngredients() => _ingredients != null;

  // "directions" field.
  String? _directions;
  String get directions => _directions ?? '';
  bool hasDirections() => _directions != null;

  void _initializeFields() {
    _recipeName = snapshotData['recipeName'] as String?;
    _prepTime = snapshotData['prepTime'] as String?;
    _cookName = snapshotData['cookName'] as String?;
    _servings = snapshotData['servings'] as String?;
    _bakeTemp = snapshotData['bakeTemp'] as String?;
    _recipeType = snapshotData['recipeType'] as String?;
    _ingredients = snapshotData['ingredients'] as String?;
    _directions = snapshotData['directions'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recipes');

  static Stream<RecipesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecipesRecord.fromSnapshot(s));

  static Future<RecipesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecipesRecord.fromSnapshot(s));

  static RecipesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecipesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecipesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecipesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecipesRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createRecipesRecordData({
  String? recipeName,
  String? prepTime,
  String? cookName,
  String? servings,
  String? bakeTemp,
  String? recipeType,
  String? ingredients,
  String? directions,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'recipeName': recipeName,
      'prepTime': prepTime,
      'cookName': cookName,
      'servings': servings,
      'bakeTemp': bakeTemp,
      'recipeType': recipeType,
      'ingredients': ingredients,
      'directions': directions,
    }.withoutNulls,
  );

  return firestoreData;
}
