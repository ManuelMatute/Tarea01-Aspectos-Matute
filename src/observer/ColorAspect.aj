package observer;

import java.awt.Color;

public aspect ColorAspect {

    private static int contadorCambios = 0;

    pointcut cambioColor(Color color, String nombreColor, VentanaPrincipal ventana) :
        execution(void observer.VentanaPrincipal.cambiarColor(Color, String)) &&
        args(color, nombreColor) &&
        this(ventana);

    after(Color color, String nombreColor, VentanaPrincipal ventana) : cambioColor(color, nombreColor, ventana) {
        contadorCambios++;

        // Notificación a observadores
        ventana.getSujeto().notificar("AspectJ: El color cambió a " + nombreColor);

        // consola
        System.out.println("AspectJ: El color cambió a " + nombreColor);
        System.out.println("Número de cambios acumulados: " + contadorCambios);

        // Actualizar contador en la interfaz
        ventana.actualizarContador(contadorCambios);
    }
}