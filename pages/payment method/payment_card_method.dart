import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:cricket_app/E%20Commerce%20App/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';

class PaymentCardMethod extends StatefulWidget {
  const PaymentCardMethod({super.key});

  @override
  State<PaymentCardMethod> createState() => _PaymentCardMethodState();
}

class _PaymentCardMethodState extends State<PaymentCardMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        shadowColor: textFieldShadow.withOpacity(.08),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 24,
            color: text1,
          ),
        ),
        title: Text("Payment methods", style: headline3),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your payment cards",
              style: TextStyle(
                fontFamily: 'Metropolis',
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: text1,
                height: 1.6,
              ),
            ),
            SizedBox(height: 29),
            _buildMasterCreditCard(
              color: text1,
              cardNumber: "* * * *  * * * *  * * * *  3947",
              cardHolder: "Jennyfer Doe",
              cardExpiration: "05/23",
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Icon(
                  Icons.check_box,
                  size: 30,
                  color: text1,
                ),
                SizedBox(width: 13),
                Text(
                  "Use as default payment method",
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: text1,
                    height: 1.5,
                    letterSpacing: -0.41,
                  ),
                ),
              ],
            ),
            SizedBox(height: 39),
            _buildVisaCreditCard(
              color: textFieldText1,
              cardNumber: "* * * *  * * * *  * * * *  4546",
              cardHolder: "Jennyfer Doe",
              cardExpiration: "11/22",
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank_rounded,
                  size: 30,
                  color: textFieldText1,
                ),
                SizedBox(width: 13),
                Text(
                  "Use as default payment method",
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: text1,
                    height: 1.5,
                    letterSpacing: -0.41,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: text1,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: bgColor,
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(34),
                topRight: Radius.circular(34),
              ),
            ),
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 26),
                    Text(
                      "Add new card",
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: text1,
                        height: 2.2,
                      ),
                    ),
                    SizedBox(height: 18),
                    Container(
                      height: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: textField,
                        boxShadow: [
                          BoxShadow(
                            color: textFieldShadow.withOpacity(0.05), //New
                            blurRadius: 8.0,
                            offset: Offset(0.0, 1.0),
                          ),
                        ],
                      ),
                      child: TextField(
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: text1,
                          height: 1.4,
                        ),
                        decoration: InputDecoration(
                          hintText: "Name on Card",
                          hintStyle: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: textFieldText1,
                            height: 1.5,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: textField,
                        boxShadow: [
                          BoxShadow(
                            color: textFieldShadow.withOpacity(0.05), //New
                            blurRadius: 8.0,
                            offset: Offset(0.0, 1.0),
                          ),
                        ],
                      ),
                      child: TextField(
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: text1,
                          height: 1.4,
                        ),
                        decoration: InputDecoration(
                          fillColor: textField,
                          filled: true,
                          hintText: '5546 8205 3693 3947',
                          hintStyle: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            height: 1.5,
                            color: text1,
                          ),
                          labelText: 'Card number',
                          labelStyle: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.normal,
                            fontSize: 11,
                            color: textFieldText1,
                          ),
                          suffixIcon: Image.asset(
                            "assets/eCommerceApp/mastercard.png",
                            width: 32,
                            height: 25,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: textField,
                        boxShadow: [
                          BoxShadow(
                            color: textFieldShadow.withOpacity(0.05), //New
                            blurRadius: 8.0,
                            offset: Offset(0.0, 1.0),
                          ),
                        ],
                      ),
                      child: TextField(
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: text1,
                          height: 1.4,
                        ),
                        decoration: InputDecoration(
                          fillColor: textField,
                          filled: true,
                          hintText: "05/23",
                          hintStyle: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            height: 1.5,
                            color: text1,
                          ),
                          labelText: "Expire Date",
                          labelStyle: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.normal,
                            fontSize: 11,
                            color: textFieldText1,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: textField,
                        boxShadow: [
                          BoxShadow(
                            color: textFieldShadow.withOpacity(0.05), //New
                            blurRadius: 8.0,
                            offset: Offset(0.0, 1.0),
                          ),
                        ],
                      ),
                      child: TextField(
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: text1,
                          height: 1.4,
                        ),
                        decoration: InputDecoration(
                          fillColor: textField,
                          filled: true,
                          hintText: "567",
                          hintStyle: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            height: 1.5,
                            color: text1,
                          ),
                          labelText: "CVV",
                          labelStyle: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.normal,
                            fontSize: 11,
                            color: textFieldText1,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 30,
                          color: text1,
                        ),
                        SizedBox(width: 13),
                        Text(
                          "Set as default payment method",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: text1,
                            height: 1.5,
                            letterSpacing: -0.15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 22),
                    CustomButton(
                      title: "ADD CARD",
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(height: 22),
                  ],
                ),
              );
            },
          );
        },
        child: const Icon(
          Icons.add,
          color: textField,
          shadows: [
            Shadow(
              blurRadius: 4,
              offset: Offset(0, 4),
              color: textFieldShadow,
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(36),
        ),
      ),
    );
  }

  Card _buildMasterCreditCard({
    required Color color,
    required String cardNumber,
    required String cardHolder,
    required String cardExpiration,
  }) {
    return Card(
      elevation: 8,
      child: Container(
        height: 200,
        padding: const EdgeInsets.only(left: 24.0, right: 25.0, top: 24),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              blurRadius: 25,
              offset: Offset(0, 1),
              color: textFieldShadow.withOpacity(.08),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Image.asset(
                    "assets/eCommerceApp/chip.png",
                    height: 24,
                    width: 32,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 29),
              child: Text(
                '$cardNumber',
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  letterSpacing: -0.41,
                  height: 1.0,
                  color: textField,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildMasterCardDetails(
                  label: 'Card Holder Name',
                  value: cardHolder,
                ),
                _buildMasterCardDetails(
                  label: 'Expiry Date',
                  value: cardExpiration,
                ),
                Container(
                  child: Image.asset(
                    "assets/eCommerceApp/mastercreditcard.png",
                    width: 32,
                    height: 25,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMasterCardDetails({
    required String label,
    required String value,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$label",
          style: TextStyle(
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.w400,
            fontSize: 10,
            color: textField,
            letterSpacing: -0.41,
          ),
        ),
        Text(
          "$value",
          style: TextStyle(
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: textField,
            letterSpacing: -0.41,
          ),
        )
      ],
    );
  }

  Card _buildVisaCreditCard({
    required Color color,
    required String cardNumber,
    required String cardHolder,
    required String cardExpiration,
  }) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        height: 200,
        padding: const EdgeInsets.only(left: 24.0, right: 25.0, top: 24),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              blurRadius: 25,
              offset: Offset(0, 1),
              color: textFieldShadow.withOpacity(.08),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Image.asset(
                    "assets/eCommerceApp/visa.png",
                    height: 16,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 29),
              child: Text(
                '$cardNumber',
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  letterSpacing: -0.41,
                  height: 1.0,
                  color: textField,
                ),
              ),
            ),
            Container(
              child: Image.asset(
                "assets/eCommerceApp/chip.png",
                height: 24,
                width: 32,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 17),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildVisaCardDetails(
                  label: 'Card Holder Name',
                  value: cardHolder,
                ),
                _buildVisaCardDetails(
                  label: 'Expiry Date',
                  value: cardExpiration,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVisaCardDetails({
    required String label,
    required String value,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$label",
          style: TextStyle(
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.w400,
            fontSize: 10,
            color: textField,
            letterSpacing: -0.41,
          ),
        ),
        Text(
          "$value",
          style: TextStyle(
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: textField,
            letterSpacing: -0.41,
          ),
        )
      ],
    );
  }
}
