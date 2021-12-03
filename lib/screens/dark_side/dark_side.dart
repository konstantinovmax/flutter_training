import 'package:flutter/material.dart';
import 'package:flutter_training/constants/strings.dart';
import 'package:flutter_training/models/persons_model.dart';
import 'package:flutter_training/theme/styles.dart';

class DarkSide extends StatefulWidget {
  const DarkSide({Key? key}) : super(key: key);

  @override
  State<DarkSide> createState() => _DarkSideState();
}

class _DarkSideState extends State<DarkSide> {
  late Future<PersonsList> personsList;

  @override
  void initState() {
    personsList = getPersonsList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Theme.of(context).primaryColor),
        title: Text(
          Texts.onDarkSide,
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: FutureBuilder<PersonsList>(
        future: personsList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    snapshot.data!.results[3].name,
                    style: TextStyles.sideTitle,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Gender: ${snapshot.data!.results[3].gender}',
                    style: TextStyles.sideText,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Birth year: ${snapshot.data!.results[3].birth_year}',
                    style: TextStyles.sideText,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Height: ${snapshot.data!.results[3].height}',
                    style: TextStyles.sideText,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Weight: ${snapshot.data!.results[3].mass}',
                    style: TextStyles.sideText,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Eye color: ${snapshot.data!.results[3].eye_color}',
                    style: TextStyles.sideText,
                  ),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return const Text(Texts.error);
          }
          return Center(
            child: CircularProgressIndicator(
              valueColor:
                  AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
            ),
          );
        },
      ),
    );
  }
}
