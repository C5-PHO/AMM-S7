import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FAQ',
      home: Scaffold(
        appBar: AppBar(title: const Text('FAQ')),
        body: ListView.builder(
          itemCount: faqList.length,
          itemBuilder: (context, index) {
            final item = faqList[index];

            return ExpansionTile(
              title: Text(item.question),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    item.answer,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class FAQItem {
  final String question;
  final String answer;

  const FAQItem({required this.question, required this.answer});
}

const List<FAQItem> faqList = [
  FAQItem(
    question: 'Como puedo cambiar mi contrasena?',
    answer:
        'Para cambiar tu contrasena, ve a la seccion de configuracion y busca la opcion "Cambiar contrasena".',
  ),
  FAQItem(
    question: 'Cuales son los metodos de pago aceptados?',
    answer:
        'Aceptamos tarjetas de credito, transferencias bancarias y pagos en efectivo en nuestras sucursales.',
  ),
  FAQItem(
    question: 'Como puedo contactar al servicio al cliente?',
    answer:
        'Puedes contactar al servicio al cliente llamando al numero XXX-XXX-XXXX o enviando un correo electronico a info@ejemplo.com.',
  ),
  FAQItem(
    question: 'Como puedo cambiar mi contrasena?',
    answer:
        'Para cambiar tu contrasena, ve a la seccion de configuracion y busca la opcion "Cambiar contrasena".',
  ),
  FAQItem(
    question: 'Cuales son los metodos de pago aceptados?',
    answer:
        'Aceptamos tarjetas de credito, transferencias bancarias y pagos en efectivo en nuestras sucursales.',
  ),
  FAQItem(
    question: 'Como puedo contactar al servicio al cliente?',
    answer:
        'Puedes contactar al servicio al cliente llamando al numero XXX-XXX-XXXX o enviando un correo electronico a info@ejemplo.com.',
  ),
  FAQItem(
    question: 'Como puedo cambiar mi contrasena?',
    answer:
        'Para cambiar tu contrasena, ve a la seccion de configuracion y busca la opcion "Cambiar contrasena".',
  ),
  FAQItem(
    question: 'Cuales son los metodos de pago aceptados?',
    answer:
        'Aceptamos tarjetas de credito, transferencias bancarias y pagos en efectivo en nuestras sucursales.',
  ),
  FAQItem(
    question: 'Como puedo contactar al servicio al cliente?',
    answer:
        'Puedes contactar al servicio al cliente llamando al numero XXX-XXX-XXXX o enviando un correo electronico a info@ejemplo.com.',
  ),
];
