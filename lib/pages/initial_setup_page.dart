import 'package:daysofmotivation/widgets/language_selector.dart';
import 'package:daysofmotivation/widgets/preferences_selector.dart';
import 'package:daysofmotivation/widgets/theme_selector.dart';
import 'package:flutter/material.dart';

class InitialSetupPage extends StatefulWidget {
  const InitialSetupPage({super.key});

  @override
  State<InitialSetupPage> createState() => _InitialSetupPageState();
}

class _InitialSetupPageState extends State<InitialSetupPage> {
  // Controlador para alternar entre os passos
  final PageController _pageController = PageController();

  String selectedOption = 'Option 1';
  bool switchValue = false;

  // Variável para armazenar o estado da página inicial
  int currentPage = 0;

  @override
  void initState() {
    super.initState();

    // Aguarda a construção do PageView antes de acessar o controlador
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        currentPage = _pageController.page?.toInt() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text('Configuração Inicial')),
      body: SafeArea(
        child: Column(
          children: [
            // PageView para as etapas de configuração
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (page) {
                  setState(() {
                    currentPage = page;
                  });
                },
                children: [
                  LanguageSelector(),
                  ThemeSelector(),
                  PreferencesSelector(),
                ],
              ),
            ),
            // Botões de navegação
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // Botão Voltar só aparece se não estiver na primeira página
                  if (currentPage != 0)
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _pageController.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        });
                      },
                      child: const Text('Voltar'),
                    ),
                  // Espaço flexível para empurrar o botão "Continuar" para a direita
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      if (currentPage < 2) {
                        setState(() {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        });
                      } else {
                        // Aqui você pode fazer qualquer ação final
                        print("Configurações finalizadas!");
                      }
                    },
                    child: const Text('Continuar'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
