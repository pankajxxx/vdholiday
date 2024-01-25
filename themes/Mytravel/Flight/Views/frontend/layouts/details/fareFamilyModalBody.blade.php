<style>
    .collapse show {
        border: 1px solid gray;
        border-radius: 15px;
    }
</style>
@php($mainUpsellDataa = [])
@foreach($upsellDetails['upsellList'] as $upsellListKey => $upsellListVal)
@php($mainUpsellDataa[] = $upsellListVal)
@endforeach
@foreach($mainUpsellDataa as $mainUpsellData)
{{-- current Upsell info -- start --}}
<div class="container row transition-3d-hover shadow-hover-2 item-loop p-2 m-2" style="border: 1px solid #cacaca; border-radius: 15px;">
    {{-- <div class="card-header row"> --}}
    {{-- <div class="row"> --}}
    <div class="card-header col-md-4 flex" data-toggle="collapse" href="#{{ $mainUpsellData['fareDetails']['brandedFare'][0]['code'] }}" role="button" aria-expanded="false" aria-controls="{{ $mainUpsellData['fareDetails']['brandedFare'][0]['code'] }}">
        <i class="fa fa-arrow-down mr-2 font-size-16" {{-- data-toggle="tooltip" data-placement="top" title="" --}} {{-- data-html="true" --}} {{-- data-original-title="{{ $mainUpsellData['fareDetails']['brandedFare'][0]['description'] }}" --}} data-toggle="tooltip" data-placement="top" title="" data-html="true" data-original-title="Fly with what you have on, hand luggage only. Ideal for weekend breaks or short work trips."></i>
        <span class="text-success mr-1">
            {{ $mainUpsellData['fareDetails']['brandedFare'][0]['departure'] }}-{{
                    $mainUpsellData['fareDetails']['brandedFare'][0]['arrival'] }}
        </span>
        <span class="card-title h5">
            <input type="hidden" name="brandFareCode" value="{{ $mainUpsellData['fareDetails']['brandedFare'][0]['code'] }}">
            {{ $mainUpsellData['fareDetails']['brandedFare'][0]['name'] }}
        </span>
        <span class="font-weight-normal font-size-14 d-block text-color-1 mt-3">
            <small class="text-danger">
                ({{ $mainUpsellData['fareDetails']['validatingCarrier']['code'] }}) {{
                        $mainUpsellData['fareDetails']['validatingCarrier']['name'] }}
            </small>{{ $mainUpsellData['code'] }}
        </span>
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
    <div class="card-footer col-md-8 d-flex">
        <div class="mb-1 float-right mr-2">
            <label class="unit h3">
                {{ $mainUpsellData['fareDetails']['price']['baseFare'] }}
                <small style="font-size: 60%;">
                    {{ $mainUpsellData['fareDetails']['price']['currency'] }}</small>
            </label>
            {{-- <i data-toggle="tooltip" data-placement="top" title="" data-html="true"
                        data-original-title="Adult: 64 GBP<br>Child: 64 GBP" class="icofont-info-circle"></i> --}}
            <span class="font-weight-normal font-size-14 d-block text-color-1">
                (Total fare)
            </span>
        </div>
        <button name="submit" type="button" class="btn btn-primary d-flex align-items-center justify-content-center height-60 w-100 mb-xl-0 mb-lg-1 transition-3d-hover font-weight-bold btn-sm mt-3"><span class="stop-color-white">Select Fare</span>
            <i class="fa fa-spinner fa-spin ml-1" style="display: none;"></i>
        </button>
    </div>
    {{--
        </div> --}}
    {{-- </div> --}}
    <div class="collapse" id="{{ $mainUpsellData['fareDetails']['brandedFare'][0]['code'] }}" style="">
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
                <div id="{{ $formattedKey }}" class="collapse" data-parent="#{{ $formattedKey }}">
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
                        ?>
                        <span class="mr-2"> <i class="fa fa-{{$icon}}-circle text-{{$color}}"></i> {{
                            $categoryVal['name'] }}</span>
                        @endforeach
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
    {{-- <div class="d-flex p-2 justify-content-right">
        <small class="mr-2 float-right"> <i class="fa fa-check-circle text-success"></i> Available</small>
        <small class="mr-2 float-right"> <i class="fa fa-exclamation-circle text-warning"></i> Buy it</small>
        <small class="mr-2 float-right"> <i class="fa fa-times-circle text-danger"></i> Not Available</small>
        <small class="mr-2 float-right"> <i class="fa fa-question-circle text-danger"></i> Unknown</small>
    </div> --}}
</div>
{{-- current Upsell info -- end --}}
@endforeach

{{-- current Upsell info by API -- start --}}
<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col-md-8 flex collapsed" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                <span class="text-success mr-1">ORY-MAD</span>
                <span class="card-title h5">
                    <input type="hidden" name="brandFareCode" value="BUSFULLFLX">
                    BUSINESS FULLY FLEXIBLE
                    <i class="fa fa-info-circle font-size-16" data-toggle="tooltip" data-placement="top" title="" data-html="true" data-original-title="Business Fully Flexible"></i></span>
            </div>
            <div class="col-md-4">
                <div class="mb-1 floar-right"><label class="unit h3">
                        256
                        <small>GBP</small></label> <i data-toggle="tooltip" data-placement="top" title="" data-html="true" data-original-title="Adult: 64 GBP<br>Child: 64 GBP" class="icofont-info-circle"></i> <span class="font-weight-normal font-size-14 d-block text-color-1"><small class="text-danger">Non-refundables</small>
                        (Total fare)</span></div>
                <button name="submit" type="button" data-toggle="modal" data-target="#targetModal_" class="btn btn-primary d-flex align-items-center justify-content-center height-60 w-100 mb-xl-0 mb-lg-1 transition-3d-hover font-weight-bold btn-primary"><span class="stop-color-white">Check Fare Families</span> <i class="fa fa-spinner fa-spin ml-1" style="display: none;"></i></button>
            </div>
        </div>
    </div>
    <div class="collapse" id="collapseExample" style="">
        <div class="card-body row" id="FAQs">
            <div class="col-6 card border-0 mb-1 pb-1">
                <div class="card-header border-bottom-0 p-0">
                    <h5 class="mb-0">
                        <button type="button" class="collapse-link btn btn-link btn-block d-flex align-items-md-center p-0 collapsed" data-toggle="collapse" data-target="#baggage" aria-expanded="false" aria-controls="baggage">
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
                            <h6 class="font-weight-bold text-gray-3 mb-0 capitalize">baggage</h6>
                        </button>
                    </h5>
                </div>
                <div id="baggage" class="collapse" data-parent="#baggage" style="">
                    <div class="card-body">
                        <span class="mr-2"> <i class="fa fa-check-circle text-success"></i> First
                            checked
                            bag</span>
                        <span class="mr-2"> <i class="fa fa-check-circle text-success"></i> Second
                            checked
                            bag</span>
                        <span class="mr-2"> <i class="fa fa-exclamation-circle text-warning"></i> Third
                            checked bag</span>
                    </div>
                </div>
            </div>
            <div class="col-6 card border-0 mb-1 pb-1">
                <div class="card-header border-bottom-0 p-0">
                    <h5 class="mb-0">
                        <button type="button" class="collapse-link btn btn-link btn-block d-flex align-items-md-center p-0 collapsed" data-toggle="collapse" data-target="#carry_on_baggage" aria-expanded="false" aria-controls="carry_on_baggage">
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
                            <h6 class="font-weight-bold text-gray-3 mb-0 capitalize">carry on baggage
                            </h6>
                        </button>
                    </h5>
                </div>
                <div id="carry_on_baggage" class="collapse" data-parent="#carry_on_baggage" style="">
                    <div class="card-body">
                        <span class="mr-2"> <i class="fa fa-check-circle text-success"></i> First Hand
                            Bag
                            10Kgs</span>
                        <span class="mr-2"> <i class="fa fa-check-circle text-success"></i> On Board
                            Personal Item Up3kg</span>
                        <span class="mr-2"> <i class="fa fa-times-circle text-danger"></i> Second hand
                            bag</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="d-flex p-2 justify-content-right">
        <small class="mr-2 float-right"> <i class="fa fa-check-circle text-success"></i>
            Available</small>
        <small class="mr-2 float-right"> <i class="fa fa-exclamation-circle text-warning"></i> Buy
            it</small>
        <small class="mr-2 float-right"> <i class="fa fa-times-circle text-danger"></i> Not
            Available</small>
        <small class="mr-2 float-right"> <i class="fa fa-question-circle text-danger"></i>
            Unknown</small>
    </div>
</div>
{{-- current Upsell info by API -- end --}}