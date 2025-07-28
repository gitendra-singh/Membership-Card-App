import 'package:flutter/foundation.dart';

class QrDataProvider with ChangeNotifier {
  String _qrData;

  QrDataProvider()
      : _qrData = 'user-id-${DateTime.now().millisecondsSinceEpoch}';

  String get qrData => _qrData;

  void refreshQR() {
    _qrData = 'user-id-${DateTime.now().millisecondsSinceEpoch}';
    notifyListeners();
  }
}
