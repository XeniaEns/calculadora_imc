import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../util/const.dart';
import '../util/strings.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecundaryColor,
      appBar: AppBar(
        title: const Text(
          sAppTittle,
          style: TextStyle(
            color: kPrimaryTextColor,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                 Expanded(
                    child: ReusableCard(
                  cardColor: kBoxMainColor,
                  cardChild: IconContent(cardIcon: FontAwesomeIcons.mars, cardLabel: sLabelMasculine),
                )),
                Expanded(
                    child: ReusableCard(
                  cardColor: kBoxMainColor,
                  cardChild: IconContent(cardIcon: FontAwesomeIcons.venus, cardLabel: sLabelFemennine),
                )),
              ],
            ),
          ),
          const Expanded(
              child: ReusableCard(
            cardColor: kBoxMainColor,
          )),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                    child: ReusableCard(
                  cardColor: kBoxMainColor,
                )),
                Expanded(
                    child: ReusableCard(
                  cardColor: kBoxMainColor,
                )),
              ],
            ),
          ),
          Container(
            color: kBoxResultColor,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 80,
          ),
        ],
      ),
    );
  }
}

// !! MUEVE ESTA CLASE A UN NUEVO ARCHIVO !!
// Esta clase es para crear las cartas
// Requiere que se le pase un color obligatorio
// Requiere que se le pase una cartaHija llamada cardChild
class ReusableCard extends StatelessWidget {
  final Color cardColor;
  final Widget? cardChild;

  const ReusableCard({Key? key, required this.cardColor, this.cardChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: cardChild,
    );
  }
}

// !! MUEVE ESTA CLASE A OTRO ARCHIVO !!
// Esta clase contiene los íconos de las cartas cuando sean necesarios,
// recibe dos parámetro
// cardIcon y cardLabel;
class IconContent extends StatelessWidget {
  final IconData cardIcon;
  final String  cardLabel;

  const IconContent({
    Key? key,
    required this.cardIcon,
    required this.cardLabel
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(cardIcon, size: 80, color: kIconColor),
        const SizedBox(height: 15),
        Text(cardLabel)
      ],
    );
  }
}
