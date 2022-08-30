import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'reward_questions_record.g.dart';

abstract class RewardQuestionsRecord
    implements Built<RewardQuestionsRecord, RewardQuestionsRecordBuilder> {
  static Serializer<RewardQuestionsRecord> get serializer =>
      _$rewardQuestionsRecordSerializer;

  String? get question;

  @BuiltValueField(wireName: 'answer_index')
  int? get answerIndex;

  int? get sequence;

  @BuiltValueField(wireName: 'option-1')
  String? get option1;

  @BuiltValueField(wireName: 'option-2')
  String? get option2;

  @BuiltValueField(wireName: 'option-3')
  String? get option3;

  @BuiltValueField(wireName: 'option-4')
  String? get option4;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RewardQuestionsRecordBuilder builder) =>
      builder
        ..question = ''
        ..answerIndex = 0
        ..sequence = 0
        ..option1 = ''
        ..option2 = ''
        ..option3 = ''
        ..option4 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rewardQuestions');

  static Stream<RewardQuestionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RewardQuestionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RewardQuestionsRecord._();
  factory RewardQuestionsRecord(
          [void Function(RewardQuestionsRecordBuilder) updates]) =
      _$RewardQuestionsRecord;

  static RewardQuestionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRewardQuestionsRecordData({
  String? question,
  int? answerIndex,
  int? sequence,
  String? option1,
  String? option2,
  String? option3,
  String? option4,
}) {
  final firestoreData = serializers.toFirestore(
    RewardQuestionsRecord.serializer,
    RewardQuestionsRecord(
      (r) => r
        ..question = question
        ..answerIndex = answerIndex
        ..sequence = sequence
        ..option1 = option1
        ..option2 = option2
        ..option3 = option3
        ..option4 = option4,
    ),
  );

  return firestoreData;
}
