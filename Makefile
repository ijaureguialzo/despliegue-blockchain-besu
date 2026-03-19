#!make

help: _header
	${info }
	@echo Opciones:
	@echo -----------------------
	@echo direcciones
	@echo qbft_config
	@echo -----------------------

_header:
	@echo ----
	@echo Besu
	@echo ----

direcciones:
	@scripts/crear_direccion private/direccion_1
	@scripts/crear_direccion private/direccion_2
	@scripts/crear_direccion private/direccion_3

qbft_config:
	@scripts/generar_qbft_config
