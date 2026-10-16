import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_sayurmayur/main.dart';
import 'package:flutter_application_sayurmayur/home.dart';

void main() {
  testWidgets('Sayur Mayur App smoke test', (WidgetTester tester) async {
    // Build app dan trigger frame.
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // Verifikasi app berhasil tampil dan halaman Home terbuka.
    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.byType(Home), findsOneWidget);
  });
}