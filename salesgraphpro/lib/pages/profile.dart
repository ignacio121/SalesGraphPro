import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    child: Center(child: Image.asset("assets/fondoperfil.jpeg")),
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(20)),
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                  ),

                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50,
                      child: CircleAvatar(
                        radius: 47,
                        backgroundImage: AssetImage("assets/perfilphoto.jpeg"),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Ignacio Muñoz",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18)
              ),
            ),

            Container(height: 150, width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("5.607", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),        
                    ),
                    Text("Ventas realizadas", style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12, color: Colors.grey)),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("13.863", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),        
                    ),
                    Text("Empresas alcanzadas", style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12, color: Colors.grey)),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("27 M", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),        
                    ),
                    Text("Ingresos generados", style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12, color: Colors.grey)),
                  ],
                ),
              ],
            ),
            ),
          
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 360,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(20)),
                child: Column(children: [
                  ListTile(
                    title: Text("Cargo", style: TextStyle(color: Colors.grey,fontSize: 14),),
                    subtitle: Text("Vendedor en linea", style: TextStyle(color: Colors.white,fontSize: 18),)
                  ),
                  Divider(color: Colors.grey),
                  ListTile(
                    title: Text("Nacionalidad", style: TextStyle(color: Colors.grey,fontSize: 14),),
                    subtitle: Text("Chilena", style: TextStyle(color: Colors.white,fontSize: 18),)
                  ),
                  Divider(color: Colors.grey),
                  ListTile(
                    title: Text("Edad", style: TextStyle(color: Colors.grey,fontSize: 14),),
                    subtitle: Text("42", style: TextStyle(color: Colors.white,fontSize: 18),)
                  ),
                  Divider(color: Colors.grey),
                  ListTile(
                    title: Text("Años de servicio", style: TextStyle(color: Colors.grey,fontSize: 14),),
                    subtitle: Text("4 años", style: TextStyle(color: Colors.white,fontSize: 18),)
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xffEDEDED),
    );
  }
}