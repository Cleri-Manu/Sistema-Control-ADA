with Text_IO;

package central is
   type energiaProducida is new Integer range 0..30;

   protected type Productor is
      procedure iniciarProduccion(enerInicial: in energiaProducida);
      procedure aumentarProduccionEnergia(incremento: in Integer);
      procedure disminuirProduccionEnergia(decremteno: in Integer);
      function leerProduccion return Integer;
   private
      energiaProd:energiaProducida;
   end productor;

end central;
