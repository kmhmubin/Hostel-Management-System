<?php

$base_url = "http://localhost/Hostel-Management-System/";

$ses = new \sessionManager\sessionManager();
//$ses->start();
$name = $ses->Get("name");
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><?php echo $GLOBALS['title']; ?></title>

    <!-- Bootstrap Core CSS -->
    <link href="<?php echo $base_url; ?>dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo $base_url; ?>dist/css/datepicker.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<?php echo $base_url; ?>dist/css/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="<?php echo $base_url; ?>dist/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<?php echo $base_url; ?>dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="<?php echo $base_url; ?>dist/css/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<?php echo $base_url; ?>dist/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="<?php echo $base_url; ?>dist/css/dataTable.css" rel="stylesheet" type="text/css">
    <link href="<?php echo $base_url; ?>dist/css/timepicker.css" rel="stylesheet" type="text/css">
    <link href="<?php echo $base_url; ?>dist/css/calendar.css" rel="stylesheet" type="text/css">
    <link href="<?php echo $base_url; ?>dist/css/custom_2.css" rel="stylesheet" type="text/css">
    <link href="<?php echo $base_url; ?>dist/css/app.css" rel="stylesheet" type="text/css">



</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <img alt="HMS" class="pull-left" src="<?php echo $base_url . 'site/images/logonav.png' ?>"><a class="navbar-brand titlehms" href="<?php echo $base_url . 'dashboard.php' ?>">Hostel Management System</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">

                <li>
                    <h5 class="titlehms"><?php echo $name ?></h5>
                </li>

                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">

                        <li><a href="<?php echo $base_url; ?>ui/setting/adduser.php"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="<?php echo $base_url; ?>index.php"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="<?php echo $base_url . 'dashboard.php'; ?>"><i class="fa fa-2x fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-file-text fa-fw"></i>Attendence<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<?php echo $base_url . 'ui/attendence/add.php' ?>">Add Attendence</a>
                                </li>
                                <li>
                                    <a href="<?php echo $base_url . 'ui/attendence/list.php' ?>">Attendence List View</a>
                                </li>
                                <li>
                                    <a href="<?php echo $base_url . 'ui/attendence/view.php' ?>">Attendence View</a>
                                </li>

                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-maxcdn fa-fw"></i>Meal Manage<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<?php echo $base_url . 'ui/meal/add.php' ?>">Add New</a>
                                </li>
                                <li>
                                    <a href="<?php echo $base_url . 'ui/meal/view.php' ?>">List View</a>
                                </li>


                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-money fa-fw"></i>Cost Manage<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<?php echo $base_url . 'ui/cost/add.php' ?>">Add New</a>
                                </li>
                                <li>
                                    <a href="<?php echo $base_url . 'ui/cost/view.php' ?>">List View</a>
                                </li>


                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-users fa-fw"></i>Students Manage<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<?php echo $base_url . 'ui/studentManage/admission.php' ?>">Admission</a>
                                </li>
                                <li>
                                    <a href="<?php echo $base_url . 'ui/studentManage/studentlist.php' ?>">Student List</a>
                                </li>

                                <li>
                                    <a href="<?php echo $base_url . 'ui/studentManage/deposit.php' ?>">Deposit</a>
                                </li>
                                <li>
                                    <a href="<?php echo $base_url . 'ui/studentManage/seatalocation.php' ?>">Seat Alocation</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-money fa-fw"></i>Students Payment<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<?php echo $base_url . 'ui/stdpayment/add.php' ?>">Add</a>
                                </li>
                                <li>
                                    <a href="<?php echo $base_url . 'ui/stdpayment/approvallist.php' ?>">Approval List</a>
                                </li>

                                <li>
                                    <a href="<?php echo $base_url . 'ui/stdpayment/view.php' ?>">View</a>
                                </li>

                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-users fa-fw"></i>Employee Manage<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<?php echo $base_url . 'ui/employee/add.php' ?>">Add New</a>
                                </li>
                                <li>
                                    <a href="<?php echo $base_url . 'ui/employee/view.php' ?>">List view</a>
                                </li>

                                <li>
                                    <a href="<?php echo $base_url . 'ui/employee/salaryadd.php' ?>">Salary Add</a>
                                </li>
                                <li>
                                    <a href="<?php echo $base_url . 'ui/employee/salaryview.php' ?>">Salary View</a>
                                </li>

                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-dollar fa-fw"></i>Vendor Payment<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<?php echo $base_url . 'ui/payment/create.php' ?>">Add New</a>
                                </li>
                                <li>
                                    <a href="<?php echo $base_url . 'ui/payment/view.php' ?>">List View</a>
                                </li>

                            </ul>
                        </li>

                        <li>
                            <a href="#"><i class="fa  fa-file-text fa-fw"></i>Bill Manage<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<?php echo $base_url . 'ui/bill/add.php' ?>">Add New</a>
                                </li>
                                <li>
                                    <a href="<?php echo $base_url . 'ui/bill/view.php' ?>">List View</a>
                                </li>


                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-list-alt fa-fw"></i>Notice Board<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<?php echo $base_url . 'ui/notice/create.php' ?>">Notice Add/List</a>
                                </li>



                            </ul>
                        </li>

                        <li>
                            <a href="#"><i class="fa fa-cog fa-fw"></i>Setting<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<?php echo $base_url . 'ui/setting/adduser.php' ?>">System Admin User</a>
                                </li>


                            </ul>
                        </li>
                        <li>

                            <a href="#"><i class="fa fa-gears fa-fw"></i>Setup<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<?php echo $base_url . 'ui/setup/fees.php' ?>">Fees</a>
                                </li>
                                <li>
                                    <a href="<?php echo $base_url . 'ui/setup/mealrate.php' ?>">Meal Rate</a>
                                </li>
                                <li>
                                    <a href="<?php echo $base_url . 'ui/setup/timeset.php' ?>">Time Set</a>
                                </li>
                                <li>
                                    <a href="<?php echo $base_url . 'ui/setup/block.php' ?>">Blocks</a>
                                </li>
                                <li>
                                    <a href="<?php echo $base_url . 'ui/setup/room.php' ?>">Rooms</a>
                                </li>

                            </ul>
                        </li>


                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>