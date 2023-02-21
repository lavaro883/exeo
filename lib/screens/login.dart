import 'package:exeo/services/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class LoginPage extends ConsumerWidget {
  final GlobalKey<FormState> _loginKey = GlobalKey();
  FocusNode identifiant = FocusNode();
  FocusNode password = FocusNode();
  final passwordController = TextEditingController();
  final identifiantController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Se Connecter",
                style: TextStyle(fontFamily: fontRubikBold, fontSize: 28),
              ),
              const Divider(
                height: 25,
                color: coulWhite,
              ),
              Form(
                key: _loginKey,
                child: AutofillGroup(
                  child: Column(
                    children: [
                      TextFormField(
                        // autofillHints: const [AutofillHints.email],
                        textInputAction: TextInputAction.next,
                        focusNode: identifiant,
                        onFieldSubmitted: (term) {
                          identifiant.unfocus();
                          FocusScope.of(context).requestFocus(password);
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Le champ ne doit pas être vide';
                          }
                          return null;
                        },
                        controller: identifiantController,
                        style: const TextStyle(
                          fontFamily: fontHindMaduraiMedium,
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1,
                              color: coulGrey,
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          hintText: "PlaceHolder",
                          hintStyle: const TextStyle(
                            fontFamily: fontHindMaduraiMedium,
                            fontSize: 16,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1,
                              color: coulGrey,
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          labelStyle: const TextStyle(
                            color: coulGrey,
                            fontFamily: fontHindMaduraiMedium,
                            fontSize: 16,
                          ),
                          labelText: "Votre identifiant",
                        ),
                      ),
                      const Divider(color: coulWhite),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            // autofillHints: const [AutofillHints.email],
                            textInputAction: TextInputAction.next,
                            focusNode: password,
                            onFieldSubmitted: (term) {
                              identifiant.unfocus();
                              FocusScope.of(context).requestFocus(password);
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Le champ ne doit pas être vide';
                              }
                              return null;
                            },
                            controller: passwordController,
                            style: const TextStyle(
                              fontFamily: fontHindMaduraiMedium,
                              fontSize: 16,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1,
                                  color: coulGrey,
                                ),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              hintText: "PlaceHolder",
                              hintStyle: const TextStyle(
                                fontFamily: fontHindMaduraiMedium,
                                fontSize: 16,
                              ),
                              suffixIcon: const Icon(
                                FontAwesome5.eye,
                                color: coulBlack,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1,
                                  color: coulGrey,
                                ),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              labelStyle: const TextStyle(
                                color: coulGrey,
                                fontFamily: fontHindMaduraiMedium,
                                fontSize: 16,
                              ),
                              labelText: "Votre mot de passe",
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Mot de passe oublié ?",
                              style: TextStyle(
                                  fontFamily: fontHindMaduraiRegular,
                                  fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color?>(coulCiel),
                          minimumSize: MaterialStateProperty.all<Size?>(
                            const Size(280.0, 40.0),
                          ),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry?>(
                            const EdgeInsets.fromLTRB(2.25, 11.25, 2.25, 11.25),
                          ),
                        ),
                        child: const Text(
                          "Connexion",
                          style: TextStyle(
                            color: coulBlack,
                            fontFamily: fontHindMaduraiMedium,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Vous n'avez pas de compte ?",
                            style: TextStyle(
                              fontFamily: fontHindMaduraiRegular,
                              fontSize: 12,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Inscrivez-vous",
                              style: TextStyle(
                                fontFamily: fontHindMaduraiRegular,
                                fontSize: 12,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
