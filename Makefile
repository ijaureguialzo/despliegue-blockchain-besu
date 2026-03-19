#!make

help: _header
	${info }
	@echo Opciones:
	@echo -----------------------
	@echo blockchain
	@echo -----------------------
	@echo direcciones
	@echo qbft_config
	@echo generar_config_besu
	@echo -----------------------

_header:
	@echo ----
	@echo Besu
	@echo ----

direcciones:
	@scripts/crear_direccion private/direcciones/direccion_1
	@scripts/crear_direccion private/direcciones/direccion_2
	@scripts/crear_direccion private/direcciones/direccion_3

qbft_config:
	@scripts/generar_qbft_config

generar_config_besu:
	@besu operator generate-blockchain-config --config-file=private/qbftConfigFile.json --to=private/networkFiles --private-key-file-name=key

blockchain: direcciones qbft_config generar_config_besu
