Algoritmo Proyecto_sistema_de_costos
	//Declarar variables del sistema de costo
	Definir precioOriginal,descuentoCupon,precioIVA,descuentoxCantidad,costoEnvio,precioFinal1,precioFinal2 como real
	Definir i,pedidos,cantidad,pedidofinal Como Entero
	//Asignación de valores
	precioOriginal<-100
	descuentocupon<-0.1
	iva<-1.12
	descuentoporcantidad<-0.05
	costoenvio<-10
	pesopaquete<-3
	//Realizar calculo para cupón de descuento 
	descuentoCupon<-precioOriginal-(precioOriginal*0.1)
	//Realizar calculo para aplicar el iva al producto con descuento
	precioIVA<-descuentoCupon*1.12
	//Realizar calculo de descuento por cantidad de producto
	descuentoxCantidad<-precioIVA-(precioIVA*0.05)
	//Realizar calculo de costo de envio 
	costoEnvio<-10+(2*3)
	//Realizar calculo del producto final más el envío de un par
	precioFinal1<-(precioIVA*1)+costoEnvio
	//Realizar calculo del producto final más el envío de dos pares
	precioFinal2<-(descuentoxCantidad*2)+costoEnvio
	//Crear un array para realizar lista de pedidos de los productos
	Dimension pedidos[1]	
	//Realizar ingreso de pedidos 
	Para i<-1 Hasta 1 Con Paso 1 Hacer
		Escribir "Pedido cliente" i, ":"
		Leer pedidos[i]
	Fin Para
	//Cantidad de pedidos 
	Escribir "La cantidad de pedidos ingresados son:"
	Para i<-1 Hasta 1 Con Paso 1 Hacer
		Si pedidos[i]>=1 Entonces
			Escribir pedidos[i]
		FinSi
	Fin Para
	//Agregar precio y cantidad del producto pedido por el cliente
	Escribir "Ingrese cantidad de producto solicitado por el cliente:"
	leer cantidad
	Si cantidad>=2 Entonces
		Escribir "Si lleva 2 pares se aplica descuento del 5% donde cada producto queda en un valor de $",descuentoxCantidad
	SiNo
		Escribir "Si lleva 1 par se aplica descuento cupon 10% y el producto queda en un valor de $",precioIVA 
	Fin Si
	// Calculo final del producto más el envío 
	Escribir "Ingrese cantidad final del pedido:"
	Leer pedidoFinal
	Si pedidoFinal>=2 Entonces
		Escribir "El precio total de 2 pares más el costo de envío es de $", precioFinal2
	SiNo
		Escribir "El precio total de 1 par más el costo de envío es de $", precioFinal1
	Fin Si
	//Mostrar valores desglosados 
	Escribir "Los valores deglosados de los productos son:"
	Escribir "El precio original del producto es de = $", precioOriginal
	Escribir "El precio del producto con cupón de descuento es de = $", descuentoCupon
	Escribir "El precio del producto con descuento más el IVA agregado es de = $", precioIVA
	Escribir "El precio del producto si llevas dos pares, cada producto tiene un valor de = $", descuentoxCantidad
	Escribir "El costo de envío tiene un valor de = $", costoEnvio
	Escribir "El precio final de un producto más el envío es de = $", precioFinal1
	Escribir "El precio final de dos productos más el envío es de = $", precioFinal2
	
	
FinAlgoritmo
