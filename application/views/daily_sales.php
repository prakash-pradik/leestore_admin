<div id="page-content">
    <!-- Datatables Header -->
    <div class="content-header">
        <div class="header-section">
            <h1>
                <i class="fa fa-inr"></i>Daily Sales
            </h1>
        </div>
    </div>
    <!-- END Datatables Header -->

    <!-- Datatables Content -->
	<div class="row stats-row">
		<div class="col-sm-6 col-lg-3">
			<a href="javascript:void(0)" class="widget widget-hover-effect1">
				<div class="widget-simple">
					<div class="widget-icon pull-left themed-background-spring">
						<i class="fa fa-inr"></i>
					</div>
					<h3 class="widget-content text-right animation-pullDown">
						₹ <strong><?php if(!empty($today_stats)) { if(!empty($today_stats->today_income)) echo $today_stats->today_income; else echo '0'; } ?></strong><br>
						<small>Total Income</small>
					</h3>
				</div>
			</a>
		</div>
		<div class="col-sm-6 col-lg-3">
			<a href="javascript:void(0)" class="widget widget-hover-effect1">
				<div class="widget-simple">
					<div class="widget-icon pull-left themed-background-fire">
						<i class="fa fa-inr"></i>
					</div>
					<h3 class="widget-content text-right animation-pullDown">
						₹ <strong><?php if(!empty($today_stats)) { if(!empty($today_stats->today_expense)) echo $today_stats->today_expense; else echo '0'; } ?></strong><br>
						<small>Total Expenses</small>
					</h3>
				</div>
			</a>
		</div>
		<div class="col-sm-6 col-lg-3">
			<a href="javascript:void(0)" class="widget widget-hover-effect1">
				<div class="widget-simple">
					<div class="widget-icon pull-left themed-background-amethyst">
						<i class="fa fa-inr"></i>
					</div>
					<h3 class="widget-content text-right animation-pullDown">
						₹ <strong><?php if(!empty($today_stats)) { if(!empty($today_stats->today_available)) echo $today_stats->today_available; else echo '0'; } ?></strong><br>
						<small>Total Available</small>
					</h3>
				</div>
			</a>
		</div>
		<div class="col-sm-6 col-lg-3">
			<a href="javascript:void(0)" class="widget widget-hover-effect1">
				<div class="widget-simple">
					<div class="widget-icon pull-left themed-background-autumn">
						<i class="fa fa-credit-card"></i>
					</div>
					<h3 class="widget-content text-right animation-pullDown">
						₹ <strong><?php if(!empty($gpay_stats)) { if(!empty($gpay_stats->today_gpay)) echo $gpay_stats->today_gpay; else echo '0'; } ?></strong><br>
						<small>Gpay Amount</small>
					</h3>
				</div>
			</a>
		</div>
	</div>
    <div class="block full">
        <div class="block-title">
            <h2><strong>Daily Sales</strong> Table</h2>

            <div class="block-options pull-right">
				<?php if(!empty($daily_sales)) { ?>
				<a href="<?php echo base_url('Admin/print/today'); ?>" class="btn btn-alt btn-default" data-toggle="tooltip" title="Print"><i class="gi gi-print"></i></a>
				<?php } ?>

                <a href="#modal-sales-income" class="btn btn-success " data-toggle="modal" title="Add Income"><i class="fa fa-plus"></i> Add New</a>

                <a href="#modal-sales-expense" class="btn btn-info" data-toggle="modal" title="Add Expenses"><i class="fa fa-plus"></i> Add Expenses</a>
            </div>
        </div>

        <div class="table-responsive">
            <table id="income-datatable" class="table table-vcenter table-bordered table-striped table-hover">
                <thead>
                    <tr>
                        <th class="text-center">Sl.No</th>
                        <th>Detail</th>
                        <th class="text-right">Today Debit (₹)</th>
                        <th class="text-right">Today Credit (₹)</th>
						<th>Sales Person</th>
                        <th class="text-center">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <?php if(!empty($daily_sales)) {
                        $i = 1; 
                        foreach($daily_sales as $sale){
                    ?>
                    <tr>
                        <td class="text-center"><?php echo $i; ?></td>
                        <td class=""><?php echo $sale['description']; ?></td>
                        <td class="text-danger text-right"><h4><?php if($sale['amount_type'] == 'exp') echo $sale['amount'].' ₹'; ?></h4></td>
						<td class="text-success text-right"><h4><?php if($sale['amount_type'] == 'inc') echo $sale['amount'].' ₹'; ?></h4></td>
						<td class=""><?php echo $sale['name']; ?></td>
                        <td class="text-center">
                            <div class="btn-group">
                                <a href="javascript:void(0)" data-user_id="<?php echo $sale['id']; ?>" onclick="deleteSalesData(this);" data-toggle="tooltip" title="Delete" class="btn btn-danger"><i class="fa fa-times"></i></a>
                            </div>
                        </td>
                    </tr>
                    <?php
                    $i++;
                        }
                    }?>
                    
                </tbody>
            </table>
        </div>
    </div>
    <!-- END Datatables Content -->
</div>
