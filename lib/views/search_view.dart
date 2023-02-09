import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                title: const Text('Search and Filter'),
                floating: true,
                pinned: true,
                snap: false,
                centerTitle: true,
                bottom: AppBar(
                  title: Container(
                    width: double.infinity,
                    height: 40,
                    color: Colors.white,
                    child: const Center(
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            labelText: "O que está buscando?",
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: Icon(Icons.close)),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  const SizedBox(
                    height: 5000,
                    child: Center(
                      child: Text(
                        'This is an awesome shopping platform',
                      ),
                    ),
                  ),
                  // Container(
                  //   height: 500,
                  //   color: Colors.pink,
                  // ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
