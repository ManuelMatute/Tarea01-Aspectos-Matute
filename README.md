# Tarea01-Aspectos-Matute

## Funcionalidad adicional: Contador de cambios de color

Se implementó un contador que registra cuántas veces se ha cambiado el color de fondo de la ventana.

Esta funcionalidad fue desarrollada utilizando un aspecto de AspectJ, el cual intercepta la acción de cambiar el color y:

- Notifica a los observadores registrados.
- Incrementa un contador estático.
- Imprime en consola el total acumulado de cambios.
- Actualiza un `JLabel` en la interfaz gráfica mostrando la cantidad de cambios en tiempo real.

##Pantalla sin Modificaciones:
![Captura de pantalla 2025-06-10 191257](https://github.com/user-attachments/assets/eb02d01a-74e9-403d-ac92-26f16a375a1e)


##Cambios de colores:
![Captura de pantalla 2025-06-10 191312](https://github.com/user-attachments/assets/47960c27-03cb-4d2b-af37-9317be6256ec)
![Captura de pantalla 2025-06-10 191337](https://github.com/user-attachments/assets/81e2c220-e559-455b-9692-59a8fc1647e7)
![Captura de pantalla 2025-06-10 191351](https://github.com/user-attachments/assets/e4f20bf4-9670-485f-b169-f20969d3c26a)
