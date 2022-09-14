import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  bool _expanded1 = true;
  var rating = 0;
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          //margin: const EdgeInsets.all(2),

          child: ExpansionPanelList(
            elevation: 0,
            animationDuration:
            const Duration(milliseconds: 2000),
            children: [
              ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return const ListTile(
                    leading: Text(
                      'Ranking',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  );
                },
                body: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      RatingBar.builder(
                        initialRating: 0,
                        minRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemSize: 30,
                        itemCount: 3,
                        //itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star_border_purple500_sharp,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),


                      const SizedBox(
                        height: 10,
                      ),
                      RatingBar.builder(
                        initialRating: 0,
                        minRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemSize: 30,
                        itemCount: 2,
                        //itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star_border_purple500_sharp,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RatingBar.builder(
                        initialRating: 0,
                        minRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemSize: 30,
                        itemCount: 1,
                        //itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star_border_purple500_sharp,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),


                    ],
                  ),
                ),
                isExpanded: _expanded1,
                canTapOnHeader: true,
              ),
            ],
            // dividerColor: Colors.grey,
            expansionCallback:
                (panelIndex, isExpanded) {
              _expanded1 = !_expanded1;
              setState(() {});
            },
          ),
        ),
      ],
    );
  }
}
