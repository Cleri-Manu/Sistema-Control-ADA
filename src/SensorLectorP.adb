package body SensorLectorP is
   protected body SensorLector is
      procedure iniciar is
        begin
          datoDisponible:=False;
          nextTime:=Clock+entradaPeriodo;
          Ada.Real_Time.Timing_Events.Set_Handler(entradaJitterControl, nextTime, Timer'Access);
        end iniciar;

      entry leerCons(dato:out Integer)
        when datoDisponible is
        begin
          datoDisponible:=False;
          dato:=consumoCiudad.leerConsumo;
        end leerCons;

      entry leerProd(dato:out Integer)
        when datoDisponible is
          begin
            datoDisponible:=False;
            dato:=produccionCentral.leerProduccion;
          end leerProd;

      procedure Timer(event:in out Ada.Real_Time.Timing_Events.Timing_Event) is
        begin
          datoDisponible:=True;
          nextTime:=nextTime+entradaPeriodo;
          Ada.Real_Time.Timing_Events.Set_Handler(entradaJitterControl, nextTime, Timer'Access);
        end Timer;
   end SensorLector;

end SensorLectorP;
