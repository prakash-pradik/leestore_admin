<!DOCTYPE html>
<html lang="en">

<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daily Sales Print</title>
    <style>
        @page *{
            margin-top: 2.54cm;
            margin-bottom: 2.54cm;
            margin-left: 3.175cm;
            margin-right: 3.175cm;
        }
        header{
            margin-bottom:20px;
        }
        table{
            width: 100%;
        }
        .invoice table {            
            border-spacing: 0;
            margin-bottom: 10px;
            border: 1px solid ;
        }

        .invoice table tr,
        .invoice table tr td,
        .invoice table tr th {
            padding: 10px;
            border: 1px solid;
        }

        .invoice table th {
            white-space: nowrap;
            font-weight: bold;
            font-size: 16px;
        }
        footer {
            width: 100%;
            text-align: center;
            color: #777;
            border-top: 1px solid #aaa;
            padding: 8px 0;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="card" style="padding-top:1rem;">
            <div class="card-body">
                <div class="overflow-auto">
                    <div style="min-width: 600px">
                        <header>
                            <table>
                                <tr>
                                    <td>
                                        <a href="javascript:;">
                                            <img src="<?php echo $base_url; ?>/assets/img/lee_store.png" width="100" alt="">
                                        </a>
                                    </td>
                                    <td class="text-right">
                                        <div>J.A Complex, R.C Church (Opp),</div>
                                        <div>Ayyanarpuram 1st Street,</div>
                                        <div>Pudukkottai - 622001.</div>
                                        <div>+91- 99945 78802</div>
                                        <div>info@leestoreindia.com</div>
                                    </td>
                                </tr>
                            </table>
                        </header>
                        <h3 class="text-center" style="padding-bottom:10px"><?php echo $day_type; ?> Sales Report</h3>
                        <div class="invoice">
                            <table>
                                <thead>
                                    <tr>
                                        <th class="text-center">Sl.No</th>
                                        <th>Details</th>
                                        <th class="text-right">Debit Amt(₹)</th>
                                        <th class="text-right">Credit Amt(₹)</th>
                                        <th>Sales Person</th>
                                        <th>Date</th>
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
                                        <td class="">
                                            <?php echo date('d-m-Y h:i a', strtotime($sale['date_added'])); ?>
                                        </td>
                                    </tr>
                                    <?php
                                    $i++;
                                        }
                                    }?>
                                    
                                </tbody>
                            </table>
                        <div>
                        <div style="padding: 10px 0;"> Receipt Created at <?php echo date('d-M-Y h:i a'); ?></div>
                        <footer>Receipt was created on a computer and is valid without the signature and seal.</footer>
                    </div>
                    <!--DO NOT DELETE THIS div. IT is responsible for showing footer always at the bottom-->
                    <div></div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>