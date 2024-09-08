// Call the dataTables jQuery plugin
$(document).ready(function() {
	$('#dataTable').DataTable();
	$('#dataTable1').DataTable();
	$('#dataTable2').DataTable();

		$('#dataTable_waitinglist').DataTable({
		 pageLength : 5,
        lengthMenu: [[5, 10, 15, 20, 25,50, -1], [5, 10, 15, 20, 25, 50, 'All']]
    });
		$('#dataTable_waitinglist1').DataTable({
		 pageLength : 5,
        lengthMenu: [[5, 10, 15, 20, 25,50, -1], [5, 10, 15, 20, 25, 50, 'All']]
    });
	
	/*$('#dataTable5').DataTable{( autoWidth: false,
  
                // The columns are explicitly
                // specified as the column array
                columns: [
                    { "width": "5%" },
                    { "width": "20%" },
                    { "width": "5%" },
                    
                ]
	} );*/
		
		$('#dataTable5').DataTable({
  
                // Disable automatic calculation
                // of column widths in the DataTable
                autoWidth: false,
  
                // The columns are explicitly
                // specified as the column array
                columns: [
                    { "width": "20%" },
                    { "width": "35%" },
                    { "width": "35%" },
					{ "width": "5%" }
                   
                ]
            });
		
		$('#dataTable6').DataTable({
  
                // Disable automatic calculation
                // of column widths in the DataTable
                autoWidth: false,
  
                // The columns are explicitly
                // specified as the column array
                columns: [
                    { "width": "45%" },
                    { "width": "35%" },
                    { "width": "5%" }
                   
                ]
            });
		
		
		$('#dataTable7').DataTable({
  
                // Disable automatic calculation
                // of column widths in the DataTable
                autoWidth: false,
  
                // The columns are explicitly
                // specified as the column array
                columns: [
                    { "width": "20%" },
                    { "width": "75%" },
                    { "width": "5%" }
                   
                ]
            });
	
	
});
