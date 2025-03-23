import 'package:flutter/material.dart';
import 'package:wizh_travel/const.dart';
import 'package:wizh_travel/model/travel_model.dart';
import 'package:wizh_travel/util/helpers.dart';

class Recommendation extends StatelessWidget {
  final TravelDestination destination;
  const Recommendation({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: height * 0.15,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.03,
        vertical: height * 0.01,
      ),
      child: Row(
        children: [
          Container(
            height: height * 0.12,
            width: width * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(destination.image![0]),
              ),
            ),
          ),
          SizedBox(width: width * 0.04),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  destination.name,
                  style: TextStyle(
                    fontSize: width * 0.04,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: height * 0.005),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.black,
                      size: 16,
                    ),
                    Flexible(
                      child: Text(
                        destination.location,
                        style: TextStyle(
                          fontSize: width * 0.03,
                          color: Colors.black.withOpacity(0.6),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.005),
                Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: width * 0.035,
                            ),
                          ),
                          TextSpan(
                            text: '${destination.rate}',
                            style: TextStyle(
                              fontSize: width * 0.035,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: ' (${destination.review} Reviews)',
                            style: TextStyle(
                              fontSize: width * 0.03,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.005),
                Flexible(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'IDR ${formatCurrency(destination.price)}',
                          style: TextStyle(
                            fontSize: width * 0.045,
                            fontWeight: FontWeight.w500,
                            color: blueTextColor,
                          ),
                        ),
                        TextSpan(
                          text: " / Person",
                          style: TextStyle(
                            fontSize: width * 0.03,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        )
                      ],
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
