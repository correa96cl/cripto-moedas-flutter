import 'package:cripto_moedas_flutter/models/moeda.dart';
import 'package:cripto_moedas_flutter/repositories/moeda_repository.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoedasPage extends StatefulWidget {
  MoedasPage({Key? key}) : super(key: key);

  @override
  _MoedasPageState createState() => _MoedasPageState();
}

class _MoedasPageState extends State<MoedasPage> {
  final tabela = MoedaRepository.tabela;
  NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');
  List<Moeda> seleccionadas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Moedas'),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int moeda) {
          return ListTile(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            leading: (seleccionadas.contains(tabela[moeda]))
                ? CircleAvatar(
                  child: Icon(Icons.check),
                )
                : SizedBox(
                    child: Image.asset(tabela[moeda].icone),
                    width: 40,
                  ),
            title: Text(
              tabela[moeda].nome,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Colors.indigo,
              ),
            ),
            trailing: Text(real.format(tabela[moeda].preco)),
            selected: seleccionadas.contains(tabela[moeda]),
            selectedTileColor: Colors.indigo[50],
            onLongPress: () {
              print('seleccionou');
              setState(() {
                (seleccionadas.contains(tabela[moeda]))
                    ? seleccionadas.remove(tabela[moeda])
                    : seleccionadas.add(tabela[moeda]);
              });
            },
          );
        },
        padding: EdgeInsets.all(16),
        separatorBuilder: (_, __) => Divider(),
        itemCount: tabela.length,
      ),
    );
  }
}
