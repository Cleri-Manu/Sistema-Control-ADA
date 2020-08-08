package body ciudad is
   subtype aleatorioReactor is Integer range -3..3;
   package Aleatorio is new Ada.Numerics.Discrete_Random(aleatorioReactor);
   seed : Aleatorio.Generator
   protected body Consumidor is
      procedure iniciarConsumo(enerInicial: in energiaConsumida) is
        begin
          energiaCons:=energInicial;
        end iniciarConsumo;

      procedure cambiarConsumoEnergia(incremento: in Integer) is
        begin
          Aleatorio.Reset(seed);
          energiaCons:=energiaConsumida(Integer(energiaCons)+Aleatorio.Random(seed));
        end cambiarConsumoEnergia;

      function leerConsumo return Integer is
        begin
          return energiaCons;
        end leerConsumo;

   end Consumidor;

end ciudad;
