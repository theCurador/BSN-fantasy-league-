@extends('test.template')

@section('content')
<div class="container">
	<div class="panel panel-default">
		<div class="panel-body">
			<div class="row">
				<div class="col-md-6"><h3>Žaidėjų sąrašas</h3></div>
				<div class="col-md-6"><h3>Taškai: 300</h3></div>
			</div> 
			<div class="row">
				<div class="col-md-6">
					<table class="table table-bordered table-responsive">
						<tr>							
							<td>#</td>
							<td>Žaidėjo vardas</td>
							<td>Pozicija</td>
							<td>Klubas</td>
							<td>Efektyvumas</td>							
							<td>Kaina</td>
						</tr>
						<tr>				
							<td>1</td>
							<td>Vytautas Šulskis</td>
							<td>Puolėjas</td>
							<td>Vytautas</td>
							<td>19.0</td>							
							<td>100</td>
						</tr>
						<tr>
							<td>2</td>
							<td>Karolis Guščikas</td>
							<td>Puolėjas</td>
							<td>Šiauliai</td>
							<td>15</td>							
							<td>100</td>
						</tr>
						<tr>							
							<td>3</td>
							<td>Daniel Ewing</td>
							<td>Gynėjas</td>
							<td>Neptūnas</td>
							<td>11.4</td>							
							<td>100</td>
						</tr>
					</table>

				</div>
				<div class="col-md-6"><h3>Kreditai: 1000</h3>
					<label for="sel1">Pasirinkite klubą</label>
					<select class="form-control custom-select-club-width" id="sel1">
						<option>Visi klubai</option>
						<option>Šiauliai</option>
						<option>Žalgiris</option>
						<option>Vytautas</option>
					</select>
					
					<label for="sel2">Pasirinkite poziciją</label>
					<select class="form-control custom-select-position-width" id="sel2">
						<option>Visos pozicijos</option>
						<option>Gynėjas</option>
						<option>Puolėjas</option>
						<option>Lengvasis kraštas</option>
						<option>Sunkusis kraštas</option>
						<option>Centras</option>
					</select>
					
					<label for="table1">Žaidėjai</label>
					<table class="table table-bordered table-responsive" id="table1">
						<tr>							
							<td>Pirkti</td>
							<td>Žaidėjo vardas</td>
							<td>Pozicija</td>
							<td>Klubas</td>
							<td>EFF</td>							
							<td>Kaina</td>
						</tr>
						<tr>				
							<td class="text-center"><span class="glyphicon glyphicon glyphicon-plus"></span></td>
							<td>Vytautas Šulskis</td>
							<td>Puolėjas</td>
							<td>Vytautas</td>
							<td>19.0</td>							
							<td>100</td>
						</tr>
						<tr>
							<td class="text-center"><span class="glyphicon glyphicon glyphicon-plus"></span></td>
							<td>Karolis Guščikas</td>
							<td>Puolėjas</td>
							<td>Šiauliai</td>
							<td>15</td>							
							<td>100</td>
						</tr>
						<tr>							
							<td class="text-center"><span class="glyphicon glyphicon glyphicon-plus"></span></td>
							<td>Daniel Ewing</td>
							<td>Gynėjas</td>
							<td>Neptūnas</td>
							<td>11.4</td>							
							<td>100</td>
						</tr>
					</table>
					
					<nav>
						<ul class="pagination">
							<li>
								<a href="#" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
								</a>
							</li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li>
								<a href="#" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
								</a>
							</li>
						</ul>
					</nav>

				</div>
			</div> 

		</div>
	</div>
</div>
@stop