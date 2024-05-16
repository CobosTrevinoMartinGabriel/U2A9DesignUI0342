import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:renting_app/data/products.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key, required this.product});

  final Product product;

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.name),
        titleTextStyle:
            theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton.filledTonal(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
              style: IconButton.styleFrom(foregroundColor: Color(0xffffa907)),
            ),
          ),
        ],
        backgroundColor: Colors.amberAccent,
      ),
      backgroundColor: Color(0xff1c72d5),
      body: ListView(
        padding: const EdgeInsets.only(top: 15),
        children: [
          SizedBox(
            height: 250,
            child: PageView.builder(
              itemCount: 3,
              onPageChanged: (value) {
                setState(() {
                  activeIndex = value;
                });
              },
              itemBuilder: (context, index) {
                return Container(
                  height: 250,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.all(16),
                  width: double.maxFinite,
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    color: Color(0xffffe796),
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(widget.product.image),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // CONTAINER FOR CHIPS

                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 8),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text(
                          "Disponible",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Icon(
                        IconlyBold.star,
                        size: 18,
                        color: theme.colorScheme.primary,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "4.9",
                        style: TextStyle(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: 3,
              effect: WormEffect(
                  dotHeight: 10, dotWidth: 10, dotColor: Colors.grey.shade300),
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://raw.githubusercontent.com/CobosTrevinoMartinGabriel/Img_ios/main/eTank.png"),
            ),
            title: const Text("Capcom"),
            subtitle: Row(
              children: [
                ...List.generate(
                  4,
                  (index) => Icon(
                    IconlyBold.star,
                    size: 16,
                    color: Colors.yellow,
                  ),
                ),
                const Icon(IconlyBold.star, size: 16),
                const SizedBox(width: 4),
                const Text("4.7")
              ],
            ),
            trailing: SizedBox(
              width: 35,
              height: 35,
              child: IconButton.filledTonal(
                onPressed: () {},
                icon: const Icon(Icons.chevron_right),
                style: IconButton.styleFrom(
                    foregroundColor: theme.colorScheme.primary),
                padding: EdgeInsets.zero,
              ),
            ),
            titleTextStyle: theme.textTheme.bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: ListView(shrinkWrap: false, children: [
                        Container(
                          width: 100,
                          alignment: Alignment.centerLeft,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 100,
                                  height: 125,
                                  decoration: BoxDecoration(
                                    color: Color(0xffff5b5b),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Nintendo Switch",
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.titleMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 2),
                                        child: Text(
                                          "\$25.00",
                                          style: theme.textTheme.titleMedium
                                              ?.copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 125,
                                  decoration: BoxDecoration(
                                    color: Color(0xff29cd00),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        textAlign: TextAlign.center,
                                        "Xbox One/Series",
                                        style: theme.textTheme.titleMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 2),
                                        child: Text(
                                          "\$20.00",
                                          style: theme.textTheme.titleMedium
                                              ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 125,
                                  decoration: BoxDecoration(
                                    color: Color(0xff0a1682),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        textAlign: TextAlign.center,
                                        "Playstation 4",
                                        style: theme.textTheme.titleMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 2),
                                        child: Text(
                                          "\$30.00",
                                          style: theme.textTheme.titleMedium
                                              ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ), // Aquí puedes añadir cualqui],)
                      ]),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                ListTile(
                  tileColor: theme.colorScheme.primaryContainer,
                  leading: const Icon(IconlyLight.calendar),
                  iconColor: theme.colorScheme.primary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  titleTextStyle: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.bold),
                  title: const Text("0 dias"),
                  trailing: Text(
                    "Ya disponible",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.maxFinite,
                  height: 50,
                  child: FilledButton(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        textStyle: theme.textTheme.bodyLarge),
                    child: const Text("Comprar"),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
