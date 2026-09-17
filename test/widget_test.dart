import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:meu_catalogo_jogos/main.dart';
import 'package:meu_catalogo_jogos/view_models/catalogo_view_model.dart';

void main() {
  testWidgets('Exibe o catalogo e alterna favoritos', (tester) async {
    final viewModel = CatalogoViewModel();
    await tester.pumpWidget(
      ChangeNotifierProvider.value(value: viewModel, child: const MyApp()),
    );
    await tester.pumpAndSettle();

    expect(find.text('Coral Island'), findsOneWidget);
    expect(tester.takeException(), isNull);
    expect(viewModel.jogos.first.favorito, isFalse);

    await tester.tap(find.byIcon(Icons.favorite_border).first);
    await tester.pump();
    expect(viewModel.jogos.first.favorito, isTrue);
    expect(find.byIcon(Icons.favorite), findsOneWidget);

    await tester.tap(find.byIcon(Icons.favorite).first);
    await tester.pump();
    expect(viewModel.jogos.first.favorito, isFalse);
    expect(tester.takeException(), isNull);
  });
}
