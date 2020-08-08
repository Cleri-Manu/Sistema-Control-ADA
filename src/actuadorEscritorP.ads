with System;
with Ada.Real_Time;
use Ada.Real_Time;
with Ada.Real_Time.Timing_Events;
use Ada.Real_Time;
with Text_IO;
with ciudad;
  use ciudad;
with central;
  use central;

package ActuadorEscritorP is
   type ActuadorDato is new Integer; --PEPE LO TIENE DIFERENTE
   protected type ActuadorEscritor(consumoCiudad:access Consumidor, produccionCentral:access Productor) is

      pragma Interrupt_Priority(System.Interrupt_Priority'Last);
      procedure iniciar;
      entry incrementar(dato:in valorPorDefecto);
      entry decrementar(dato:in valorPorDefecto);
      entry cambiar;

      procedure Timer(event: in out Ada.Real_Time.Timing_Events.Timing_Event);
   private
      valorPorDefecto:Integer:= 1;
      nextTime:Ada.Real_Time.Time;
      datoDisponible:Boolean:=true;
      salidaJitterControl:Ada.Real_Time.Timing_Events.Timing_Event;
      salidaPeriodo:Ada.Real_Time.Time_Span:=Ada.Real_Time.Milliseconds(100);

   end ActuadorEscritor;
end ActuadorEscritorP;
