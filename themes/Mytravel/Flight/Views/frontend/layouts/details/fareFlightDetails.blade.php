<style>
    .card {
        border-radius: 15px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        margin: 20px;
    }

    .py-2 {
        background-color: #007bff;
        color: #fff;
    }

    .card-title {
        margin: 0;
    }

    .card-body {
        padding: 20px;
    }

    .table th,
    .table td {
        text-align: center;
    }

    .table-secondary2 {
        background-color: #f8f9fa;
    }

    .icofont-info-circle {
        color: #007bff;
        cursor: pointer;
        font-size: 16px;
    }

    .tooltip-inner {
        background-color: #007bff;
    }

    .tooltip.top .tooltip-arrow {
        border-top-color: #007bff;
    }

    .tooltip.right .tooltip-arrow {
        border-right-color: #007bff;
    }

    .tooltip.bottom .tooltip-arrow {
        border-bottom-color: #007bff;
    }

    .tooltip.left .tooltip-arrow {
        border-left-color: #007bff;
    }
</style>

<div class="card">
    <div class="py-2 border-top border-bottom">
        <h4 class="card-title mx-2">Fare</h4>
        <div class="card-body border-top">
            <h6 class="card-title">Flight Fares</h6>
            <table class="table table-striped w-100">
                <tr>
                    <th>Pax Type</th>
                    <th>Taxes</th>
                    <th class="table-secondary2">Total Fare</th>
                    <th>Fare basis</th>
                </tr>
                @php($taxesTotal = 0)
                @php($totalFare = 0)
                @foreach($offerPriceDetails['pricedOffer']['offerItems'] as $offerItemsKey => $offerItemsVal)
                <tr>
                    <?php if ($offerItemsVal['ptc'] == 'ADT') {
                        $ptc = 'ADULT';
                    } else if ($offerItemsVal['ptc'] == 'CHD') {
                        $ptc = 'CHILD';
                    } else {
                        $ptc = 'OTHER';
                    } ?>
                    <td>{{ $offerItemsVal['count']." x ".$ptc }}</td>
                    <td>
                        @php($offerItems = '')
                        @php($offerAmount = 0)
                        @foreach($offerItemsVal['price']['taxes'] as $taxesKey => $taxesVal)
                        @php($offerItems.= $taxesVal['amount']." ".$taxesVal['currency']." >> ".$taxesVal['code']."<br>")
                        @php($offerAmount+= $taxesVal['amount'])
                        @endforeach
                        {{ $offerAmount." ".$offerItemsVal['price']['currency'] }}
                        <?php $taxesTotal += $offerAmount * $offerItemsVal['count']; ?>
                        <i data-toggle="tooltip" data-placement="{{ $offerItemsKey % 2 == 0 ? 'left' : 'right' }}" title="" class="icofont-info-circle" data-html="true" data-original-title="{{ $offerItems }}"></i>
                    </td>
                    <?php $totalFare += ($offerItemsVal['price']['fullFare'] * $offerItemsVal['count']); ?>
                    <td class="table-secondary2">{{ ($offerItemsVal['price']['fullFare']*$offerItemsVal['count'])." ".$offerItemsVal['price']['currency'] }}</td>
                    <td>{{ $offerItemsVal['fareBasis'][0]}}</td>
                </tr>
                @endforeach
                <tr>
                    <td colspan="3">
                        <h6>Charges & Services</h6>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="3"><small>No Optional services selected</small></td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <h6>Total Fare</h6>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>Total:</td>
                    <td>{{ $taxesTotal }} {{$offerItemsVal['price']['currency']}}</td>
                    <td class="table-secondary2">{{ $totalFare }} {{$offerItemsVal['price']['currency']}}</td>
                </tr>
            </table>
        </div>
    </div>
</div>