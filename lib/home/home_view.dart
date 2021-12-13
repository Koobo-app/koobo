import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:koobo/home/home_viewmodel.dart';
import 'package:koobo/widget/floating_button_view.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      disposeViewModel: false,
      initialiseSpecialViewModelsOnce: true,
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          floatingActionButton: const FloatingButton(),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    GestureDetector(
                        child: const CircleAvatar(
                      backgroundColor: Color.fromRGBO(196, 196, 196, 1),
                    )),
                    const SizedBox(width: 10),
                    Text(model.userName),
                    const Spacer(),
                    Text(model.addMoney),
                    const SizedBox(width: 10),
                    Container(
                      height: 21.21,
                      width: 21.21,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(35, 246, 0, 0.6),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 13.5,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 99,
                width: 314,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(model.availableBalance),
                    ),
                    Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: IconButton(
                            icon: const Icon(Icons.visibility,
                                color: Color.fromRGBO(0, 75, 221, 0.6)),
                            onPressed: () {},
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        model.amount,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: 56,
                      width: 86,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          )),
                      child: IconButton(
                        icon: const Icon(
                          Icons.cached_outlined,
                          color: Color.fromRGBO(0, 75, 221, 0.8),
                          size: 20,
                        ),
                        onPressed: () {},
                      )),
                  Container(
                      height: 56,
                      width: 86,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          )),
                      child: IconButton(
                        icon: const Icon(
                          Icons.receipt_outlined,
                          color: Color.fromRGBO(250, 11, 54, 1),
                          size: 20,
                        ),
                        onPressed: () {},
                      )),
                  Container(
                      height: 56,
                      width: 86,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          )),
                      child: IconButton(
                        icon: const Icon(
                          Icons.phone_iphone_outlined,
                          color: Color.fromRGBO(203, 221, 0, 1),
                          size: 20,
                        ),
                        onPressed: () {},
                      )),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
