import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'dart:async';
import 'package:get/get.dart';


class Pin extends StatefulWidget {
  final String? phoneNumber;

  const Pin({
    Key? key,
    this.phoneNumber,
  }) : super(key: key);

  @override
  _PinState createState() =>
      _PinState();
}

class _PinState extends State<Pin> {
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {},
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: <Widget>[
              const SizedBox(height: 150),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  '내 생일 4자리!',
                  style: TextStyle(fontFamily: 'PCP', fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8),
                // child: RichText(
                //   text: TextSpan(
                //       text: "Enter the code sent to ",
                //       children: [
                //         TextSpan(
                //             text: "${widget.phoneNumber}",
                //             style: const TextStyle(
                //                 color: Colors.black,
                //                 fontWeight: FontWeight.bold,
                //                 fontSize: 15)),
                //       ],
                //       style:
                //       const TextStyle(color: Colors.black54, fontSize: 15)),
                //   textAlign: TextAlign.center,
                // ),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: formKey,
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 100),
                    child: PinCodeTextField(
                      appContext: context,
                      pastedTextStyle: TextStyle(
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                      length:4,
                      obscureText: true,
                      obscuringCharacter: '*',
                      obscuringWidget: Container(color: Colors.teal,),
                      blinkWhenObscuring: true,
                      animationType: AnimationType.fade,
                      validator: (v) {
                        if (v!.length < 3) {
                          return null;
                        } else {
                          return null;
                        }
                      },
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.underline,
                        borderWidth: 4,
                        borderRadius: BorderRadius.circular(10),
                        fieldHeight: 50,
                        fieldWidth: 45,
                        inactiveColor: Colors.teal,
                        inactiveFillColor: Colors.white,
                        selectedColor: Colors.tealAccent,
                        selectedFillColor: Colors.white,
                        activeFillColor: Colors.white,
                        activeColor: Colors.teal,
                      ),
                      cursorColor: Colors.teal,
                      animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: true,
                      errorAnimationController: errorController,
                      controller: textEditingController,
                      keyboardType: TextInputType.number,
                      boxShadows: const [
                        // BoxShadow(
                        //   offset: Offset(0, 1),
                        //   color: Colors.black12,
                        //   blurRadius: 10,
                        // )
                      ],
                      onCompleted: (v) {
                        debugPrint("Completed");
                      },
                      // onTap: () {
                      //   print("Pressed");
                      // },
                      onChanged: (value) {
                        debugPrint(value);
                        setState(() {
                          currentText = value;
                        });
                      },
                      beforeTextPaste: (text) {
                        debugPrint("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  hasError ? "*모든 칸을 채워주세요" : "",
                  style: const TextStyle(
                      color: Colors.teal,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "진짜 모르겠어? ",
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () => snackBar("\"내\" 생일은 1월임"),
                    child: const Text(
                      "힌트",
                      style: TextStyle(
                          color: Color(0xFF91D3B3),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                margin:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 200),
                child: ButtonTheme(
                  height: 80,
                  child: TextButton(
                    onPressed: () {
                      formKey.currentState!.validate();
                      // conditions for validating
                      if (currentText.length != 4 || currentText != "0107") {
                        errorController!.add(ErrorAnimationType
                            .shake); // Triggering error shake animation
                        setState(() => hasError = true);
                      } else {
                        setState(
                              () {
                            hasError = false;
                            snackBar("정답!!");
                            Get.toNamed('/Choose');
                          },
                        );
                      }
                    },
                    child: Center(
                        child: Text(
                          "NEXT".toUpperCase(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'PCP'),
                        )),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.teal.shade300,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.teal.shade200,
                          offset: const Offset(1, -2),
                          blurRadius: 5),
                      BoxShadow(
                          color: Colors.teal.shade200,
                          offset: const Offset(-1, 2),
                          blurRadius: 5)
                    ]),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                      child: TextButton(
                        child: const Text("Clear", style: TextStyle(fontFamily: 'PC'),),
                        onPressed: () {
                          textEditingController.clear();
                        },
                      )),
                  // Flexible(
                  //     child: TextButton(
                  //       child: const Text("Set Text"),
                  //       onPressed: () {
                  //         setState(() {
                  //           textEditingController.text = "0107";
                  //         });
                  //       },
                  //     )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}