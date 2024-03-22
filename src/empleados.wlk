object galvan{
	var  sueldo = 15000
	var saldo = 0
	
	method sueldo (_sueldo){
		sueldo = _sueldo
	}
	method sueldo(){
		return sueldo
	}
	method cobrarSueldo(){
		saldo += self.sueldo ()
	}
	method gastar(cuanto){
		saldo -= cuanto
	}
	method totalDinero(){
		return if(saldo > 0){
			saldo
		} else{
			0
		} 
	}
	method totalDeuda(){
		return if(saldo < 0){
			saldo.abs()
		} else{
			0
		} 
	}
}
object baigorria{
	var empanadasVendidas = 0
	const empanada = 15

//2	
	var totalCobrado = 0
	
	method empanadasVendidas (_empanadasVendidas){
		empanadasVendidas += _empanadasVendidas
		
	}
	method sueldo () {
		return empanada * empanadasVendidas 
	}
//2	
	method cobrarSueldo(){
		totalCobrado += self.sueldo()
		empanadasVendidas = 0
	}
	
	method totalCobrado(){
		return totalCobrado
	}

}
object gimenez {
	var fondo = 300000
	
//2
	method pagarA(empleado) {
    	fondo -= empleado.sueldo()
   		 empleado.cobrarSueldo()
	}
	method fondo(){
		return fondo
	}
}