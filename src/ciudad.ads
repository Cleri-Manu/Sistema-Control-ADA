with Text_IO;

package ciudad is
   type energiaConsumida is new Integer range 15..90;

   protected type Consumidor is
      procedure iniciarConsumo(enerInicial: in energiaConsumida);
      procedure cambiarConsumoEnergia;
      function leerConsumo return Integer;
   private
      energiaCons:energiaConsumida;
   end Consumidor;

end ciudad;
