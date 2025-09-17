-- Bibliotecas
library IEEE;
use IEEE.std_logic_1164.all;

-- Declaracion de entidad
entity regNb is
  generic(
    N: natural := 4
);
  
	port(
		
		clk_i: in std_logic;
		rst_i: in std_logic;
		ena_i: in std_logic;
		d_i  : in std_logic_vector(N-1 downto 0);
		q_o  : out std_logic_vector(N-1 downto 0)
	);
end entity regNb;

-- Cuerpo de arquitectura
architecture regNb_arq of regNb is
	-- Parte declarativa
begin
	-- Parte descriptiva
	
	process(clk_i)
	begin
	   if rising_edge(clk_i) then  -- O tambien -> clk_i 'eventt and clk_i = '1'
	     if rst_i = '1' then
	       q_o <= (N-1 downto 0 => '0');
	     elsif ena_i = '1' then
	       q_o <= d_i;
                      -- Se puede omitir el else ya que si no esta se comporta por defecto como un elemento de memoria
	     end if;
	   end if;
  end process;
end architecture regNb_arq;