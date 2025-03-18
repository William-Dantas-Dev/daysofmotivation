import 'package:flutter_riverpod/flutter_riverpod.dart';

class Category {
  final String id;
  final String name;
  final String parentCategory;
  final String imageUrl;
  bool isSelected;

  Category({
    required this.id,
    required this.name,
    required this.parentCategory,
    required this.imageUrl,
    this.isSelected = false,
  });
}

class PreferencesNotifier extends StateNotifier<List<Category>> {
  PreferencesNotifier() : super(_initialCategories);

  static List<Category> _initialCategories = [
    Category(
      id: '1',
      name: 'Autoajuda',
      parentCategory: 'Motivação Pessoal',
      imageUrl: 'https://example.com/image1.jpg',
    ),
    Category(
      id: '2',
      name: 'Histórias Inspiradoras',
      parentCategory: 'Motivação Pessoal',
      imageUrl: 'https://example.com/image2.jpg',
    ),
    Category(
      id: '3',
      name: 'Disciplina',
      parentCategory: 'Sucesso',
      imageUrl: 'https://example.com/image3.jpg',
    ),
    Category(
      id: '4',
      name: 'Trabalho em Equipe',
      parentCategory: 'Trabalho',
      imageUrl: 'https://example.com/image4.jpg',
    ),
    Category(
      id: '5',
      name: 'Hábito Saudável',
      parentCategory: 'Vida',
      imageUrl: 'https://example.com/image5.jpg',
    ),
    Category(
      id: '6',
      name: 'Persistência',
      parentCategory: 'Resiliência',
      imageUrl: 'https://example.com/image6.jpg',
    ),
  ];

  // Alterna a seleção de uma categoria
  void toggleCategory(Category category) {
    state = [
      for (final cat in state)
        if (cat.id == category.id)
          Category(
            id: cat.id,
            name: cat.name,
            parentCategory: cat.parentCategory,
            isSelected: !cat.isSelected,
            imageUrl: cat.imageUrl,
          )
        else
          cat,
    ];
  }
}

final preferencesProvider =
    StateNotifierProvider<PreferencesNotifier, List<Category>>(
      (ref) => PreferencesNotifier(),
    );
