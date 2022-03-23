<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Inicio.aspx.vb" Inherits="Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
	<br />
	<br />
	<div class="row">
		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block w-100" src="img/Carusel/413.jpg" alt="First slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="img/Carusel/323.jpg" alt="Second slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="img/Carusel/353.jpg" alt="Third slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
			<br />
		</div>
	</div>
	<br />


    <%-- Ofertas --%>
    <h3 class="font-italic">Ofertas Especiales</h3>
    <hr />
    <div class="row">
        <div class="card mr-sm-5 ml-sm-5" style="width: 18rem;">
            <img class="card-img-top" src="img/OfertasEspeciales/rcf-hdl-6-a-lineal-activo-compacto-alto-rendimiento-.jpg" alt="Card image cap">
            <div class="card-body">
                <p class="card-title"><a style="text-decoration: none">RCF HDL 6-A LINEAL ACTIVO  </a><span class="badge badge-primary">Oferta</span></p>
                <div class="col-9 pl-lg-0">
                    <p class="text-primary">Antes: <a style="text-decoration: line-through">$5,685.00  IVA incl.</a></p>
                    <p>Ahora: <a>$4,542.50  IVA incl.</a></p>
                </div>
                <a class="btn btn-outline-primary btn-lg btn-block">Comprar</a>
            </div>
        </div>
        <div class="card mr-sm-5 ml-sm-5" style="width: 18rem;">
            <img class="card-img-top" src="img/OfertasEspeciales/avid-teclado-con-serigrafia-de-pro-tools-para-sistemas-windows.jpg" alt="Card image cap">
            <div class="card-body">
                <p class="card-title"><a style="text-decoration: none">AVID TECLADO CON SERIGRAFIA  </a><span class="badge badge-primary">Oferta</span></p>
                <div class="col-9 pl-lg-0">
                    <p class="text-primary">Antes: <a style="text-decoration: line-through">$5,685.00  IVA incl.</a></p>
                    <p>Ahora: <a>$4,542.50  IVA incl.</a></p>
                </div>
                <a class="btn btn-outline-primary btn-lg btn-block">Comprar</a>
            </div>
        </div>
        <div class="card mr-sm-5 ml-sm-5" style="width: 18rem;">
            <img class="card-img-top" src="img/OfertasEspeciales/0117602805.jpg" alt="Card image cap">
            <div class="card-body">
                <p class="card-title"><a style="text-decoration: none">Fender Eric Clapton Stratocaster  </a><span class="badge badge-primary">Oferta</span></p>
                <div class="col-9 pl-lg-0">
                    <p class="text-primary">Antes: <a style="text-decoration: line-through">$5,685.00  IVA incl.</a></p>
                    <p>Ahora: <a>$4,542.50  IVA incl.</a></p>
                </div>
                <a class="btn btn-outline-primary btn-lg btn-block">Comprar</a>
            </div>
        </div>
    </div>
     <div class="row mt-sm-3">
            <div class="card mr-sm-5 ml-sm-5" style="width: 18rem;">
                <img class="card-img-top" src="img/Destacados2/ik-multimedia-irig-keys-pro-37-taclas-teclado-universal-para-dispositivos-ios.jpg" alt="Card image cap">
                <div class="card-body">
                    <p class="card-title"><a style="text-decoration: none">IR KEYS PRO  </a><span class="badge badge-primary">Oferta</span></p>
                    <div class="col-9 pl-lg-0">
                        <p class="text-primary">Antes: <a style="text-decoration: line-through">$5,685.00  IVA incl.</a></p>
                        <p>Ahora: <a>$4,542.50  IVA incl.</a></p>
                    </div>
                    <a class="btn btn-outline-primary btn-lg btn-block">Comprar</a>
                </div>
            </div>
            <div class="card mr-sm-5 ml-sm-5" style="width: 18rem;">
                <img class="card-img-top" src="img/Destacados2/mackie-1402-vlz4-mezclador-compacto-de-14-canales.jpg" alt="Card image cap">
                <div class="card-body">
                    <p class="card-title"><a style="text-decoration: none">MACKIE 1402-VLZ4  </a><span class="badge badge-primary">Oferta</span></p>
                    <div class="col-9 pl-lg-0">
                        <p class="text-primary">Antes: <a style="text-decoration: line-through">$5,685.00  IVA incl.</a></p>
                        <p>Ahora: <a>$4,542.50  IVA incl.</a></p>
                    </div>
                    <a class="btn btn-outline-primary btn-lg btn-block">Comprar</a>
                </div>
            </div>
            <div class="card mr-sm-5 ml-sm-5" style="width: 18rem;">
                <img class="card-img-top" src="img/Destacados2/zildjian-a-custom-crash-18-.jpg" alt="Card image cap">
                <div class="card-body">
                    <p class="card-title"><a style="text-decoration: none">Crash Zildjian Custom 18"  </a><span class="badge badge-primary">Oferta</span></p>
                    <div class="col-9 pl-lg-0">
                        <p class="text-primary">Antes: <a style="text-decoration: line-through">$5,685.00  IVA incl.</a></p>
                        <p>Ahora: <a>$4,542.50  IVA incl.</a></p>
                    </div>
                    <a class="btn btn-outline-primary btn-lg btn-block">Comprar</a>
                </div>
            </div>
        </div>
    <hr />

    <%-- Best Seller --%>
    <h5 class="font-italic">Mas Vendidos</h5>
    <div class="row">
        <div class="card mr-sm-5 ml-sm-5" style="width: 18rem;">
            <img class="card-img-top" src="img/Mas%20Vendidos/GSMINIEMAH.jpg" alt="Card image cap">
            <div class="card-body">
                <p class="card-title"><a style="text-decoration: none">Taylor Gs Mini-E Koa  </a></p>
                <div class="col-9 pl-lg-0">
                    <p>Ahora: <a>$17,307.00 IVA incl.</a></p>
                </div>
                <a class="btn btn-outline-primary btn-lg btn-block">Comprar</a>
            </div>
        </div>
        <div class="card mr-sm-5 ml-sm-5" style="width: 18rem;">
            <img class="card-img-top" src="img/Mas%20Vendidos/0143613305.jpg" alt="Card image cap">
            <div class="card-body">
                <p class="card-title"><a style="text-decoration: none">Fender Deluxe Active Jazz Bass  </a></p>
                <div class="col-9 pl-lg-0">
                    <p>Ahora: <a>$16,106.00 IVA incl.</a></p>
                </div>
                <a class="btn btn-outline-primary btn-lg btn-block">Comprar</a>
            </div>
        </div>
        <div class="card mr-sm-5 ml-sm-5" style="width: 18rem;">
            <img class="card-img-top" src="img/Mas%20Vendidos/EXBT025-1.jpg" alt="Card image cap">
            <div class="card-body">
                <p class="card-title"><a style="text-decoration: none">Baterias Acustica Extreme Bateria Junior  </a></p>
                <div class="col-9 pl-lg-0">
                    <p>Ahora: <a>$ 3,620.00 IVA incl.</a></p>
                </div>
                <a class="btn btn-outline-primary btn-lg btn-block">Comprar</a>
            </div>
        </div>
    </div>
    <hr />

    <%-- Destacado --%>
	<h5 class="font-italic">Destacado</h5>
	<div class="row">
		<div class="card mr-sm-5 ml-sm-5" style="width: 18rem;">
			<img class="card-img-top" src="img/Destacados1/akg-p220-micrófono-condensador.jpg" alt="Card image cap">
			<div class="card-body">
                <p class="card-title"><a style="text-decoration: none">AKG P220  </a><span class="badge badge-pill badge-success">Nuevo</span></p>
                <div class="col-9 pl-lg-0">
                    <p>Ahora: <a>$ 3,055.00 IVA incl.</a></p>
                </div>
                <a class="btn btn-outline-primary btn-lg btn-block">Comprar</a>
			</div>
		</div>
		<div class="card mr-sm-5 ml-sm-5" style="width: 18rem;">
			<img class="card-img-top" src="img/Destacados1/ampeg-gabinete-para-bajo-8x10-300w-.jpg" alt="Card image cap">
			<div class="card-body">
                <p class="card-title"><a style="text-decoration: none">SVT810E  </a><span class="badge badge-pill badge-success">Nuevo</span></p>
                <div class="col-9 pl-lg-0">
                    <p>Ahora: <a>$ 19,398.00 IVA incl.</a></p>
                </div>
                    <a class="btn btn-outline-primary btn-lg btn-block">Comprar</a>
			</div>
		</div>
		<div class="card mr-sm-5 ml-sm-5" style="width: 18rem;">
			<img class="card-img-top" src="img/Destacados1/b-52-monitor-pasivo-de-15-con-driver-de-1-300w.jpg" alt="Card image cap">
			<div class="card-body">
                <p class="card-title"><a style="text-decoration: none">B-52 MX-MN15  </a><span class="badge badge-pill badge-success">Nuevo</span></p>
                <div class="col-9 pl-lg-0">
                    <p>Ahora: <a>$ 5,685.00 IVA incl.</a></p>
                </div>
                    <a class="btn btn-outline-primary btn-lg btn-block">Comprar</a>
			</div>
		</div>
	</div>
	
	<%--<hr />
	<div class="row m-3">
        <asp:Image ID="Image1" runat="server" src="img/Publicidad/au-t.jpg"></asp:Image>
		<img src="img/Publicidad/au-t.jpg" class="ml-lg-3 rounded" />
		<img src="img/Publicidad/jbl.jpg" class="ml-auto rounded"/>
	</div>
	<br />--%>
  </asp:Content>

