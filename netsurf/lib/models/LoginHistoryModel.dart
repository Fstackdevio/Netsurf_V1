class LoginHistoryModel {
  final timeStamp;
  final location;

  LoginHistoryModel({this.timeStamp, this.location});
}

List<LoginHistoryModel> historyData = [
  LoginHistoryModel(
    timeStamp: '03:30 - 06:00',
    location: 'Abraham Hall'
  ),
  LoginHistoryModel(
    timeStamp: '08:00 - 11:30',
    location: 'Sarah Hall'
  ),
  LoginHistoryModel(
    timeStamp: '12:24 - 14:19',
    location: 'Chapel'
  ),
  LoginHistoryModel(
    timeStamp: '14:19 - 14:33',
    location: 'Chapel'
  ),
  LoginHistoryModel(
    timeStamp: '15:00 - 15:55',
    location: 'NCB'
  ),
  LoginHistoryModel(
    timeStamp: '16:13 - 16:25',
    location: 'Daniel Hall'
  ),
  LoginHistoryModel(
    timeStamp: '16:45 - 16:55',
    location: 'Main Cafeteria'
  ),
  LoginHistoryModel(
    timeStamp: '17:20 - 17:35',
    location: 'Chapel'
  )
];
