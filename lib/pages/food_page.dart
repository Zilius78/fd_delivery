import 'package:fd_delivery/widgets/food_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../mocks.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: FoodAppBar(blurEnabled: false, child: _appBar(context)),
        body: Container(
            color: Theme.of(context).colorScheme.surface,
            child: Stack(
              children: [
                _body(context),
                _image(),
              ],
            )),
      );
  Widget _body(BuildContext context) => Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          padding: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              _quantityPicker(context),
              _titleAndPrice(context),
              _details(),
              _description(context),
              _addBasketButton(context),
            ],
          ),
        ),
      );
  Widget _quantityPicker(BuildContext context) => Container(
        margin: const EdgeInsets.all(24),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(30.0)),
        width: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.remove,
              size: 16,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                '1',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
            ),
            Icon(
              Icons.add,
              size: 16,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ],
        ),
      );
  Widget _titleAndPrice(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Mocks.foods.first.name,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(Mocks.foods.first.description,
                    style: Theme.of(context).textTheme.caption),
              ),
            ],
          ),
          RichText(
            text: TextSpan(
              text: '€ ',
              style: Theme.of(context).textTheme.caption?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
              children: [
                TextSpan(
                  text: Mocks.foods.first.price,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ),
        ]),
      );
  Widget _details() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _iconAndTextWidget(
                text: '4.8',
                icon: FontAwesomeIcons.solidStar,
                iconColor: Colors.yellow),
            _iconAndTextWidget(
                text: '150 KCal',
                icon: FontAwesomeIcons.fire,
                iconColor: Colors.orange),
            _iconAndTextWidget(
              text: '5-10 min',
              icon: FontAwesomeIcons.clock,
              iconColor: Colors.red,
            ),
          ],
        ),
      );

  Widget _iconAndTextWidget(
          {required String text,
          required IconData icon,
          required Color iconColor}) =>
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: iconColor,
            size: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child:
                Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      );

  Widget _description(BuildContext context) => RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
            text: Mocks.foods.first.caption,
            style: Theme.of(context).textTheme.caption?.copyWith(fontSize: 14),
            children: [
              TextSpan(
                text: '...Mostra Altro',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              )
            ]),
      );
  Widget _addBasketButton(BuildContext context) => Container(
        margin: const EdgeInsets.only(top: 12.0),
        width: double.maxFinite,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 64),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          onPressed: () {},
          child: const Text('Aggiungi al carrello'),
        ),
      );
  Widget _image() => Positioned(
      top: 56,
      left: 24,
      right: 24,
      child: Image.asset(Mocks.foods.first.image));

  Widget _appBar(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            customBorder:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onSecondary,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(8.0),
              child: const Icon(FontAwesomeIcons.chevronLeft, size: 16),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onSecondary,
                borderRadius: BorderRadius.circular(8)),
            padding: const EdgeInsets.all(8.0),
            child: const Icon(
              Icons.more_horiz,
              size: 16,
            ),
          ),
        ],
      );
}
