CREATE OR REPLACE PACKAGE raindrops# AS
	FUNCTION convert# (num integer) RETURN VARCHAR2;
	
END raindrops#;
/
CREATE OR REPLACE PACKAGE BODY raindrops# AS
    FUNCTION convert# (num integer) RETURN VARCHAR2
    AS
	TYPE typ IS TABLE OF integer;
	TYPE strings IS TABLE OF varchar2(10);
	v_factors typ := typ(3, 5, 7);
	v_values strings := strings('Pling', 'Plang', 'Plong');
	v_result VARCHAR2(20);
	BEGIN
		FOR i IN 1..v_factors.COUNT LOOP
				IF MOD(num, v_factors(i)) = 0 THEN
						v_result := v_result||v_values(i);
				END IF;
		END LOOP;
		CASE WHEN v_result IS NULL THEN RETURN TO_CHAR(num); ELSE RETURN v_result; END CASE;
	EXCEPTION
		WHEN others THEN
			RAISE;
	END convert#;
END raindrops#;
/
create or replace package ut_raindrops#
is
  procedure run;
end ut_raindrops#;
/
 
create or replace package body ut_raindrops#
is
  procedure test (
    i_descn                                       varchar2
   ,i_exp                                         varchar2
   ,i_act                                         varchar2
  )
  is
  begin
    if i_exp = i_act then
      dbms_output.put_line('SUCCESS: ' || i_descn);
    else
      dbms_output.put_line('FAILURE: ' || i_descn || ' - expected ' || nvl(i_exp, 'null') || ', but received ' || nvl(i_act, 'null'));
    end if;
  end test;
 
  procedure run
  is
  begin
    test(i_descn => 'test_1'    , i_exp => '1'              , i_act => raindrops#.convert#(1));
    test(i_descn => 'test_3'    , i_exp => 'Pling'          , i_act => raindrops#.convert#(3));
    test(i_descn => 'test_5'    , i_exp => 'Plang'          , i_act => raindrops#.convert#(5));
    test(i_descn => 'test_7'    , i_exp => 'Plong'          , i_act => raindrops#.convert#(7));
    test(i_descn => 'test_6'    , i_exp => 'Pling'          , i_act => raindrops#.convert#(6));
    test(i_descn => 'test_9'    , i_exp => 'Pling'          , i_act => raindrops#.convert#(9));
    test(i_descn => 'test_10'   , i_exp => 'Plang'          , i_act => raindrops#.convert#(10));
    test(i_descn => 'test_14'   , i_exp => 'Plong'          , i_act => raindrops#.convert#(14));
    test(i_descn => 'test_15'   , i_exp => 'PlingPlang'     , i_act => raindrops#.convert#(15));
    test(i_descn => 'test_21'   , i_exp => 'PlingPlong'     , i_act => raindrops#.convert#(21));
    test(i_descn => 'test_25'   , i_exp => 'Plang'          , i_act => raindrops#.convert#(25));
    test(i_descn => 'test_35'   , i_exp => 'PlangPlong'     , i_act => raindrops#.convert#(35));
    test(i_descn => 'test_49'   , i_exp => 'Plong'          , i_act => raindrops#.convert#(49));
    test(i_descn => 'test_52'   , i_exp => '52'             , i_act => raindrops#.convert#(52));
    test(i_descn => 'test_105'  , i_exp => 'PlingPlangPlong', i_act => raindrops#.convert#(105));
    test(i_descn => 'test_12121', i_exp => '12121'          , i_act => raindrops#.convert#(12121));
  end run;
end ut_raindrops#;
/
set serveroutput on;
begin
  ut_raindrops#.run;
end;
/
