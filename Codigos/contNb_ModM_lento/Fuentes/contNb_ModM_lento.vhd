-- Bibliotecas
library IEEE;
use IEEE.std_logic_1164.all;

-- Declaracion de entidad
entity contNb_ModM_lento is
  generic(
    N: natural := 4;
    M: natural := 10;
    CICLOS: natural := 4
  );
	port(
		clk_i: in std_logic;
		rst_i: in std_logic;
		ena_i: in std_logic;
		q_o  : out std_logic_vector(N-1 downto 0)
	);
end entity contNb_ModM_lento;

-- Cuerpo de arquitectura
architecture contNb_ModM_lento_arq of contNb_ModM_lento is
	-- Parte declarativa
	signal ena_aux: std_logic;
	signal ena_gen: std_logic;
begin
	-- Parte descriptiva
	contNb_ModM_inst: entity work.contNb_ModM
	generic map(
	   N => N,
	   M => M
	)
	port map(
	   clk_i => clk_i,
	   rst_i => rst_i,
	   ena_i => ena_aux,
	   q_o => q_o
	);
	
	genEna_inst: entity work.genEna
	generic map(
	   N => CICLOS
	)   
	port map(
	   clk_i => clk_i,
	   rst_i => rst_i,
	   q_o => ena_gen
	);
	
	ena_aux <= ena_i and ena_gen;
end architecture contNb_ModM_lento_arq;