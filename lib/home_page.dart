import 'dart:async';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _searchQuery = TextEditingController();

  Timer? _debounce;

  String searchText = "";

  final List<String> _data = [];

  List<String> _filteredData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Debounce Searching"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: _searchQuery,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                ),
                hintText: 'Search here',
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_filteredData[index].toString()),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: _filteredData.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (searchText != _searchQuery.text) {
        _filteredData = _data;
        setState(() {
          _filteredData = _data
              .where(
                (item) => item.toString().toLowerCase().contains(
                      _searchQuery.text.toString().toLowerCase(),
                    ),
              )
              .toList();

          print(_filteredData.length);
        });
      }
      searchText = _searchQuery.text;
    });
  }

  @override
  void initState() {
    super.initState();
    _searchQuery.addListener(_onSearchChanged);

    _data.add("Afghanistan");
    _data.add("Albania");
    _data.add("Algeria");
    _data.add("Andorra");
    _data.add("Angola");
    _data.add("Antigua and Barbuda");
    _data.add("Argentina");
    _data.add("Armenia");
    _data.add("Australia");
    _data.add("Austria");
    _data.add("Azerbaijan");
    _data.add("Bahamas");
    _data.add("Bahrain");
    _data.add("Bangladesh");
    _data.add("Barbados");
    _data.add("Belarus");
    _data.add("Belgium");
    _data.add("Belize");
    _data.add("Benin");
    _data.add("Bhutan");
    _data.add("Bolivia");
    _data.add("Bosnia and Herzegovina");
    _data.add("Botswana");
    _data.add("Brazil");
    _data.add("Brunei");
    _data.add("Bulgaria");
    _data.add("Burkina Faso");
    _data.add("Burundi");
    _data.add("Côte d'Ivoire");
    _data.add("Cabo Verde");
    _data.add("Cambodia");
    _data.add("Cameroon");
    _data.add("Canada");
    _data.add("Central African Republic");
    _data.add("Chad");
    _data.add("Chile");
    _data.add("China");
    _data.add("Colombia");
    _data.add("Comoros");
    _data.add("Congo (Congo-Brazzaville)");
    _data.add("Costa Rica");
    _data.add("Croatia");
    _data.add("Cuba");
    _data.add("Cyprus");
    _data.add("Czechia (Czech Republic)");
    _data.add("Democratic Republic of the Congo");
    _data.add("Denmark");
    _data.add("Djibouti");
    _data.add("Dominica");
    _data.add("Dominican Republic");
    _data.add("Ecuador");
    _data.add("Egypt");
    _data.add("El Salvador");
    _data.add("Equatorial Guinea");
    _data.add("Eritrea");
    _data.add("Estonia");
    _data.add("Eswatini (fmr. Swaziland)");
    _data.add("Ethiopia");
    _data.add("Fiji");
    _data.add("Finland");
    _data.add("France");
    _data.add("Gabon");
    _data.add("Gambia");
    _data.add("Georgia");
    _data.add("Germany");
    _data.add("Ghana");
    _data.add("Greece");
    _data.add("Grenada");
    _data.add("Guatemala");
    _data.add("Guinea");
    _data.add("Guinea-Bissau");
    _data.add("Guyana");
    _data.add("Haiti");
    _data.add("Holy See");
    _data.add("Honduras");
    _data.add("Hungary");
    _data.add("Iceland");
    _data.add("India");
    _data.add("Indonesia");
    _data.add("Iran");
    _data.add("Iraq");
    _data.add("Ireland");
    _data.add("Israel");
    _data.add("Italy");
    _data.add("Jamaica");
    _data.add("Japan");
    _data.add("Jordan");
    _data.add("Kazakhstan");
    _data.add("Kenya");
    _data.add("Kiribati");
    _data.add("Kuwait");
    _data.add("Kyrgyzstan");
    _data.add("Laos");
    _data.add("Latvia");
    _data.add("Lebanon");
    _data.add("Lesotho");
    _data.add("Liberia");
    _data.add("Libya");
    _data.add("Liechtenstein");
    _data.add("Lithuania");
    _data.add("Luxembourg");
    _data.add("Madagascar");
    _data.add("Malawi");
    _data.add("Malaysia");
    _data.add("Maldives");
    _data.add("Mali");
    _data.add("Malta");
    _data.add("Marshall Islands");
    _data.add("Mauritania");
    _data.add("Mauritius");
    _data.add("Mexico");
    _data.add("Micronesia");
    _data.add("Moldova");
    _data.add("Monaco");
    _data.add("Mongolia");
    _data.add("Montenegro");
    _data.add("Morocco");
    _data.add("Mozambique");
    _data.add("Myanmar (formerly Burma)");
    _data.add("Namibia");
    _data.add("Nauru");
    _data.add("Nepal");
    _data.add("Netherlands");
    _data.add("New Zealand");
    _data.add("Nicaragua");
    _data.add("Niger");
    _data.add("Nigeria");
    _data.add("North Korea");
    _data.add("North Macedonia");
    _data.add("Norway");
    _data.add("Oman");
    _data.add("Pakistan");
    _data.add("Palau");
    _data.add("Palestine State");
    _data.add("Panama");
    _data.add("Papua New Guinea");
    _data.add("Paraguay");
    _data.add("Peru");
    _data.add("Philippines");
    _data.add("Poland");
    _data.add("Portugal");
    _data.add("Qatar");
    _data.add("Romania");
    _data.add("Russia");
    _data.add("Rwanda");
    _data.add("Saint Kitts and Nevis");
    _data.add("Saint Lucia");
    _data.add("Saint Vincent and the Grenadines");
    _data.add("Samoa");
    _data.add("San Marino");
    _data.add("Sao Tome and Principe");
    _data.add("Saudi Arabia");
    _data.add("Senegal");
    _data.add("Serbia");
    _data.add("Seychelles");
    _data.add("Sierra Leone");
    _data.add("Singapore");
    _data.add("Slovakia");
    _data.add("Slovenia");
    _data.add("Solomon Islands");
    _data.add("Somalia");
    _data.add("South Africa");
    _data.add("South Korea");
    _data.add("South Sudan");
    _data.add("Spain");
    _data.add("Sri Lanka");
    _data.add("Sudan");
    _data.add("Suriname");
    _data.add("Sweden");
    _data.add("Switzerland");
    _data.add("Syria");
    _data.add("Tajikistan");
    _data.add("Tanzania");
    _data.add("Thailand");
    _data.add("Timor-Leste");
    _data.add("Togo");
    _data.add("Tonga");
    _data.add("Trinidad and Tobago");
    _data.add("Tunisia");
    _data.add("Turkey");
    _data.add("Turkmenistan");
    _data.add("Tuvalu");
    _data.add("Uganda");
    _data.add("Ukraine");
    _data.add("United Arab Emirates");
    _data.add("United Kingdom");
    _data.add("United States of America");
    _data.add("Uruguay");
    _data.add("Uzbekistan");
    _data.add("Vanuatu");
    _data.add("Venezuela");
    _data.add("Vietnam");
    _data.add("Yemen");
    _data.add("Zambia");
    _data.add("Zimbabwe");

    _filteredData = _data;
  }

  @override
  void dispose() {
    _searchQuery.removeListener(_onSearchChanged);
    _searchQuery.dispose();
    _debounce?.cancel();
    super.dispose();
  }
}
