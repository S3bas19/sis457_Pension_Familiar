El siguiente readme.txt muestra contextualizar un poco acerca del negocio que se trabajará en el
actual repositorio que tiene por nombre del negocio pensión familiar que basicamnete es un 
negocio de comida, se especializa en los almuerzos, lo cual significa que funciona de dia.
BASE DE DATOS
FACTURA(idfactura,idcliente,idcamarero,idmesa,fechafactura)
MENU(idmenu,cantidad,entrada,sopa,segundo,refresco,costo)
DETALLEFACTURA(iddetallefactura,idfactura,idcocinero,idmenu,importe)
COCINERO(idcocinero,nombre,apellidopat,apellidomat)
CAMARERO(idcamarero,nombre,apellidopat,apellidomat)
MESA(idmesa,capacidad,ubicacion)
CLIENTE(idcliente,nombre,apelldiopat,apellidomat,observaciones)
PENSIONADO(idcliente,fechainicio,fechafin)
ANFITRION(idanfitrion,nombre,apellidopat,apellidomat,usuario,contraseña)

