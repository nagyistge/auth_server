
install:
	git submodule update --init --recursive
	cd vendors/mustache && rake commonjs
	cd vendors/bcrypt_hash && make && make clean

update_js_templates:
	python vendors/jquery.mustache/src/generate_templates.py -l fr -d src/ms_templates -o src/static/js

skip:
	python vendors/jquery.mustache/src/generate_templates.py -l fr -d src/ms_templates -o src/static/js -s
