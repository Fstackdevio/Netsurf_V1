class FaqModel {
  final question;
  final answer;

  FaqModel({this.question, this.answer});
}

List<FaqModel> faqData = [
  FaqModel(
      question: 'Buy data seems not to be working, how can I go about that ?',
      answer:
          'Please do make sure that your e-wallet account is connected to netsurf to allow purchase of data within the app.'),
  FaqModel(
      question: 'How can I tell if my data purchase was successful ?',
      answer:
          'Kindly check your e-wallet account, under linked platforms, click on netsurf and your transaction details will be shown there.'),
  FaqModel(
      question: 'I dont usually get notifications. How do I go about this ?',
      answer:
          'Kindly click on push notification to subscribe to the service automatically.'),
  FaqModel(
      question:
          'Non of the services (share data and change password) are working ?',
      answer:
          'Kindly recheck that you are inputting the correct secret pin for authorization. If not the case, please lay a complain through the feedback platform.'),
  FaqModel(
      question:
          'My data balance seems not to be adding up after purchase. What could be the issue ?',
      answer:
          'There could be numerous reasons. Network connection or account is not able to perform such operation. If not the case, please lay a complain through the feedback platform.'),
  FaqModel(
      question: 'Logout button seems not to be working ?',
      answer:
          'Please do lay your complain at the feedback platform or meet with the C.S.I.S officials for a quick follow up.'),
  FaqModel(
      question: 'What is login history for ?',
      answer:
          'It is there to let you know when and where last you login into your account.')
];
