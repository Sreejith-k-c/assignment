import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MusicUi(),));
}
class MusicUi extends StatelessWidget {
  var images=["https://charts-images.scdn.co/assets/locale_en/regional/daily/region_global_default.jpg","https://images.unsplash.com/opengraph/1x1.png?auto=format&fit=crop&w=1200&h=630&q=60&mark-w=64&mark-align=top%2Cleft&mark-pad=50&blend-w=1&mark=https%3A%2F%2Fimages.unsplash.com%2Fopengraph%2Flogo.png&blend=https%3A%2F%2Fimages.unsplash.com%2Fphoto-1516450360452-9312f5e86fc7%3Fcrop%3Dfaces%252Cedges%26cs%3Dtinysrgb%26fit%3Dcrop%26fm%3Djpg%26ixid%3DM3wxMjA3fDB8MXxzZWFyY2h8NXx8cG9wJTIwbXVzaWN8ZW58MHx8fHwxNjkxNjc2MjQzfDA%26ixlib%3Drb-4.0.3%26q%3D60%26w%3D1200%26auto%3Dformat%26h%3D630%26mark-w%3D750%26mark-align%3Dmiddle%252Ccenter%26blend-mode%3Dnormal%26blend-alpha%3D10%26mark%3Dhttps%253A%252F%252Fimages.unsplash.com%252Fopengraph%252Fsearch-input.png%253Fauto%253Dformat%2526fit%253Dcrop%2526w%253D750%2526h%253D84%2526q%253D60%2526txt-color%253D000000%2526txt-size%253D40%2526txt-align%253Dmiddle%25252Cleft%2526txt-pad%253D80%2526txt-width%253D660%2526txt-clip%253Dellipsis%2526txt%253Dpop%252520music%26blend%3D000000",
    "https://i.scdn.co/image/ab67706c0000da8454d9e78f9cf9cf9dadb30502","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9CLG_qrJt97SJhd_YOeCxZ1uqt9qPRAKe6YVEnWjkgjJTaQUtFavLLswH-ED-g7si79o&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXOzWzvhfo7ugzvIXuYr_gWiTbL1mwG_wsI-tT_qw4cWbpTGp-LKyXoIqW6lPQiHETCDc&usqp=CAU","https://i.scdn.co/image/ab67616d0000b2739da92b8aa7cbcd57a20fe10e"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Playlists"),
        actions: [
          const Icon(Icons.search),
          const SizedBox(
            width: 20,
            child: TextField(
              decoration: InputDecoration(
                hintText: ("Search.."),
                suffixIcon: Icon(Icons.search_rounded),
              ),
            ),
          ),
        ],
      ),
      body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          childrenDelegate: SliverChildListDelegate(
              List.generate(6,
                      (index) =>
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image:  DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(images[index]),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      )))),
    );
  }
}