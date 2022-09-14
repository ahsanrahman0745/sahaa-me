import 'package:flutter/material.dart';
class CategoryFilter extends StatefulWidget {
  const CategoryFilter({Key? key}) : super(key: key);

  @override
  State<CategoryFilter> createState() => _CategoryFilterState();
}

class _CategoryFilterState extends State<CategoryFilter> {
  bool _expanded = true;
  @override
  Widget build(BuildContext context) {
    return  Column(
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
                      'Category',
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
                      InkWell(
                        hoverColor:Colors.white,
                        onTap: () {},
                        child:
                        const Text(
                          'Packaging & Shipping',
                          style: TextStyle(
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        hoverColor:Colors.white,
                        onTap: () {},
                        child: const Text(
                          'Travel & Tourism',
                          style: TextStyle(
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        hoverColor:Colors.white,
                        onTap: () {},
                        child: const Text(
                          'Hotel, Motel & Extended Stay',
                          style: TextStyle(
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        hoverColor:Colors.white,
                        onTap: () {},
                        child: const Text(
                          'Moving & Storage',
                          style: TextStyle(
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(

                        hoverColor:Colors.white,
                        onTap: () {},
                        child: const Text(
                          'Transportation',
                          style: TextStyle(
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                isExpanded: _expanded,
                canTapOnHeader: true,
              ),
            ],
            // dividerColor: Colors.grey,
            expansionCallback:
                (panelIndex, isExpanded) {
              _expanded = !_expanded;
              setState(() {});
            },
          ),
        ),
      ],
    );
  }
}
