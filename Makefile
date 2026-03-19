#!make

help: _header
	${info }
	@echo Opciones:
	@echo -----------------------
	@echo direcciones
	@echo -----------------------

_header:
	@echo ----
	@echo Besu
	@echo ----

direcciones:
	@scripts/crear_direccion private/direccion_1
	@scripts/crear_direccion private/direccion_2
	@scripts/crear_direccion private/direccion_3
