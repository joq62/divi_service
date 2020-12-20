all:
	rm -rf ebin/* src/*~ test_ebin/* test_src/*~ src/*.beam erl_c*;
	cp src/*.app ebin;
	erlc -o ebin src/*.erl

test:
	rm -rf ebin/* src/*~ test_ebin/* test_src/*~;
	cp src/*.app ebin;
	erlc -o ebin src/*.erl;
	erlc -o test_ebin test_src/*.erl;
	erl -pa ebin -pa test_ebin -s divi_service_tests start -sname test_divi_service
