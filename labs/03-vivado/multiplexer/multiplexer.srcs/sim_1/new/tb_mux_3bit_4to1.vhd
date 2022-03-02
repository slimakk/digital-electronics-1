library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for testbench
------------------------------------------------------------
entity tb_mux_3bit_4to1 is
    -- Entity of testbench is always empty
end entity tb_mux_3bit_4to1;

------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------
architecture testbench of tb_mux_3bit_4to1 is
    -- Local signals
    signal s_a           : std_logic_vector(3 - 1 downto 0);
    signal s_b           : std_logic_vector(3 - 1 downto 0);
    signal s_c           : std_logic_vector(3 - 1 downto 0);
    signal s_d           : std_logic_vector(3 - 1 downto 0);
    signal s_sel         : std_logic_vector(2 - 1 downto 0);
    signal s_f           : std_logic_vector(3 - 1 downto 0);
begin
    uut_comparator_4bit : entity work.mux_3bit_4to1
        port map(
            a_i           => s_a,
            b_i           => s_b,
            c_i           => s_c,
            d_i           => s_d,
            sel_i         => s_sel,
            f_o           => s_f
        );
    p_stimulus : process
    begin
        
        s_d <= "111";
        s_c <= "110";
        s_b <= "101";
        s_a <= "100";
        report "Stimulus process started" severity note;
        s_sel <= "00";
        wait for 100ns;
        
        s_sel <= "01";
        wait for 100ns;
        
        s_sel <= "10";
        wait for 100ns;
        
        s_sel <= "11";
        wait for 100ns;
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
end architecture testbench;