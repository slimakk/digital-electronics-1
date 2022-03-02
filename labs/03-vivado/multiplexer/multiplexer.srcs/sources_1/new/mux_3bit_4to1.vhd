library ieee;
use ieee.std_logic_1164.all;
entity mux_3bit_4to1 is
    port(
        d_i           : in  std_logic_vector(3 - 1 downto 0);
        c_i           : in  std_logic_vector(3 - 1 downto 0);
        b_i           : in  std_logic_vector(3 - 1 downto 0);
        a_i           : in  std_logic_vector(3 - 1 downto 0);
        sel_i         : in  std_logic_vector(2 - 1 downto 0);
        f_o           : out std_logic_vector(3 - 1 downto 0)
    );
end entity mux_3bit_4to1;
architecture Behavioral of mux_3bit_4to1 is
begin
    with sel_i select
    f_o <= a_i when "00",
           b_i when "01",
           c_i when "10",
           d_i when others;
end architecture Behavioral;