import 'package:flutter/material.dart';
import 'package:uas_epotek/array.dart';
import 'gridView.dart';
import 'item.dart';

class filteredObat extends StatefulWidget {
  filteredObat({Key? key}) : super(key: key);

  @override
  State<filteredObat> createState() => _filteredObatState();
}

class _filteredObatState extends State<filteredObat> {
  TextEditingController editingController = TextEditingController();
  List<Item> items = [
    Item(
        name: 'Paracetamol',
        price: '10.000',
        image:
            'https://static.honestdocs.id/300x300/system/image_attachments/images/000/011/744/original/paracetamol-if-500mg-tab-str-1.jpg',
        kategori: 'Pusing',
        deskripsi:
            'Paracetamol adalah obat untuk meredakan demam dan nyeri, termasuk nyeri haid atau sakit gigi.' +
                ' Paracetamol atau acetaminophen tersedia dalam bentuk tablet, sirop, tetes, suppositoria, dan infus.'
        ),
    Item(
        name: 'Poldanmig',
        price: '10.000',
        image:
            'https://images.k24klik.com/product/0104n0012.jpg',
        kategori: 'Pusing',
        deskripsi:
            'PoldanMIG Kaplet adalah obat yang diproduksi oleh Caprifarmindo Labs dan didaftarkan oleh Sanbe Farma. ' +
                ' Obat ini termasuk golongan obat bebas yang mengandung Paracetamol, asam asetilsalisilat, kafein yang diindikasikan untuk meredakan sakit kepala sedang dan migrain.'
        ),
    Item(
        name: 'Promag',
        price: '5.000',
        image:
            'https://images.tokopedia.net/img/cache/700/VqbcmM/2021/9/22/ae80db2d-7720-4a30-8029-786fea4e495a.jpg',
        kategori: 'Sakit Perut',
        deskripsi:
            'Promag bermanfaat untuk mengatasi keluhan sakit maag, penyakit asam lambung naik, atau perut kembung.' +
                ' Promag dijual secara bebas dan tersedia dalam bentuk tablet kunyah serta suspensi cair.'
        ),
    Item(
        name: 'Famocit',
        price: '29.000',
        image:
            'https://img.my-best.id/press_component/item_part_images/654262a679f258a8641c331147569d19.jpg?ixlib=rails-4.2.0&q=70&lossless=0&w=640&h=640&fit=clip',
        kategori: 'Sakit Perut',
        deskripsi:
            'Obat ini mengandung famotidine yang terkenal sebagai obat H2 blocker receptor mujarab. ' +
                ' Famotidine bekerja dengan mengurangi asam lambung sehingga tidak menyebabkan heartburn, reflux, atau kembung.'
        ),
    Item(
        name: 'Ocuson',
        price: '15.000',
        image: 'https://s4.bukalapak.com/img/92288073001/large/data.png',
        kategori: 'Pilek',
        deskripsi:
            'Ocuson adalah obat kombinasi kortikosteroid Betamethason dan antihistamin Dexchlorpheniramin. Obat ini memiliki efek antiinflamasi, antialergi, dan antihistamin.' +
                ' Ocuson digunakan untuk mengobati kasus-kasus alergi dan inflamasi yang membutuhkan terapi dengan kortikosteroid.'
        ),
    Item(
        name: 'Panandol Hijau',
        price: '15.000',
        image: 'https://www.k24klik.com/blog/wp-content/uploads/2022/01/panadol-hijau-cold-dan-flu-300x300.png',
        kategori: 'Pilek',
        deskripsi:
            'Obat flu yang manjur salah satunya adalah Panadol Cold dan Flu yang sering disebut Panadol Hijau.' +
                ' Panadol hijau merupakan obat untuk meringankan gejala flu seperti demam, sakit kepala, hidung tersumbat dan bersin-bersin yang disertai batuk kering. Panadol Hijau merupakan obat yang aman di lambung dan tidak menyebabkan kantuk. '
        ),
    Item(
        name: 'Ultraflu',
        price: '4.500',
        image: 'https://s0.bukalapak.com/img/50240581542/large/data.jpeg',
        kategori: 'Flu',
        deskripsi:
            'Ultraflu merupakan obat yang digunakan untuk meringankan gejala flu seperti demam, sakit kepala, hidung tersumbat dan bersin-bersin.' +
                ' Meringankan gejala flu seperti demam, sakit kepala, hidung tersumbat dan bersin-bersin.'
        ),
    Item(
        name: 'Tolak Angin Flu',
        price: '4.000',
        image: 'https://www.k24klik.com/blog/wp-content/uploads/2022/01/Tolak-angin-flu-sidomuncul-300x300.png',
        kategori: 'Flu',
        deskripsi:
            'Saat Anda sedang mengalami flu berat dan hidung mampet tetapi lebih memilih obat herbal alami. Maka SidoMuncul Tolak Angin Flu bisa Anda pilih.' +
                ' Kandungan alami seperti kapulaga, adas, kayu ules, pala, pegagan, jahe serta kandungan herbal lainnya mampu mengatasi flu serta mengobati badan yang pegal.'
        ),
    Item(
        name: 'Antangin',
        price: '5.000',
        image: 'https://s4.bukalapak.com/img/4549139273/large/2018_10_31T01_24_58_07_00.jpg',
        kategori: 'Mual',
        deskripsi:
            'Antangin adalah produk herbal yang bermanfaat untuk mengatasi masuk angin, mual, perut kembung, badan meriang, serta kelelahan.' +
                ' Antangin dijual bebas di apotek atau supermarket dalam bentuk sirop, tablet, dan permen. '
        ),
    Item(
        name: 'Polysilane',
        price: '9.000',
        image: 'https://images.k24klik.com/product/large/apotek_online_k24klik_20200922020702359225_POLYSILANE.jpg',
        kategori: 'Mual',
        deskripsi:
            'Polysilane bermanfaat untuk mengatasi sakit maag dan perut kembung. Obat ini dapat dikonsumsi oleh orang dewasa dan anak-anak berusia 6 tahun ke atas.' +
                ' Polysilane memiliki kandungan utama alumunium hidroksida dan magnesium hidroksida. Kedua bahan aktif ini bekerja sebagai antasida, yaitu untuk menetralisir asam lambung.'
        ),
    Item(
        name: 'Komix OBH',
        price: '2.000',
        image: 'https://cdn.hellosehat.com/wp-content/uploads/2022/02/21874cd9-komix-obh-400x400.jpg',
        kategori: 'Batuk',
        deskripsi:
            'Batuk berdahak sering bersamaan dengan gejala pilek seperti hidung tersumbat dan bersin-bersin. ' +
                'Komix OBH mampu mengatasi kedua masalah tersebut karena dapat menghangatkan tenggorokan.'
        ),
    Item(
        name: 'Konidin OBH',
        price: '5.000',
        image: 'https://cdn.hellosehat.com/wp-content/uploads/2022/02/5fe677da-konidin-obh-400x400.jpg',
        kategori: 'Batuk',
        deskripsi:
            'Konidin OBH ini mengandung ammonium chloride yang berfungsi sebagai ekspektoran. Kandungan ini dapat meningkatkan volume dan mengurangi kekentalan lendir di trakea dan bronkus, organ pernapasan bagian bawah. ' +
                'Pengurangan kekentalan lendir tersebut akan meningkatkan reflek batuk dan mempermudah pengeluaran dahak.'
        ),
  ];

  List<Item> dummyItemList = [
    Item(
        name: 'Paracetamol',
        price: '10.000',
        image:
            'https://static.honestdocs.id/300x300/system/image_attachments/images/000/011/744/original/paracetamol-if-500mg-tab-str-1.jpg',
        kategori: 'Pusing',
        deskripsi:
            'Paracetamol adalah obat untuk meredakan demam dan nyeri, termasuk nyeri haid atau sakit gigi.' +
                ' Paracetamol atau acetaminophen tersedia dalam bentuk tablet, sirop, tetes, suppositoria, dan infus.'
        ),
    Item(
        name: 'Poldanmig',
        price: '10.000',
        image:
            'https://images.k24klik.com/product/0104n0012.jpg',
        kategori: 'Pusing',
        deskripsi:
            'PoldanMIG Kaplet adalah obat yang diproduksi oleh Caprifarmindo Labs dan didaftarkan oleh Sanbe Farma. ' +
                ' Obat ini termasuk golongan obat bebas yang mengandung Paracetamol, asam asetilsalisilat, kafein yang diindikasikan untuk meredakan sakit kepala sedang dan migrain.'
        ),
    Item(
        name: 'Promag',
        price: '5.000',
        image:
            'https://images.tokopedia.net/img/cache/700/VqbcmM/2021/9/22/ae80db2d-7720-4a30-8029-786fea4e495a.jpg',
        kategori: 'Sakit Perut',
        deskripsi:
            'Promag bermanfaat untuk mengatasi keluhan sakit maag, penyakit asam lambung naik, atau perut kembung.' +
                ' Promag dijual secara bebas dan tersedia dalam bentuk tablet kunyah serta suspensi cair.'
        ),
    Item(
        name: 'Famocit',
        price: '29.000',
        image:
            'https://img.my-best.id/press_component/item_part_images/654262a679f258a8641c331147569d19.jpg?ixlib=rails-4.2.0&q=70&lossless=0&w=640&h=640&fit=clip',
        kategori: 'Sakit Perut',
        deskripsi:
            'Obat ini mengandung famotidine yang terkenal sebagai obat H2 blocker receptor mujarab. ' +
                ' Famotidine bekerja dengan mengurangi asam lambung sehingga tidak menyebabkan heartburn, reflux, atau kembung.'
        ),
    Item(
        name: 'Ocuson',
        price: '15.000',
        image: 'https://s4.bukalapak.com/img/92288073001/large/data.png',
        kategori: 'Pilek',
        deskripsi:
            'Ocuson adalah obat kombinasi kortikosteroid Betamethason dan antihistamin Dexchlorpheniramin. Obat ini memiliki efek antiinflamasi, antialergi, dan antihistamin.' +
                ' Ocuson digunakan untuk mengobati kasus-kasus alergi dan inflamasi yang membutuhkan terapi dengan kortikosteroid.'
        ),
    Item(
        name: 'Panandol Hijau',
        price: '15.000',
        image: 'https://www.k24klik.com/blog/wp-content/uploads/2022/01/panadol-hijau-cold-dan-flu-300x300.png',
        kategori: 'Pilek',
        deskripsi:
            'Obat flu yang manjur salah satunya adalah Panadol Cold dan Flu yang sering disebut Panadol Hijau.' +
                ' Panadol hijau merupakan obat untuk meringankan gejala flu seperti demam, sakit kepala, hidung tersumbat dan bersin-bersin yang disertai batuk kering. Panadol Hijau merupakan obat yang aman di lambung dan tidak menyebabkan kantuk. '
        ),
    Item(
        name: 'Ultraflu',
        price: '4.500',
        image: 'https://s0.bukalapak.com/img/50240581542/large/data.jpeg',
        kategori: 'Flu',
        deskripsi:
            'Ultraflu merupakan obat yang digunakan untuk meringankan gejala flu seperti demam, sakit kepala, hidung tersumbat dan bersin-bersin.' +
                ' Meringankan gejala flu seperti demam, sakit kepala, hidung tersumbat dan bersin-bersin.'
        ),
    Item(
        name: 'Tolak Angin Flu',
        price: '4.000',
        image: 'https://www.k24klik.com/blog/wp-content/uploads/2022/01/Tolak-angin-flu-sidomuncul-300x300.png',
        kategori: 'Flu',
        deskripsi:
            'Saat Anda sedang mengalami flu berat dan hidung mampet tetapi lebih memilih obat herbal alami. Maka SidoMuncul Tolak Angin Flu bisa Anda pilih.' +
                ' Kandungan alami seperti kapulaga, adas, kayu ules, pala, pegagan, jahe serta kandungan herbal lainnya mampu mengatasi flu serta mengobati badan yang pegal.'
        ),
    Item(
        name: 'Antangin',
        price: '5.000',
        image: 'https://s4.bukalapak.com/img/4549139273/large/2018_10_31T01_24_58_07_00.jpg',
        kategori: 'Mual',
        deskripsi:
            'Antangin adalah produk herbal yang bermanfaat untuk mengatasi masuk angin, mual, perut kembung, badan meriang, serta kelelahan.' +
                ' Antangin dijual bebas di apotek atau supermarket dalam bentuk sirop, tablet, dan permen. '
        ),
    Item(
        name: 'Polysilane',
        price: '9.000',
        image: 'https://images.k24klik.com/product/large/apotek_online_k24klik_20200922020702359225_POLYSILANE.jpg',
        kategori: 'Mual',
        deskripsi:
            'Polysilane bermanfaat untuk mengatasi sakit maag dan perut kembung. Obat ini dapat dikonsumsi oleh orang dewasa dan anak-anak berusia 6 tahun ke atas.' +
                ' Polysilane memiliki kandungan utama alumunium hidroksida dan magnesium hidroksida. Kedua bahan aktif ini bekerja sebagai antasida, yaitu untuk menetralisir asam lambung.'
        ),
    Item(
        name: 'Komix OBH',
        price: '2.000',
        image: 'https://cdn.hellosehat.com/wp-content/uploads/2022/02/21874cd9-komix-obh-400x400.jpg',
        kategori: 'Batuk',
        deskripsi:
            'Batuk berdahak sering bersamaan dengan gejala pilek seperti hidung tersumbat dan bersin-bersin. ' +
                'Komix OBH mampu mengatasi kedua masalah tersebut karena dapat menghangatkan tenggorokan.'
        ),
    Item(
        name: 'Konidin OBH',
        price: '5.000',
        image: 'https://cdn.hellosehat.com/wp-content/uploads/2022/02/5fe677da-konidin-obh-400x400.jpg',
        kategori: 'Batuk',
        deskripsi:
            'Konidin OBH ini mengandung ammonium chloride yang berfungsi sebagai ekspektoran. Kandungan ini dapat meningkatkan volume dan mengurangi kekentalan lendir di trakea dan bronkus, organ pernapasan bagian bawah. ' +
                'Pengurangan kekentalan lendir tersebut akan meningkatkan reflek batuk dan mempermudah pengeluaran dahak.'
        ),
  ];

  String? value;

  void filterSearchResults(String query) {
    List<Item> dummySearchList = <Item>[];
    dummySearchList = dummyItemList;
    if (query.isNotEmpty || query != '') {
      List<Item> dummyListData = <Item>[];
      dummySearchList.forEach((items) {
        if (items.name.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(items);
        }
      });
      setState(() {
        items = dummyListData;
      });
      return;
    } else {
      setState(() {
        items = dummySearchList;
      });
    }
  }

  void checkFilters() {
    items = items.where((e) => filters.contains(e.kategori)).toList();
    dummyItemList =
        dummyItemList.where((e) => filters.contains(e.kategori)).toList();
  }

  @override
  Widget build(BuildContext context) {
    checkFilters();
    return Scaffold(
        backgroundColor: Color(0xffB0B8B4),
        appBar: AppBar(
          title: const Text('Hasil Pencarian'),
          backgroundColor: Color(0xff184A45),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 8, left: 8),
              child: TextFormField(
                onChanged: (value) {
                  filterSearchResults(value);
                },
                decoration: InputDecoration(
                    labelText: 'Pencarian', border: OutlineInputBorder()),
              ),
            ),
            Expanded(child: gridView(items: items)),
          ],
        ));
  }
}
