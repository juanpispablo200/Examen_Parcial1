# Proyecto de Aplicación Flutter

## Descripción del Proyecto

Este proyecto es una aplicación Flutter simple que cumple con los siguientes requisitos:

- Muestra los nombres y edades de los estudiantes en un widget Text.
- El texto es de color azul y está centrado en la pantalla.
- Utiliza un widget Container con fondo de color blanco.
- Implementa la clase Persona para gestionar la información del estudiante.

## Clase Persona

La clase `Persona` se utiliza para representar a un estudiante. Contiene un constructor por nombre y un constructor factory para asignar la edad. Se ha sobrescrito el método `toString` para mostrar los nombres y la edad.

```dart
class Persona {
  String nombre;
  String apellido;
  int edad;

  Persona({required this.nombre, required this.apellido, this.edad = 0});

  factory Persona.fromEdad(int edad) {
    return Persona(nombre: '', apellido: '', edad: edad);
  }

  @override
  String toString() {
    return '$nombre $apellido - Edad: $edad';
  }
}
