import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moolaxblock/business_logic/view_models/choose_favorite_state.dart';

import '../../business_logic/view_models/choose_favorite_viewmodel.dart';
import '../../services/service_locator.dart';

class ChooseFavoriteCurrencyScreen extends StatefulWidget {
  @override
  _ChooseFavoriteCurrencyScreenState createState() =>
      _ChooseFavoriteCurrencyScreenState();
}

class _ChooseFavoriteCurrencyScreenState
    extends State<ChooseFavoriteCurrencyScreen> {
  ChooseFavoritesViewModel model = serviceLocator<ChooseFavoritesViewModel>();

  @override
  void initState() {
    model.loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Currencies'),
      ),
      body: buildListView(model),
    );
  }

  Widget buildListView(ChooseFavoritesViewModel viewModel) {
    return BlocProvider(
      create: (context) => model,
      child: BlocConsumer<ChooseFavoritesViewModel, ChooseFavoriteState>(
        listener: (context, state) {},
        builder: (context, state) {
          return ListView.builder(
            itemCount: model.choices.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: SizedBox(
                    width: 60,
                    child: Text(
                      '${model.choices[index].flag}',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  title: Text('${model.choices[index].alphabeticCode}'),
                  subtitle: Text('${model.choices[index].longName}'),
                  trailing: (model.choices[index].isFavorite!)
                      ? Icon(Icons.favorite, color: Colors.red)
                      : Icon(Icons.favorite_border),
                  onTap: () {
                    model.toggleFavoriteStatus(index);
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
