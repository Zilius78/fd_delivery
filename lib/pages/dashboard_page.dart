import 'package:fd_delivery/widgets/bab_item.dart';
import 'package:fd_delivery/widgets/food_app_bar.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.red[700],
          elevation: 2.0,
          child: const Icon(Icons.search),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: _bottomNavigationBar(),
        appBar: FoodAppBar(
          child: _appBar(),
        ),
        body: _body(context),
        drawer: _drawer(context),
      );

  Widget _appBar() => Builder(
      builder: (context) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                onTap: () => Scaffold.of(context).openDrawer(),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: const Icon(Icons.menu)),
              ),
              Row(
                children: [
                  Icon(
                    Icons.place,
                    color: Colors.red[700],
                    size: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Roma-Lazio',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.orangeAccent,
                    size: 10,
                  )
                ],
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8)),
                  padding: const EdgeInsets.all(8.0),
                  child: const Icon(Icons.person)),
            ],
          ));
  Widget _body(BuildContext context) => ListView(
        children: [
          _jumbotron(context),
          _categories(context),
          _popularNow(),
        ],
      );

  Widget _jumbotron(BuildContext context) => Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      elevation: 0,
      color: Colors.orangeAccent[100],
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 2.0,
                vertical: 24.0,
              ),
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: 'i Più Veloci Nel Consegnare ',
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.black87),
                        children: [
                          TextSpan(
                            text: 'Cibo',
                            style: TextStyle(color: Colors.red[700]),
                          ),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.red[700],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          )),
                      onPressed: () {},
                      child: const Text('Ordina ora'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Image.asset(
            'assets/images/devscooter.png',
            fit: BoxFit.fill,
          )),
        ],
      ));
  Widget _categories(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: Column(
          children: [
            Text('Categorie', style: Theme.of(context).textTheme.headline6),
            ListView(
              children: [Container()],
            ),
          ],
        ),
      );
  Widget _popularNow() => Container();

  Widget _drawer(BuildContext context) => Drawer(
        child: ListView(
          children: [
            _accountHeader(context),
          ],
        ),
      );
  Widget _accountHeader(context) => Stack(
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: Colors.transparent),
            accountName: Text('Stefano Ziliani',
                style: Theme.of(context).textTheme.bodyText1),
            accountEmail: Text('stefano.ziliani@hotmail.it',
                style: Theme.of(context).textTheme.bodyText2),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.red[700],
              child: Text('SZ', style: Theme.of(context).textTheme.headline6),
            ),
          ),
          Positioned(
            right: 4,
            top: 4,
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.brightness_3)),
          ),
        ],
      );

  Widget _bottomNavigationBar() => BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              BottomAppBarItem(
                icon: Icons.dashboard,
                selected: true,
                onTap: () {},
              ),
              BottomAppBarItem(
                icon: Icons.favorite_border,
                onTap: () {},
              ),
              BottomAppBarItem.spacer(),
              BottomAppBarItem(
                icon: Icons.notifications_outlined,
                onTap: () {},
              ),
              BottomAppBarItem(
                icon: Icons.shopping_cart_outlined,
                count: 4,
                onTap: () {},
              ),
            ],
          ),
        ),
      );
}
