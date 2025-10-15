---------------------------------------------------------
-- Nombre del componente: lab1
--
-- Funcion: Implementar funciones de salida para los
--          leds de acuerdo a valores de entrada de
--          los switches
---------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity lab1_vio is
	port(
		clk_i: out std_logic_vector
	);
end entity;

architecture lab1_vio_arq of lab1_vio is
  
  signal probe_swt : std_logic_vector(3 downto 0);
  signal probe_led : std_logic_vector(3 downto 0);
begin
  lab1_inst : entity work.lab1
    port map(
        swt => probe_swt,
        led => probe_led
    );
	
end architecture lab1_vio_arq;