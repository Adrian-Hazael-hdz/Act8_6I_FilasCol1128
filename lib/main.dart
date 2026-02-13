import 'package:flutter/material.dart';

void main() {
  runApp(const AppPchop());
}

class AppPchop extends StatelessWidget {
  const AppPchop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const PantallaPrincipal(),
    );
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar con los colores y botones solicitados
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Tienda Electronicos Hernandez",
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold, fontSize: 18),
        ),
        backgroundColor: const Color(0xFF9575CD), // Morado claro
        actions: const [
          Icon(Icons.monitor, color: Colors.black),
          SizedBox(width: 10),
          Icon(Icons.memory, color: Colors.black),
          SizedBox(width: 15),
        ],
      ),
      // SafeArea para proteger el contenido de bordes y muescas
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Fila 1: Productos y Marcas
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _crearBotonMenu(const Color(0xFF80DEEA), Icons.computer, "Productos"),
                  _crearBotonMenu(const Color(0xFFC5E1A5), Icons.settings_input_component, "Marcas"),
                ],
              ),
              // Fila 2: Proveedores y Carrito
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _crearBotonMenu(const Color(0xFFF48FB1), Icons.engineering, "Proveedores"),
                  _crearBotonMenu(const Color(0xFFFFCC80), Icons.shopping_cart, "Carrito"),
                ],
              ),
              // Fila 3: Perfil e Información
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _crearBotonMenu(const Color(0xFF90CAF9), Icons.person, "Perfil"),
                  _crearBotonMenu(const Color(0xFFEF9A9A), Icons.info_outline, "Información"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Función para crear cada contenedor (Widget personalizado)
  Widget _crearBotonMenu(Color color, IconData icono, String texto) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25), // Bordes redondeados
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icono, size: 50, color: Colors.black),
          const SizedBox(height: 10),
          Text(
            texto,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}