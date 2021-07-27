<canvas id="canvas" style="height: 400px; width: 100%;"></canvas>
<script type="text/javascript">

	var linechart = document.getElementById("canvas");
	var thisyear = '{{$lineData}}';
	var thisyearConv = JSON.parse(thisyear);
	var cars = ["Saab", "Volvo", "BMW"];

	// var thiss = ;
	console.log(thisyearConv)
	var mylinechart = new Chart(linechart,{
		type: 'line',
		data:{
			labels:["January","February","March","April","May","June","July","August","September","October","November","Desember"],
			datasets:[{
				label:"Pendaftar Baru",
				data:thisyearConv,
				fill:false,
				borderColor:"rgb(75, 192, 192)",
				lineTension:0.1
			},
			// {
			// 	label:"Matematika",
			// 	data:[20,40,55,33,70,80,100,null,null,null,null,null,null],
			// 	fill:false,
			// 	borderColor:"rgb(244, 188, 9)",
			// 	lineTension:0.1
			// },
			// {
			// 	label:"Program Kelas",
			// 	data:[34,50,75,50,56,50,60,51,55,54,50,null,null],
			// 	fill:false,
			// 	borderColor:"rgb(255, 132, 158)",
			// 	lineTension:0.1
			// }
			]
		},
		options:{
			
		}
	})
	// new Chart(document.getElementById("canvas"),{"type":"line","data":{"labels":["January","February","March","April","May","June","July"],"datasets":[{"label":"My First Dataset","data":[65,59,80,81,56,55,40],"fill":false,"borderColor":"rgb(75, 192, 192)","lineTension":0.1}]},"options":{}});
</script>