import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../controller/components/bloc/product_cubit/product_cubit.dart';
import '../../../controller/components/bloc/product_cubit/product_state.dart';
import '../../../controller/components/utils/media_size.dart';
import '../../../controller/repositories/auth_api_helper.dart';
import '../widgets/common_page_body.dart';
import 'auth_navigator.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/homePage';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ProductCubit>().getProduct();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(child: SizedBox()),
                  IconButton(
                    icon: const Icon(Icons.logout),
                    onPressed: () => _showLogoutDialog(context),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: commonBody(
        child: SizedBox(
          height: mediaHeight,
          width: mediaWidth,
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<ProductCubit, ProductState>(
                  builder: (BuildContext context, state) {
                    if (state is ProductLoaded) {
                      return ListView.separated(
                        itemCount: state.productListModel.data.length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(border: Border.all()),
                            child: Column(
                              children: [
                                Text(state.productListModel.data[index].name!),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          height: fixedRatio(10),
                        ),
                      );
                    } else if (state is ProductError) {
                      return Center(
                        child: Text(state.error.toString()),
                      );
                    } else {
                      return const Text('Loading');
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    AuthApiHelper apiHelper = AuthApiHelper();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Logout"),
          content: const Text("Are you sure you want to log out?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("No"),
            ),
            TextButton(
              onPressed: () async {
                await apiHelper.logOutPostResponse().then(
                  (value) {
                    Navigator.of(context).pop();

                    if (value) {
                      Navigator.of(context)
                          .pushReplacementNamed(AuthNavigator.routeName);
                    }
                  },
                );
              },
              child: const Text("Yes"),
            ),
          ],
        );
      },
    );
  }
}
