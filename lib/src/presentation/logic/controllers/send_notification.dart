import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_firebase_admin/dart_firebase_admin.dart';
import 'package:dart_firebase_admin/messaging.dart';
import 'package:get/get.dart';

class SendNotification {
  late FirebaseAdminApp admin;
  SendNotification();

  Future<void> sendNotification(
      {required String title, required String body}) async {
    try {
      admin = FirebaseAdminApp.initializeApp(
        'fwoapp-27b94',
        Credential.fromServiceAccountParams(
            clientId: "107361478922883052595",
            privateKey:'-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCFdDIUYs9L4R5z\nn8ZDpb8t8uH35PFZDM8Qa+444n9ZuZLWP8FTqHo4zTOLa9UX9JP29yKs5ozkpJVm\nkVZLdv7uf6Dc5TgxaDQ8h0+TPlfDayiTO/T+2F8cZ9J38C56fdgF0UIrBAs2i76R\nIVGQszAgyoXaWonRRBtF9mCHZWzwvRbxVAN1lXLVsHX8pI8nTizUDDshtJQzwsZs\n1gEtfoxCBQ1mWmDWZbWp35kYK8tRbz0jJLgky51s8CIkXmulO0GMlzqyLOZMJag0\nK8IgAQ2qKEQRl+M5kZMMazYf/C76kXh7+OklTXvVldCRudd0fEmPUkkqFLA2li1c\naGCqGS05AgMBAAECggEAAXvDrL9Wb5D+jil6Ajl+8QtQoLlOR3+hc5zHhqFZ6gzq\niXAm/X+TcDsztfqKYVxKIsYngAWGDmqX8I5wB6G4fr0zdBEmOUJfxkZ4x3m7bwQr\nbMuPUx/jmsS6rbOhSKJKevITCrheSYpvIVzd875SLCMkLsOv4YAgz3vIIekqN1jW\novWvlycOv4uiYmnVp13JXk22ep9dXpf4Djt4eDATA2DMLYvmAh+uc9kCUI/gsQk9\n7Ib+Y+lx/Jm9pDUTH0ahf+A5MUbDiJYM4RuLyt8KclOjQWCe0uM1hQqyS8VbSkXx\n+EsKuwDpUiucoYQKtVsF/bPMJEm9CWJ9JkbMvXmamwKBgQC514rL1OfcMynbwacP\nli9+56zXvw7j5Oug3Spt25mpocWCPpNza1WnIdkT0N49eU/Dbks8QAl7Xd0TaETO\ncbnGsuOTUajVs5vfcVjnrS8aKs5nEKdqKsMv88bUAlmrRFi/hJH+Bv/sTiBmw8Zz\nsKirNp/ENlB69isNmGz3+ZROnwKBgQC31azpUhYqt3nM/fGz2xyqBrMZeNc9aZqm\n++T1qIAi8z8sJ5MTXMOZU63os6T3HvRxLZY37fPki+twcbOXGqSGF9KNuW/s+xQT\nNC26Jeuq+n1TmSRpEOcxoqtK7zIK9TdoPBkSz7axaULhaeosoU6qNwlfJVtf54Dm\nN5zf5UjtJwKBgQCexcaABIKev1t4s4b+Kwqi+l3R6RpYm4Cv66RPPTmYEmzCrKGf\nD0mbQ7DJXD4y+QyrY/SFIhS3wGabKQ737XORjc4eU7rR8OQvzw/sxyohygaTSUgu\nzR/7PONWyDdBul+0KBfulp5ZjhnikkpfFsPTmxR+NwUlOGFp+RrH9QO+8wKBgDDd\n5unavTO7s+/u7SofK55yy3cQ7T5Q7SBIQ1Od5/niaT+GgY0bEo+Wc9swrcBXBSl0\nscLKSRPOsdYhE1kuZt+SQ5ES4xK+p1Z3f1RFMkEv9tKbGden+5zxHdF8hfPtvT3D\nA/NBLdI5JeMfsXUNqAiNOruFBaYXtub7j4LgwyLvAoGAB+eWTBH5vZb1qdDydVML\n3j3kKWuoFh/WTsCmYPhBL/mftJ5mHf/P63lRpSDVIT2xOL4NPMRAY4IlDeFORQ7+\nsiCf+dVYKSyyRsj6a9hm+8lHBoE9yS1Y447eunxDU83S0hAPqg/hlm99HVWYN8XW\nW67lFh+DTmAfJbNTGF6KgJc=\n-----END PRIVATE KEY-----\n',
            email:"firebase-adminsdk-gzn4b@fwoapp-27b94.iam.gserviceaccount.com"),
      );

      final messaging = Messaging(admin);

      messaging.send(TopicMessage(
          topic: 'all', notification: Notification(title: title, body: body)));
    } catch (e) {}
  }
}
