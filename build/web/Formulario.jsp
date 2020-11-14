<%-- 
    Document   : Formulario
    Created on : 10/11/2020, 09:58:49 PM
    Author     : betza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        
    <title>Formulario</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-4">
                <div class="card-body">
                        <div class="form-group">
                        <div class="p-3 mb-2 bg-dark text-light text-center">FORMULARIO DE AFILIACIÓN DEL COMERCIO</div>
                        <br>
                        <img src="img/ARTE.jpg" alt="200" width="220"/>
                        </div>
            </div>

                </div>
            <div class="col-sm-8">
                <form class="form-sign" action="Controlador" method="POST">
                <div class="card-body">
                <div class="container text-center h-40 bg-light d-flex justify-content-center align-items-center">
                        <div class="form-group">
                            <div class="p-3 mb-2 bg-dark text-light">DATOS DEL COMERCIO</div>
                            <div>
                            <label>Llene el formulario con los datos requeridos los cuales son obligatorios</label>
                            </div>
                        </div>
            </div>
            <div class="card-body">
                    <div class="form-group">
                    <label>Nombre del Comercio</label>
                     <input type="text" class="form-control" id="nombre" name="nombre" required="required" placeholder="Ingrese el nombre del comercio ">
                        </div>
                    <div class="form-group">
                        <label>Ofrece Bienes y/o servicios</label>
                        <input type="text" class="form-control" id="servicio" name="servicio" required="required" placeholder="Ingrese bienes y/o servicios ofrecidos">
                    </div>
                        <div class="form-group">
                        <label>Giro principal de negocio</label>
                        <input type="text" class="form-control" id="giro" name="giro" required="required" placeholder="Ingrese el giro principal del negocio (Fintech, Servicios especializados, Informpatica y Computación, Asesoría, Diseño, Accesorios, Equipo de Cómputo, Hobbies, Ropa y Moda(*)">
                    </div>
                        <div class="form-group">
                        <label>Correo Electrónico</label>
                        <input type="text" class="form-control" id="correoC" name="correoC" required="required" placeholder="Ingrese el correo electrónico del negocio">
                    </div>
            </div>
            </div>
                <div class="card-body">
                    <div class = "container text-center h40 bg-light d-flex justify-content-center align-items-center">
                        <div class="form-group">
                            <div class="p-3 mb-2 bg-dark text-light">DATOS AFILIADO</div>
                            <div>
                            <label>Llene el formulario con los datos requeridos los cuales son obligatorios</label>
                            </div>
                        </div>
                        </div>
                    <div class="card-body">
                        
                        <div class="form-group">
                        <label>Nombres del Afiliado</label>
                        <input type="text" class="form-control" id="nombreA" name="nombreA" required="required" placeholder="Ingrese los Nombres del Afiliado">
                    </div>
                        <div class="form-group">
                        <label>Apellidos del Afiliado</label>
                        <input type="text" class="form-control" id="apellido" name="apellido" required="required" placeholder="Ingrese los Apellidos del Afiliado">
                    </div>
                   
                        <div class="form-group">
                        <label>Correo Electrónico</label>
                        <input type="text" class="form-control" id="correoA" name="correoA" required="required" placeholder="Ingrese el Correo Electrónico del Afiliado">
                    </div>
                    
                        <div class="form-group">
                        <label>Teléfono</label>
                        <input type="text" class="form-control" id="tel" name="tel" required="required" placeholder="Ingrese el núero de Teléfono del Afiliado">
                    </div>
                    
                    <div class="form-group">
                        <label>Fecha de Nacimiento</label>
                        <input type="text" class="form-control" id="fecha" name="fecha" placeholder="Ingrese la Fecha de Nacimiento del Afiliado">
                    </div>
                        
                        
                        
<div class="modal fade" id="miModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">TÉRMINOS Y CONDICIONES GENERALES Y POLÍTICAS DE PRIVACIDAD DE CHAPINFY </h4>
			</div>
			<div class="modal-body">
				                        
                        <p class="card-text"><font color="black" face="Helvetica">
                            En forma previa a la utilización de cualquier servicio o contenido ofrecido en el sito web www.ecommerce.institute, debe leerse completa y atentamente este documento.
<br>
Los presentes Términos y Condiciones constituyen las normas y reglas dispuestas para el desarrollo de las actividades correspondientes al “eCommerce Institute”, que son eventos de networking social, de negocios, de difusión y capacitación, con el objetivo de acelerar la incorporación del canal online a personas y empresas en distintos países de América Latina.
<br>
Los servicios y contenidos ofrecidos en las iniciativas se exponen, explican y ofrecen en el sitio web www.ecommerce.institute y otros dominios secundarios conexos- (en adelante el “Sitio”).
<br>
El Instituto Latinoamericano de Comercio Electrónico eConfianza Asociación Civil (en adelante “eCommerce Institute”), (y ambos en adelante los “Organizadores”), por lo que cada vez que en este documento se haga mención a www.ecommerce.institute nos estaremos refiriendo también e indistintamente a sus Organizadores.
<br>
Los servicios de eCommerce Institute no son de libre utilización, sino que están sujetos a un conjunto de pautas que regulan su uso. El aprovechamiento que un individuo o empresa haga de los servicios incluidos en el Sitio, sólo se considerará lícito y autorizado cuando lo sea en cumplimiento de las obligaciones impuestas, con los límites y alcances aquí delineados, así como los que surjan de disposiciones complementarias o accesorias, y/o de las diferentes normativas legales de orden nacional e internacional cuya aplicación corresponda.
<br>
eCommerce Institute podrá en cualquier momento y sin necesidad de previo aviso modificar estos Términos y Condiciones. Tales modificaciones serán operativas a partir de su fijación en el Sitio. Los visitantes del Sitio deberán mantenerse actualizados en cuanto a los términos aquí incluidos ingresando en forma periódica al apartado de Términos y Condiciones del Sitio.
<br>
<br>
Capítulo Local
<br>
En los eCommerce Day participarán también otros entes, tales como cámaras empresariales u otras instituciones, que actuarán como los organizadores locales en cada país, en adelante los “Capítulos Locales”, con el objetivo central promover el desarrollo del Comercio Electrónico y los Negocios por Internet y acelerar la incorporación del canal online por parte de las empresas y emprendedores conociendo de primer fuente a sus actores, quienes son los que hacen posible este crecimiento y el “state of the art” del sector a partir de los protagonistas de la Economía Digital a nivel local, regional y mundial.
<br>
<br>
Marcas
<br>
Las marcas  “eCommerce Day” y “eLab” que aparezcan en el Sitio, los carteles, folletos, correos electrónicos y todo otro instrumento donde se promocionen los eventos, son marcas registradas y corresponden a eCommerce Institute y a LP respectivamente, por lo que dichas marcas no podrán ser utilizadas por ninguna persona o empresa sin previa autorización por escrito de los Organizadores.
<br>
Actividad
<br>
www.ecommerceday.org se dedica a la organización de eventos en relación con el la promoción del comercio electrónico y la economía digital. La asistencia a dichos eventos se puede contratar a través del sitio web.
<br>
Contenidos e información suministrada en el Sitio
<br>
eCommerce Institute se reserva el derecho a modificar la oferta comercial presentada en el Sitio (modificaciones sobre eventos, fechas, precios, promociones y otras condiciones comerciales y de servicio) en cualquier momento.
<br>
eCommerce Institute hace todos los esfuerzos dentro de sus medios para ofrecer la información contenida en el Sitio de forma veraz y sin errores tipográficos. En el caso que en algún momento se produjera algún error de este tipo, ajeno en todo momento a la voluntad de www.einstituto.org, se procedería inmediatamente a su corrección. De existir un error tipográfico en alguno de los precios mostrados y algún cliente hubiera tomado una decisión de compra basada en dicho error www.einstituto.org le comunicará al cliente dicho error y el cliente tendrá derecho a rescindir su compra sin ningún coste por su parte.
<br>
Los contenidos del Sitio podrían, en ocasiones, mostrar información provisional sobre algunos productos o servicios. En el caso que la información facilitada no correspondiera a las características del producto o servicio el cliente tendrá derecho a rescindir su compra sin ningún coste por su parte.
<br>
eCommerce Institute no es responsable ni directa ni indirectamente de ninguna de las informaciones, contenidos, afirmaciones y expresiones que contengan los productos comercializados en el Sitio. Dicha responsabilidad recae en todo momento en los oferentes de dichos productos. El cliente o usuario entiende que el Sitio es un mero intermediario entre él y dicho oferente.www.einsituto.org no es responsable ni directa ni indirectamente ni garantiza los servicios ofrecidos y prestados por terceros. Esto es aplicable especialmente a Proveedores, Servicio Técnico, en especial los explotadores de la localización del evento, o personal de servicio al que www.einstituto.org contrate para realizar actividades en el marco de los eventos.
<br>
eCommerce Institute sólo se hace responsable por daños que han sido realizados dolosamente o por negligencia grave por parte del personal propio.
<br>
<br>
Sistema de venta eCommerce DAY
<br>
Para tomar parte en las ferias y eventos organizados por www.ecommerceday.org el usuario puede elegir entre diversas formas de solicitar su registro:
<br>
Internet a través del Formulario de Registro.
Por carta a la dirección indicada más arriba o correo electrónico
Impuestos aplicables
<br>
Los precios de los productos expuestos en la página web de www.ecommerceday.org, no incluyen el Impuesto sobre el Valor Añadido (IVA) que, en su caso, sea procedente aplicar.
<br>
Forma de pago
<br>
a) Pagos en relación con los servicios relativos al Evento.

Todos los pagos completos para servicios en relación con el Evento, tarifas de participación a través de la compra de entradas, servicios de esponsorización, reserva y alquiler de Stands, etc. deben ser realizados mediante transferencia salvo acuerdo en contrario por escrito con un mínimo de 7 días de antelación antes del comienzo del evento a la cuenta que nosotros facilitemos. En caso contrario, www.ecommerceday.org queda autorizado a denegar la participación en el evento. Los pagos o garantías prestados hasta entonces serán sólo reintegrados, en el caso de que así lo consideremos.
<br>
b) Pagos en relación con las entradas al evento

Los pagos para la las entradas para participar del evento deberán ser realizados mediante los medios de pago ofrecidos con un mínimo de 1 día de antelación. En caso contrario www.ecommerceday.org queda autorizado a denegar acceso al evento.
			
                        <div>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
                        </div>
                        </div>
		</div>
	</div>
</div>
                        
                        
                        
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" value="acepto" name="acepto" id="acepto">
                                <a data-toggle="modal" data-target="#miModal"><font color="blue"><u>
                                        Acepto terminos y condiciones</u></font> </a>
                            </label>
                        </div>
      
                    <input type="submit" name="accion" Value="Enviar Solicitud" class="btn btn-primary">
                    <a href="Formulario.jsp" class="btn btn-primary">Cancelar</a>
                
            </div> 
                </div>
                    </form>
            </div>
            </div>
        
      
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>

