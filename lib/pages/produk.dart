import 'package:flutter/material.dart';

class Data {
  late String nama_barang;
  late String harga_barang;

  Data({required this.harga_barang, required this.nama_barang});
}

class Produk extends StatefulWidget {
  const Produk({super.key});

  @override
  State<Produk> createState() => _ProdukState();
}

class _ProdukState extends State<Produk> {
  final List<Data> _data = [
    Data(nama_barang: 'Baju', harga_barang: '10000'),
    Data(nama_barang: 'Celana', harga_barang: '10000'),
    Data(nama_barang: 'Topi', harga_barang: '10000'),
    Data(nama_barang: 'Kalung', harga_barang: '10000'),
    Data(nama_barang: 'Gelang', harga_barang: '10000'),
    Data(nama_barang: 'Sabuk', harga_barang: '10000'),
    Data(nama_barang: 'Jaket', harga_barang: '10000'),
    Data(nama_barang: 'Hoodie', harga_barang: '10000'),
    Data(nama_barang: 'Sweater', harga_barang: '10000'),
    Data(nama_barang: 'Sepatu', harga_barang: '10000'),
  ];

  @override
  Widget build(BuildContext context) {
    const title = 'Data Produk';
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Tombol masih belum bekerja!')));
            },
            icon: const Icon(Icons.refresh),
            tooltip: 'Search',
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Filter Produk',
                    suffixIcon: Icon(Icons.close),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 400,
                child: ListView.builder(
                  itemCount: _data.length,
                  itemBuilder: (context, index) {
                    return Card(
                        elevation: 2,
                        shadowColor: Colors.black,
                        color: Colors.white,
                        surfaceTintColor: Colors.white,
                        child: ListTile(
                          leading: Text('${index + 1}'),
                          title: Text(_data[index].nama_barang),
                          subtitle: Row(
                            children: [
                              const Text('Harga : Rp. '),
                              Text(_data[index].harga_barang),
                            ],
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content:
                                          Text('Tombol masih belum bekerja!')));
                            },
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            tooltip: 'Hapus Data',
                          ),
                        ));
                  },
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}
