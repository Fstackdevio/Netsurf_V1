import 'package:netsurf/tools/constants.dart';

class EventObject {
  int id;
  Object object;

  EventObject({
    this.id: EventConstants.NO_INTERNET,
    this.object: null,
  });
}
