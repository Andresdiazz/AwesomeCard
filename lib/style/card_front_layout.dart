import 'package:flutter/material.dart';

class CardFrontLayout {
  String bankName;
  String cardNumber;
  String cardExpiry;
  String cardHolderName;
  Widget cardTypeIcon;
  double cardWidth;
  double cardHeight;
  Color textColor;

  CardFrontLayout(
      {this.bankName = "",
      this.cardNumber = "",
      this.cardExpiry = "",
      this.cardHolderName = "",
      this.cardTypeIcon,
      this.cardWidth = 0,
      this.cardHeight = 0,
      this.textColor});

  Widget layout1(BuildContext context) {
    // Size _size = MediaQuery.of(context).size;
    // Get the proportionate height as per screen size
    double getProportionateScreenWidth(double inputWidth) {
      double screenWidth = MediaQuery.of(context).size.width;
      return (inputWidth / 414.0) * screenWidth;
    }

    return Padding(
      padding: EdgeInsets.fromLTRB(
          getProportionateScreenWidth(20),
          getProportionateScreenWidth(16),
          getProportionateScreenWidth(20),
          getProportionateScreenWidth(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: getProportionateScreenWidth(30),
                child: Center(
                  child: Text(
                    bankName,
                    style: TextStyle(
                        color: textColor,
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: new Image.asset(
                    'images/contactless_icon.png',
                    fit: BoxFit.fitHeight,
                    width: getProportionateScreenWidth(30.0),
                    height: getProportionateScreenWidth(30.0),
                    color: textColor,
                    package: 'awesome_card',
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          cardNumber == null || cardNumber.isEmpty
                              ? 'XXXX XXXX XXXX XXXX'
                              : cardNumber,
                          style: TextStyle(
                              package: 'awesome_card',
                              color: textColor,
                              fontWeight: FontWeight.w500,
                              fontFamily: "MavenPro",
                              fontSize: getProportionateScreenWidth(18)),
                        ),
                        SizedBox(
                          height: getProportionateScreenWidth(15),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Exp. Date",
                              style: TextStyle(
                                  package: 'awesome_card',
                                  color: textColor,
                                  fontFamily: "MavenPro",
                                  fontSize: getProportionateScreenWidth(15)),
                            ),
                            SizedBox(
                              width: getProportionateScreenWidth(10),
                            ),
                            Text(
                              cardExpiry == null || cardExpiry.isEmpty
                                  ? "MM/YY"
                                  : cardExpiry,
                              style: TextStyle(
                                  package: 'awesome_card',
                                  color: textColor,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "MavenPro",
                                  fontSize: getProportionateScreenWidth(14)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: getProportionateScreenWidth(15),
                        ),
                        Text(
                          cardHolderName == null || cardHolderName.isEmpty
                              ? "Card Holder"
                              : cardHolderName,
                          style: TextStyle(
                              package: 'awesome_card',
                              color: textColor,
                              fontWeight: FontWeight.w500,
                              fontFamily: "MavenPro",
                              fontSize: getProportionateScreenWidth(14)),
                        ),
                      ],
                    ),
                    cardTypeIcon
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
