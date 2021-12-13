import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final String _userName = 'Hi, Tayo';
  final String _addMoney = 'Add Money';
  final String _availableBalance = 'Available Balance';
  final String _amount = 'N 20,000.00';

  String get userName => _userName;
  String get addMoney => _addMoney;
  String get availableBalance => _availableBalance;
  String get amount => _amount;
}
