/**
 * 
 * 		Éderson Gervásio
 * 
 */


	/*  ############# Gráfico responsável por apresentar o total de despesas por categoria de despesa  #############	*/

$.ajax({
	
	method: 'GET',
	url: '/graficoTotalQuotaGrupo',
    dataType: 'json',
    success: function (data) {
      
    	var donut = Morris.Donut({
	      element: 'chartQuotasGrupoID',
	      resize: true,
	      colors: ["#B0C4DE", "#FF8C00", "#EE82EE", "#4B0082", "#ADFF2F", "#FFFF00", "#00FF7F", "#FF69B4", "#0000CD", "#6B8E23", "#4169E1", "#FFA07A", "#696969"],
	      data:  data,
	      formatter: function (x, data) {
	    	  return data.value; 
	      },
	      hideHover: 'auto'
    	});
        
      donut.options.data.forEach(function(label, i) {
		    var legendItem = $('<span></span>').text( label['label']).prepend('<br><span>&nbsp;</span>');
		    legendItem.find('span')
		      .css('backgroundColor', donut.options.colors[i])
		      .css('width', '15px')
		      .css('display', 'inline-block')
		      .css('margin', '5px')
		      .css('font-size', '10px');
		    $('#lgQuotasGrupoID').append(legendItem)
		});
    }
});


$.ajax({
	
	method: 'GET',
	url: '/graficoTotalImpressaoPorDia',
    dataType: 'json',
    success: function (data) {
      
		var donut = Morris.Donut({
	      element: 'chartTotalImpressaoDiaID',
	      resize: true,
	      colors: ["#0000FF", "#1E90FF", "#ADD8E6", "#87CEFA", "#E0FFFF", "#191970"],
	      data:  data,
	      formatter: function (x, data) {
	    	  return data.value; 
	      },
	      hideHover: 'auto'
		});
	
    }
});
				
		

