import 'package:fd_delivery/misc/clipper/oval_top_border_clipper.dart';
import 'package:fd_delivery/pages/dashboard_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [
            _imageWidget(),
            _actionWidget(context),
          ],
        ),
      );

  Widget _imageWidget() => Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      top: 0,
      child: Image.asset(
        'assets/images/splash.jpeg',
        fit: BoxFit.fitHeight,
      ));

  Widget _actionWidget(BuildContext context) => Positioned(
        left: 0,
        right: 0,
        bottom: 0,
        child: ClipPath(
          clipper: OvalTopBorderClipper(),
          child: Container(
            color: Theme.of(context).colorScheme.background,
            padding:
                const EdgeInsets.symmetric(horizontal: 64.0, vertical: 48.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'i Più Veloci Nel Consegnare ',
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                      children: [
                        TextSpan(
                          text: 'Cibo',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ]),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    'il nostro obbiettivo è riempire la tua pancia con del cibo delizioso consegnando alla velocità della luce',
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 64,
                    ),
                  ),
                  onPressed: () => Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, a1, a2) => const DashboardPage(),
                      transitionsBuilder: (context, a1, a2, child) =>
                          FadeTransition(opacity: a1, child: child),
                      transitionDuration: const Duration(milliseconds: 500),
                    ),
                  ),
                  child: const Text('Iniziamo!'),
                ),
              ],
            ),
          ),
        ),
      );
}
