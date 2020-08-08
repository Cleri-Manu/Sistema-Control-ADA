package body central is
   protected body Productor is
   procedure iniciarConsumo(enerInicial: in energiaProducida) is
     begin
       energiaProd:=energInicial;
     end iniciarConsumo;

   procedure aumentarProduccionEnergia(incremento: in Integer) is
     begin
       energiaProd:= energiaProd+incremento;
     end aumentarProduccionEnergia;

   procedure disminuirProduccionEnergia(decremteno: in Integer) is
     begin
       energiaProd:= energiaProd-decremento;
   end disminuirProduccionEnergia;

   function leerProduccion return Integer is
     begin
       return energiaProd;
     end leerProduccion;

   end Productor;
end central;
