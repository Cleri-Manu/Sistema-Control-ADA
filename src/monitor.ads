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

package SensorLectorP is
   type SensorDato is new Integer;
   protected type SensorLector(consumoCiudad:access Consumidor, produccionCentral:access Productor) is   --REVISAR SI ES UNA COMO U OTRA COSA


      pragma Interrupt_Priority(System.Interrupt_Priority'Last);
      procedure iniciar;
      entry leerCons(dato:out Integer); --mirar
      entry leerProd(dato:out Integer); --mirar
      procedure Timer(event: in out Ada.Real_Time.Timing_Events.Timing_Event);
   private
      nextTime:Ada.Real_Time.Time;
      leyendo:SensorDato;
      datoDisponible:Boolean:=True;
      entradaJitterControl:Ada.Real_Time.Timing_Events.Timing_Event;
      entradaPeriodo:Ada.Real_Time.Time_Span:=Ada.Real_Time.Milliseconds(100);

   end SensorLector;
end SensorLectorP;
