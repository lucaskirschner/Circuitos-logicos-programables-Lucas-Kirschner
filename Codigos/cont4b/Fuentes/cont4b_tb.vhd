-- Bibliotecas
library IEEE;
use IEEE.std_logic_1164.all;

-- Declaracion de entidad del testbench (sin puertos)
entity cont4b_tb is
end entity cont4b_tb;

-- Cuerpo de arquitectura
architecture cont4b_tb_arq of cont4b_tb is
	-- Parte declarativa
	signal clk_tb: std_logic := '0';
	signal rst_tb: std_logic := '1';
	-- signal ena_tb: std_logic := '1';
	-- signal d_tb: std_logic   := '0';
	signal q_tb: std_logic_vector(3 downto 0);

begin
	-- Parte descriptiva
	clk_tb <= not clk_tb after 10 ns;
	-- d_tb <= '1' after 60 ns, '0' after 100 ns, '1' after 145 ns;
	-- ena_tb <= '0' after 105 ns, '1' after 120 ns;
	rst_tb <= '0' after 40 ns;
	
	cont4b_inst: entity work.cont4b
	port map(
			clk_i => clk_tb,
			rst_i => rst_tb,
			-- ena_i => ena_tb,
			-- d_i   => d_tb,
			q_o   => q_tb
			
		);
end architecture cont4b_tb_arq;