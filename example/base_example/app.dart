import 'package:dartive/dartive.dart';
import 'package:dartive/dartiveMongo.dart';



void main(List<String> arguments) async {
  Dartive.get('/', () {
    print("This is running");

    return {'frig  you'};
  });

  Dartive.post('/test', (Dartive api) async {
    var body = api.request;
    return body;
  });

  Dartive.post('/newpage', (Dartive api) async {
    var body = api.request;
    body.json();
    // add another field to body
    List<String> items = body.split('');
    items.add("newitem");
    return items;
  });

  Dartive.delete('/delete', () {
    return {'deleted item'};
  
  });
  Dartive.get('/delete', () {
    return {'get deleted  item'};
  
  });

  Dartive.get('/busInformation', () {
    return {
      "Id": "5E",
      "Name": "511 Emergency",
      "ShortName": "511 Emergency",
      "SiriOperatorRef": null,
      "TimeZone": "America/Vancouver",
      "DefaultLanguage": "en",
      "ContactTelephoneNumber": null,
      "WebSite": null,
      "PrimaryMode": "other",
      "PrivateCode": "5E",
      "Monitored": false,
      "OtherModes": ""
    };
  });

  DartiveMongo.find({'name': 'Tom', 'rating': {r'$gt': 10}}, "name, friends", () async {
    return {
      "name": "Tom",
      "friends": {"John", "Jane"}
    };
  });
  
  // comment
  await Dartive.listen(host: '0.0.0.0', port: 8000);
}
