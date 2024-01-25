@php($mainUpsellData = [])
@foreach($upsellDetails['upsellList'] as $upsellListKey => $upsellListVal)
{{-- @if($upsellListVal['fareDetails']['brandedFare'][0]['code'] == $brandFlightDetails['brandedFare'][0]['code']) --}}
@php($mainUpsellData = $upsellListVal)
{{-- @endif --}}
@endforeach

<div class="card-header">
    <h4 class="card-title">Fare Family</h4>
</div>
<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col-md-6 flex">
                <span class="text-success mr-1">{{ $mainUpsellData['fareDetails']['brandedFare'][0]['departure'] }}-{{ $mainUpsellData['fareDetails']['brandedFare'][0]['arrival'] }}</span>
                <span class="card-title h5">
                    <input type="hidden" name="brandFareCode" value="{{ $mainUpsellData['fareDetails']['brandedFare'][0]['code'] }}">
                    {{ $mainUpsellData['fareDetails']['brandedFare'][0]['name'] }}
                    <i class="fa fa-info-circle font-size-16" data-toggle="tooltip" data-placement="top" title="" class="icofont-info-circle" data-html="true" data-original-title="{{ $mainUpsellData['fareDetails']['brandedFare'][0]['description'] }}"></i></span>
            </div>
            <?php
            $serviceList = $mainUpsellData['fareDetails']['brandedFare'][0]['serviceList'];
            $separatedByCategory = [];
            foreach ($serviceList as $service) {
                $categoryName = $service['categoryName'];
                // Check if the category name is not already a key in the result array
                if (!isset($separatedByCategory[$categoryName])) {
                    // If not, create an empty array for that category
                    $separatedByCategory[$categoryName] = [];
                }
                // Add the current service to the array of its category
                $separatedByCategory[$categoryName][] = $service;
            }
            // dd($separatedByCategory);
            ?>
            <div class="col-md-6"></div>
        </div>
    </div>
    <div class="card-body row" id="FAQs">
        @foreach($separatedByCategory as $separatedByCategoryKey => $separatedByCategoryVal)
        <?php
        $formattedKey = str_replace(' ', '_', $separatedByCategoryKey);
        ?>
        <div class="col-6 card border-0 mb-1 pb-1">
            <div class="card-header border-bottom-0 p-0">
                <h5 class="mb-0">
                    <button type="button" class="collapse-link btn btn-link btn-block d-flex align-items-md-center p-0" data-toggle="collapse" data-target="#{{ $formattedKey }}" aria-expanded="true" aria-controls="{{ $formattedKey }}">
                        <div class="border border-color-8 rounded-xs border-width-2 p-2 mb-3 mb-md-0 mr-4">
                            
                            <figure id="plus1" class="plus">
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16px" height="16px" class="injected-svg js-svg-injector mb-0" data-parent="#plus1">
                                    <path fill-rule="evenodd" fill="rgb(59, 68, 79)" d="M16.000,9.000 L9.000,9.000 L9.000,16.000 L7.000,16.000 L7.000,9.000 L-0.000,9.000 L-0.000,7.000 L7.000,7.000 L7.000,-0.000 L9.000,-0.000 L9.000,7.000 L16.000,7.000 L16.000,9.000 Z">
                                    </path>
                                </svg>
                            </figure>
                            <figure id="rectangle" class="minus">
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16px" height="2px" class="injected-svg js-svg-injector mb-0" data-parent="#rectangle">
                                    <path fill-rule="evenodd" fill="rgb(59, 68, 79)" d="M-0.000,-0.000 L15.000,-0.000 L15.000,2.000 L-0.000,2.000 L-0.000,-0.000 Z">
                                    </path>
                                </svg>
                            </figure>
                        </div>
                        <h6 class="font-weight-bold text-gray-3 mb-0 capitalize">{{ $separatedByCategoryKey }}</h6>
                    </button>
                </h5>
            </div>
            <div id="{{ $formattedKey }}" class="collapse show" data-parent="#{{ $formattedKey }}" style="border-top: 1px solid gray; border-radius: 15px">
                <div class="card-body">
                    @foreach($separatedByCategoryVal as $categoryVal)
                    <?php $color = 'secondary';
                    $icon = 'check';
                    if ($categoryVal['chargeType'] == 'notOffered') {
                        $color = 'danger';
                        $icon = 'times';
                    } else if ($categoryVal['chargeType'] == 'included') {
                        $color = 'success';
                        $icon = 'check';
                    } else if ($categoryVal['chargeType'] == 'chargeable') {
                        $color = 'warning';
                        $icon = 'exclamation';
                    }
                    // fas fa-fw fa-times-circle text-danger
                    // fas fa-fw fa-exclamation-circle text-warning
                    // fas fa-fw fa-check-circle text-success
                    ?>
                    <span class="mr-2"> <i class="fa fa-{{$icon}}-circle text-{{$color}}"></i> {{ $categoryVal['name'] }}</span>
                    @endforeach
                </div>
            </div>
        </div>
        @endforeach
    </div>
    <div class="d-flex p-2 justify-content-right">
        <small class="mr-2 float-right"> <i class="fa fa-check-circle text-success"></i> Available</small>
        <small class="mr-2 float-right"> <i class="fa fa-exclamation-circle text-warning"></i> Buy it</small>
        <small class="mr-2 float-right"> <i class="fa fa-times-circle text-danger"></i> Not Available</small>
        <small class="mr-2 float-right"> <i class="fa fa-question-circle text-danger"></i> Unknown</small>
    </div>
</div>

<div class="modal fade" id="modal-paid">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">{{__("Booking ID")}}</h4>
            </div>
            <!-- Modal body -->
            <div class="modal-body">
                <div class="booking-review">
                    <div class="booking-review-content">

                    </div>
                </div>
            </div>
            <!-- Modal footer -->
            <div class="modal-footer">
                <span class="btn btn btn-primary" id="set_paid_btn">{{__("Save")}}</span>
                <span class="btn btn-secondary" data-dismiss="modal">{{__("Close")}}</span>
            </div>
        </div>
    </div>
</div>