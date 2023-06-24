<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['vamsaid']==0)) {
  header('location:logout.php');
  } else{



  ?>
<!doctype html>
<html lang="en">

<head>
  
    <title>Garbage Management System: Between Dates Report of Garbage Bin</title>

    <link rel="stylesheet" href="../assets/vendor/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="../assets/vendor/fontawesome/css/font-awesome.min.css">

    <link rel="stylesheet" href="../assets/vendor/jquery-datatable/dataTables.bootstrap4.min.css">

    <link  rel="stylesheet" href="../assets/css/main.css">
</head>
<body class="theme-indigo">
    <!-- Page Loader -->
    
<?php include_once('includes/header.php');?>

    <div class="main_content" id="main-content">
       <?php include_once('includes/sidebar.php');?>

      

        <div class="page">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="javascript:void(0);">Between Dates Report of Garbage Bin</a>
            </nav>
            <div class="container-fluid">            
                <div class="row clearfix">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="header">
                               <?php
$fdate=$_POST['fromdate'];
$tdate=$_POST['todate'];

?>
<h5 align="center" style="color:blue">Report from <?php echo $fdate?> to <?php echo $tdate?></h5>
                            </div>
                            <div class="body">
                                <div class="table-responsive">
                                    
                                    <table class="table table-bordered table-striped table-hover js-basic-example dataTable">
                                        <thead>
                                           <tr>
                                               <th>S.No</th>
                                        <th>Bin ID</th>
                                        <th>Area</th>
                                        <th>Locality</th>
                                        <th>Assign Date</th>
                                    <th>Status</th>
                                        <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                           <tr>
                                               <th>S.No</th>
                                        <th>Bin ID</th>
                                        <th>Area</th>
                                        <th>Locality</th>
                                        <th>Assign Date</th>
                                    <th>Status</th>
                                        <th>Action</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <tr>
                                               <?php
$sql="SELECT * from  tblbin where date(AssignDate) between '$fdate' and '$tdate'";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);

$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $row)
{               ?>
                                               <td><?php echo htmlentities($cnt);?></td>
                                        <td><?php  echo htmlentities($row->BinID);?></td>
                                        <td><?php  echo htmlentities($row->Area);?></td>
                                        <td><?php  echo htmlentities($row->Locality);?></td>
                                        <td><?php  echo htmlentities($row->AssignDate);?></td>
                                             <?php if($row->Status==""){ ?>

                     <td><?php echo "Not Updated Yet"; ?></td>
<?php } else { ?>                  <td><?php  echo htmlentities($row->Status);?>
                  </td>
                  <?php } ?>         
                 
                                        <td><a href="view-bin-detail.php?editid=<?php echo htmlentities ($row->ID);?>&&binid=<?php echo htmlentities ($row->BinID);?>"class="btn btn-primary">View</a></td>
                                            </tr>
                                         <?php $cnt=$cnt+1;}} ?> 
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
               
            </div>
        </div>
    </div>


<!-- Jquery Core Js --> 
<script src="../assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 
<script src="../assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 

<!-- Jquery DataTable Plugin Js --> 
<script src="../assets/bundles/datatablescripts.bundle.js"></script>
<script src="../assets/vendor/jquery-datatable/buttons/dataTables.buttons.min.js"></script>
<script src="../assets/vendor/jquery-datatable/buttons/buttons.bootstrap4.min.js"></script>
<script src="../assets/vendor/jquery-datatable/buttons/buttons.colVis.min.js"></script>
<script src="../assets/vendor/jquery-datatable/buttons/buttons.flash.min.js"></script>
<script src="../assets/vendor/jquery-datatable/buttons/buttons.html5.min.js"></script>
<script src="../assets/vendor/jquery-datatable/buttons/buttons.print.min.js"></script>

<script src="../assets/js/theme.js"></script><!-- Custom Js --> 
<script src="../assets/js/pages/tables/jquery-datatable.js"></script>
</body>
</html><?php }  ?>