import 'package:flutter/material.dart';

class InstakilogramLayout extends StatelessWidget {
  const InstakilogramLayout ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0), // Padding untuk logo
          child: Image.network(
            'https://media.istockphoto.com/id/1223620328/id/vektor/ikon-bobot-putih-diisolasi-dengan-bayangan-panjang-blok-berat-kilogram-untuk-angkat-beban.jpg?s=612x612&w=0&k=20&c=gWqm1UkOrIcQjliF8VkJVUHRDX4NsoHszeeGv2MpKhw=',  // Ganti dengan path gambar logo
            height: 30,  // Ukuran logo
            width: 30,   // Ukuran logo
          ),
        ),
        title: const Text('Instakilogram Feed'),
        actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Feed Post 1
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: <Widget>[
                  // Header (User Info)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCHZoNznLD41tJDhMbrVzsyoi4N36obaScTA&s',
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Cristiano', style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('GBK Stadium', style: TextStyle(fontSize: 12, color: Colors.grey)),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(Icons.more_vert),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),

                  // Image Post
                  Image.network(
                    'https://img.antaranews.com/cache/1200x800/2022/11/25/2022-11-24T182207Z_1177338743_UP1EIBO194O3B_RTRMADP_3_SOCCER-WORLDCUP-POR-GHA-REPORT.jpg.webp',
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),

                  // Divider
                  const Divider(),

                  // Footer (Actions)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.favorite_border),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(Icons.comment_outlined),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(Icons.share),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        IconButton(
                          icon: const Icon(Icons.bookmark_border),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),

                  // Divider
                  const Divider(),

                  // Caption
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Gunung Bromo Gunung Kelud, nek gak trimo ayo gelud.',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),

            // Feed Post 2 (similar structure as Feed Post 1)
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                            'https://img.a.transfermarkt.technology/portrait/big/28003-1710080339.jpg?lm=1',
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('eL Messi', style: TextStyle(fontWeight: FontWeight.bold)),
                            const Text('ShareLoc tak parani', style: TextStyle(fontSize: 12, color: Colors.grey)),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(Icons.more_vert),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Image.network(
                    'https://i3.wp.com/icdn.football-espana.net/wp-content/uploads/2024/09/Messi.jpg?w=640&resize=640,0&ssl=1',
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.favorite_border),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(Icons.comment_outlined),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(Icons.share),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        IconButton(
                          icon: const Icon(Icons.bookmark_border),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Iwak nila iwak mujair astaghfirullahalazim..',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
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

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: InstakilogramLayout(),
  ));
}
