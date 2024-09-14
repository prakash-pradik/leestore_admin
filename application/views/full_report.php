<div id="page-content">
    <!-- Datatables Header -->
    <div class="content-header">
        <div class="header-section">
            <h1>
                <i class="fa fa-table"></i>Full Reports
            </h1>
        </div>
    </div>
    <!-- END Datatables Header -->

    <!-- Datatables Content -->
	<div class="block full">
        <div class="block-title">
            <h2><strong>Full Reports</strong> Table</h2>
            <div class="block-options pull-right">
				<a href="<?php echo base_url('Admin/print/all'); ?>" class="btn btn-alt btn-default" data-toggle="tooltip" title="Print"><i class="gi gi-print"></i></a>
            </div>
        </div>

        <div class="table-responsive">
            <table id="income-datatable" class="table table-vcenter table-bordered table-striped table-hover">
                <thead>
                    <tr>
                        <th class="text-center">Sl.No</th>
                        <th>Detail</th>
                        <th class="text-right">Debit Amount (₹)</th>
                        <th class="text-right">Credit Amount (₹)</th>
						<th>Sales Person</th>
                        <th>Date Added</th>
                        <!-- <th class="text-center">Actions</th> -->
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
                        <td class=""><?php echo date('d-m-Y H:i a', strtotime($sale['date_added'])); ?></td>
                        <!-- <td class="text-center">
                            <div class="btn-group">
                                <a href="javascript:void(0)" data-user_id="<?php echo $sale['id']; ?>" onclick="deleteSalesData(this);" data-toggle="tooltip" title="Delete" class="btn btn-danger"><i class="fa fa-times"></i></a>
                            </div>
                        </td> -->
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
