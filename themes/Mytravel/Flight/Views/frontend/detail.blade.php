@extends('layouts.app')
@push('css')
<link rel="stylesheet" type="text/css" href="{{ asset("
    themes/mytravel/libs/ion_rangeslider/css/ion.rangeSlider.min.css") }}" />
<link rel="stylesheet" type="text/css" href="{{ asset(" libs/fotorama/fotorama.css") }}" />
@endpush
@section('content')
<div class="bravo_detail_space">
    {{-- @include('Flight::frontend.layouts.details.space-banner') --}}
    <div class="bravo_banner">
        <div class="container">
            <nav class="py-3" aria-label="breadcrumb">
                <ol class="breadcrumb breadcrumb-no-gutter mb-0 flex-nowrap flex-xl-wrap overflow-auto overflow-xl-visble">
                    <li class="breadcrumb-item flex-shrink-0 flex-xl-shrink-1"><a href="#">Home</a></li>
                    <li class="breadcrumb-item flex-shrink-0 flex-xl-shrink-1"><a href="#">Flights</a></li>
                    <li class="breadcrumb-item flex-shrink-0 flex-xl-shrink-1 active" aria-current="page">Park Avenue
                        Baker Street London</li>
                </ol>
            </nav>
            <div class="row">
                <div class="col-md-12 col-lg-9 card">
                    <div class="card-header">
                        <h3 class="card-title">Flight Details</h3>
                    </div>
                    <div class="card-body">
                        <div class="card mx-4 mx-xl-0 mb-4 mb-md-0 w-100">
                            <div id="classs_1459" class="card m-2 highlight-div">
                                @php($segmentJson = json_decode($requestsAll['segmentJson']))
                                @foreach($segmentJson as $segmentJsonKey => $segmentJsonValue)
                                <div class="row my-2 align-items-center text-center">
                                    <div class="col-md-3 mb-4 mb-md-0">
                                        <div class="d-block d-lg-flex flex-horizontal-center">
                                            <img src="https://satgurudmc.com/reseller/assets/thumbnail?src=air:{{ $segmentJsonValue[0]->marketingCarrier->airline->code }}.jpg&amp;h=40" alt="Image-Description" class="img-fluid mr-3 ml-1 mb-3 mb-lg-0 max-width-10">
                                            <div class="font-size-14"> {{ $segmentJsonValue[0]->marketingCarrier->airline->name }} | {{ $segmentJsonValue[0]->marketingCarrier->airline->code }} {{ $segmentJsonValue[0]->marketingCarrier->flightNumber }}</div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 mb-4 mb-md-0">
                                        <div class="mx-2 mx-xl-3 flex-content-center align-items-start d-block d-lg-flex">
                                            <div class="mr-lg-3 mb-1 mb-lg-0"><i class="flaticon-aeroplane font-size-30 text-primary"></i></div>
                                            <div class="text-lg-left">
                                                <h6 class="font-weight-bold font-size-21 text-gray-5 mb-0">
                                                    {{ date("h:i a",strtotime($segmentJsonValue[0]->departure->time)) }}
                                                </h6>
                                                <div class="font-size-14 text-gray-5">
                                                    {{ date("D d M y",strtotime($segmentJsonValue[0]->departure->date)) }}
                                                </div> <span class="font-size-14 text-gray-1">
                                                    {{ $segmentJsonValue[0]->departure->airport->code }} {{ $segmentJsonValue[0]->departure->airport->name }},
                                                    {{ $segmentJsonValue[0]->departure->city->name }}
                                                </span> <br> <small class="font-size-10 text-muted">
                                                    Terminal: {{ $segmentJsonValue[0]->departure->terminal }}
                                                </small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 mb-4 mb-md-0">
                                        <div class="mx-2 mx-xl-3 flex-content-center flex-column">
                                            <h6 class="font-size-14 font-weight-bold text-gray-5 mb-0">{{ $segmentJsonValue[0]->flightDetails->duration }} hrs</h6>
                                            <div class="width-60 border-top border-primary border-width-2 my-1"></div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 mb-4 mb-md-0">
                                        <div class="mx-2 mx-xl-3 flex-content-center align-items-start d-block d-lg-flex">
                                            <div class="mr-lg-3 mb-1 mb-lg-0"><i class="d-block rotate-90 flaticon-aeroplane font-size-30 text-primary"></i>
                                            </div>
                                            <div class="text-lg-left">
                                                <h6 class="font-weight-bold font-size-21 text-gray-5 mb-0">
                                                    {{ date("h:i a",strtotime($segmentJsonValue[0]->arrival->time)) }}
                                                </h6>
                                                <div class="font-size-14 text-gray-5">
                                                    {{ date("D d M y",strtotime($segmentJsonValue[0]->arrival->date)) }}
                                                </div> <span class="font-size-14 text-gray-1">
                                                    {{ $segmentJsonValue[0]->arrival->airport->code }} {{ $segmentJsonValue[0]->arrival->airport->name }},
                                                    {{ $segmentJsonValue[0]->arrival->city->name }}
                                                </span> <br> <small class="font-size-10 text-muted">
                                                    Terminal: {{ $segmentJsonValue[0]->arrival->terminal }}
                                                </small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                        <div class="card mx-4 mx-xl-0 my-2 mb-md-0 w-100 row">
                            <div class="col-md-6">
                                <div>
                                    <i class="icofont-check-circled icon-default"></i>
                                    <span class="mx-1 font-size-16 text-dark">Cabin:</span>
                                    <span class="mx-1 font-size-16 text-dark">
                                        {{ $offerPriceDetails['pricedOffer']['fareDetails']['brandedFare'][0]['cabin'] }}
                                    </span>
                                </div>
                                <div>
                                    <i class="icofont-check-circled icon-default"></i>
                                    <span class="mx-1 font-size-16 text-dark">Validating Carrier:</span>
                                    <span class="mx-1 font-size-16 text-dark">
                                        {{ $offerPriceDetails['pricedOffer']['fareDetails']['validatingCarrier']['name'] }} ({{ $offerPriceDetails['pricedOffer']['fareDetails']['validatingCarrier']['code'] }})
                                    </span>
                                </div>
                                <div>
                                    <i class="icofont-check-circled icon-default"></i>
                                    <span class="mx-1 font-size-16 text-dark">Fare basis codes:</span>
                                    <span class="mx-1 font-size-16 text-dark">
                                        {{ $offerPriceDetails['pricedOffer']['offerItems'][0]['fareBasis'][0] }}
                                    </span>
                                </div>
                                <div>
                                    <i class="icofont-check-circled icon-default"></i>
                                    <span class="mx-1 font-size-16 text-dark">Fare Family:</span>
                                    <span class="mx-1 font-size-16 text-dark" data-fare_basis_code="{{ $offerPriceDetails['pricedOffer']['fareDetails']['brandedFare'][0]['code'] }}">
                                        {{ $offerPriceDetails['pricedOffer']['fareDetails']['brandedFare'][0]['name'] }}
                                    </span>
                                </div>
                            </div>
                        </div>
                        <input type="hidden" id="fareFamily" data-srk="{{ $requestsAll['flightSrk'] }}" data-offerIndex="{{ $requestsAll['offerArrIndex'] }}" data-token="{{ $requestsAll['flightSearchToken'] }}">
                        <div class="float-right my-3">
                            <button type="button" class="btn btn-success btn-md mx-2" id="fareFamily" data-toggle="modal" data-target="#fareFamilyModal">Fare Family</button>
                            <button type="button" class="btn btn-info btn-md" id="fareRules" data-toggle="modal" data-target="#fareRulesModal">Fare Rules</button>
                        </div>
                    </div>
                    <div id="fareFlightDetails">
                        {{-- <i class="fa fa-spinner fa-spin"></i> --}}
                        @include('Flight::frontend.layouts.details.fareFlightDetails')
                    </div>
                    <div id="flightFareFamily">
                        @include('Flight::frontend.layouts.details.flight-fare-family-modal')
                    </div>
                    <div class="border-bottom position-relative">
                        <h5 class="font-size-21 font-weight-bold text-dark">
                            Description
                        </h5>
                        <div class="description">
                            <p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio
                                libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate
                                lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu
                                rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus
                                purus</p>
                            <p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id
                                morbi dis magnis porta sagittis euismod etiam</p>
                            <h4>HIGHLIGHTS</h4>
                            <ul>
                                <li>Visit the Museum of Modern Art in Manhattan</li>
                                <li>See amazing works of contemporary art, including Vincent van Gogh's The Starry Night
                                </li>
                                <li>Check out Campbell's Soup Cans by Warhol and The Dance (I) by Matisse</li>
                                <li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li>
                                <li>Enjoy free audio guides available in English, French, German, Italian, Spanish,
                                    Portuguese</li>
                            </ul>
                        </div>
                    </div>
                    <div class="list-attributes border-bottom py-4 space-type attr-3">
                        <h3 class="font-size-21 font-weight-bold text-dark mb-4">Space Type</h3>
                        <ul class="list-group list-group-borderless list-group-horizontal list-group-flush no-gutters row">
                            <li class="col-md-4 mb-3 list-group-item item auditorium term-15">
                                <i class="mr-2 font-size-16 text-primary flaticon-tick icon-default"></i>
                                Auditorium
                            </li>

                            <li class="col-md-4 mb-3 list-group-item item bar term-16">
                                <i class="mr-2 font-size-16 text-primary flaticon-tick icon-default"></i>
                                Bar
                            </li>

                            <li class="col-md-4 mb-3 list-group-item item cafe term-17">
                                <i class="mr-2 font-size-16 text-primary flaticon-tick icon-default"></i>
                                Cafe
                            </li>

                            <li class="col-md-4 mb-3 list-group-item item ballroom term-18">
                                <i class="mr-2 font-size-16 text-primary flaticon-tick icon-default"></i>
                                Ballroom
                            </li>

                            <li class="col-md-4 mb-3 list-group-item item dance-studio term-19">
                                <i class="mr-2 font-size-16 text-primary flaticon-tick icon-default"></i>
                                Dance Studio
                            </li>

                            <li class="col-md-4 mb-3 list-group-item item office term-20">
                                <i class="mr-2 font-size-16 text-primary flaticon-tick icon-default"></i>
                                Office
                            </li>

                            <li class="col-md-4 mb-3 list-group-item item party-hall term-21">
                                <i class="mr-2 font-size-16 text-primary flaticon-tick icon-default"></i>
                                Party Hall
                            </li>

                            <li class="col-md-4 mb-3 list-group-item item recording-studio term-22">
                                <i class="mr-2 font-size-16 text-primary flaticon-tick icon-default"></i>
                                Recording Studio
                            </li>

                            <li class="col-md-4 mb-3 list-group-item item yoga-studio term-23">
                                <i class="mr-2 font-size-16 text-primary flaticon-tick icon-default"></i>
                                Yoga Studio
                            </li>

                            <li class="col-md-4 mb-3 list-group-item item villa term-24">
                                <i class="mr-2 font-size-16 text-primary flaticon-tick icon-default"></i>
                                Villa
                            </li>

                            <li class="col-md-4 mb-3 list-group-item item warehouse term-25">
                                <i class="mr-2 font-size-16 text-primary flaticon-tick icon-default"></i>
                                Warehouse
                            </li>

                        </ul>
                    </div>
                    <div class="list-attributes border-bottom py-4 amenities attr-4">
                        <h3 class="font-size-21 font-weight-bold text-dark mb-4">Amenities</h3>
                        <ul class="list-group list-group-borderless list-group-horizontal list-group-flush no-gutters row">
                            <li class="col-md-4 mb-3 list-group-item item air-conditioning term-26">
                                <img src="http://127.0.0.1:8000/uploads/mytravel/space/featured-box/icon-space-box-1.png" class="img-responsive" alt="Air Conditioning">
                                Air Conditioning
                            </li>

                            <li class="col-md-4 mb-3 list-group-item item breakfast term-27">
                                <img src="http://127.0.0.1:8000/uploads/mytravel/space/featured-box/icon-space-box-2.png" class="img-responsive" alt="Breakfast">
                                Breakfast
                            </li>

                            <li class="col-md-4 mb-3 list-group-item item kitchen term-28">
                                <img src="http://127.0.0.1:8000/uploads/mytravel/space/featured-box/icon-space-box-3.png" class="img-responsive" alt="Kitchen">
                                Kitchen
                            </li>

                            <li class="col-md-4 mb-3 list-group-item item parking term-29">
                                <img src="http://127.0.0.1:8000/uploads/mytravel/space/featured-box/icon-space-box-4.png" class="img-responsive" alt="Parking">
                                Parking
                            </li>

                            <li class="col-md-4 mb-3 list-group-item item pool term-30">
                                <img src="http://127.0.0.1:8000/uploads/mytravel/space/featured-box/icon-space-box-5.png" class="img-responsive" alt="Pool">
                                Pool
                            </li>

                            <li class="col-md-4 mb-3 list-group-item item wi-fi-internet term-31">
                                <img src="http://127.0.0.1:8000/uploads/mytravel/space/featured-box/icon-space-box-6.png" class="img-responsive" alt="Wi-Fi Internet">
                                Wi-Fi Internet
                            </li>

                        </ul>
                    </div>
                    <div class="border-bottom py-4">
                        <h5 class="font-size-21 font-weight-bold text-dark mb-4">
                            FAQs
                        </h5>
                        <div id="FAQs">
                            <div class="card border-0 mb-4 pb-1">
                                <div class="card-header border-bottom-0 p-0">
                                    <h5 class="mb-0">
                                        <button type="button" class="collapse-link btn btn-link btn-block d-flex align-items-md-center p-0" data-toggle="collapse" data-target="#FAQs_0" aria-expanded="true" aria-controls="FAQs_0">
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
                                            <h6 class="font-weight-bold text-gray-3 mb-0">Check-in time?</h6>
                                        </button>
                                    </h5>
                                </div>
                                <div id="FAQs_0" class="collapse  show " data-parent="#FAQs">
                                    <div class="card-body">
                                        <p class="mb-0 text-gray-1 text-lh-lg">
                                            As a rough guide, the check-in time is after 12 a.m. Let us know your
                                            arrival time in case you schedule and early check in we‘ll do our best to
                                            have your room available.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="card border-0 mb-4 pb-1">
                                <div class="card-header border-bottom-0 p-0">
                                    <h5 class="mb-0">
                                        <button type="button" class="collapse-link btn btn-link btn-block d-flex align-items-md-center p-0" data-toggle="collapse" data-target="#FAQs_1" aria-expanded="false" aria-controls="FAQs_1">
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
                                            <h6 class="font-weight-bold text-gray-3 mb-0">Check-out time?</h6>
                                        </button>
                                    </h5>
                                </div>
                                <div id="FAQs_1" class="collapse" data-parent="#FAQs">
                                    <div class="card-body">
                                        <p class="mb-0 text-gray-1 text-lh-lg">
                                            As a rough guide, the check-out time is before 12pm. If you plan a late
                                            check out kindly let us know your departure time, we’ll our best to satisfy
                                            your needs.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="card border-0 mb-4 pb-1">
                                <div class="card-header border-bottom-0 p-0">
                                    <h5 class="mb-0">
                                        <button type="button" class="collapse-link btn btn-link btn-block d-flex align-items-md-center p-0" data-toggle="collapse" data-target="#FAQs_2" aria-expanded="false" aria-controls="FAQs_2">
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
                                            <h6 class="font-weight-bold text-gray-3 mb-0">Is Reception open 24 hours?
                                            </h6>
                                        </button>
                                    </h5>
                                </div>
                                <div id="FAQs_2" class="collapse " data-parent="#FAQs">
                                    <div class="card-body">
                                        <p class="mb-0 text-gray-1 text-lh-lg">
                                            Yes, Reception service is available 24 hours.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="card border-0 mb-4 pb-1">
                                <div class="card-header border-bottom-0 p-0">
                                    <h5 class="mb-0">
                                        <button type="button" class="collapse-link btn btn-link btn-block d-flex align-items-md-center p-0" data-toggle="collapse" data-target="#FAQs_3" aria-expanded="false" aria-controls="FAQs_3">
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
                                            <h6 class="font-weight-bold text-gray-3 mb-0">Which languages are spoken at
                                                Reception?</h6>
                                        </button>
                                    </h5>
                                </div>
                                <div id="FAQs_3" class="collapse " data-parent="#FAQs">
                                    <div class="card-body">
                                        <p class="mb-0 text-gray-1 text-lh-lg">
                                            Italian, English, French, German and Spanish.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="card border-0 mb-4 pb-1">
                                <div class="card-header border-bottom-0 p-0">
                                    <h5 class="mb-0">
                                        <button type="button" class="collapse-link btn btn-link btn-block d-flex align-items-md-center p-0" data-toggle="collapse" data-target="#FAQs_4" aria-expanded="false" aria-controls="FAQs_4">
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
                                            <h6 class="font-weight-bold text-gray-3 mb-0">Can I leave my luggage?</h6>
                                        </button>
                                    </h5>
                                </div>
                                <div id="FAQs_4" class="collapse " data-parent="#FAQs">
                                    <div class="card-body">
                                        <p class="mb-0 text-gray-1 text-lh-lg">
                                            Yes, we can look after your luggage. If at check in your room is not ready
                                            yet or in case of early check out after .We will store your luggage free of
                                            charge on your check-in and check-out days.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="card border-0 mb-4 pb-1">
                                <div class="card-header border-bottom-0 p-0">
                                    <h5 class="mb-0">
                                        <button type="button" class="collapse-link btn btn-link btn-block d-flex align-items-md-center p-0" data-toggle="collapse" data-target="#FAQs_5" aria-expanded="false" aria-controls="FAQs_5">
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
                                            <h6 class="font-weight-bold text-gray-3 mb-0">Internet connection?</h6>
                                        </button>
                                    </h5>
                                </div>
                                <div id="FAQs_5" class="collapse " data-parent="#FAQs">
                                    <div class="card-body">
                                        <p class="mb-0 text-gray-1 text-lh-lg">
                                            A wireless internet connection is available throughout the hotel.
                                            The guest rooms feature hi-speed web connectivity (both wireless and
                                            cabled).
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="border-bottom py-4">
                        <h5 class="font-size-21 font-weight-bold text-dark mb-4">
                            Location
                        </h5>
                        <div class="location-map">
                            <div id="map_content" style="position: relative; overflow: hidden;">
                                <div style="height: 100%; width: 100%; position: absolute; top: 0px; left: 0px; background-color: rgb(229, 227, 223);">
                                    <div class="gm-err-container">
                                        <div class="gm-err-content">
                                            <div class="gm-err-icon"><img src="https://maps.gstatic.com/mapfiles/api-3/images/icon_error.png" alt="" draggable="false" style="user-select: none;"></div>
                                            <div class="gm-err-title">Oops! Something went wrong.</div>
                                            <div class="gm-err-message">This page didn't load Google Maps correctly. See
                                                the JavaScript console for technical details.</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="border-bottom py-4">
                        <h5 class="font-size-21 font-weight-bold text-dark mb-4">
                            Video
                        </h5>
                        <!-- Video Block -->
                        <div id="youTubeVideoPlayer" class="u-video-player rounded-sm">
                            <!-- Cover Image -->
                            <img class="img-fluid u-video-player__preview rounded-sm" src="http://127.0.0.1:8000/uploads/mytravel/space/space-single-2.jpg " alt="Image">
                            <!-- End Cover Image -->
                            <!-- Play Button -->
                            <a class="travel-inline-video-player u-video-player__btn u-video-player__centered" href="javascript:;" data-video-id="UfEiKK-iX70" data-parent="youTubeVideoPlayer" data-is-autoplay="true" data-target="youTubeVideoIframe" data-classes="u-video-player__played">
                                <span class="u-video-player__icon u-video-player__icon--lg text-primary bg-transparent">
                                    <span class="flaticon-multimedia text-white ml-0 font-size-60 u-video-player__icon-inner"></span>
                                </span>
                            </a>
                            <!-- End Play Button -->

                            <!-- Video Iframe -->
                            <div class="embed-responsive embed-responsive-16by9 rounded-sm">
                                <div id="youTubeVideoIframe"></div>
                            </div>
                            <!-- End Video Iframe -->
                        </div>
                        <!-- End Video Block -->
                    </div>
                    <div class="bravo-reviews">
                        <div class="border-bottom py-4">
                            <h5 id="scroll-reviews" class="font-size-21 font-weight-bold text-dark mb-4">
                                Reviews
                            </h5>
                            <div class="row">
                                <div class="col-md-4 mb-4 mb-md-0">
                                    <div class="border rounded flex-content-center py-5 border-width-2">
                                        <div class="text-center">
                                            <h2 class="font-size-50 font-weight-bold text-primary mb-0 text-lh-sm">
                                                4.5<span class="font-size-20">/5</span>
                                            </h2>
                                            <div class="font-size-25 text-dark mb-3">Excellent</div>
                                            <div class="text-gray-1">From
                                                2 reviews
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="row">
                                        <div class="col-md-6 mb-4">
                                            <h6 class="font-weight-normal text-gray-1 mb-1">
                                                Excellent
                                            </h6>
                                            <div class="flex-horizontal-center mr-6">
                                                <div class="progress bg-gray-33 rounded-pill w-100" style="height: 7px;">
                                                    <div class="progress-bar rounded-pill" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="ml-3 text-primary font-weight-bold">
                                                    1
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 mb-4">
                                            <h6 class="font-weight-normal text-gray-1 mb-1">
                                                Very Good
                                            </h6>
                                            <div class="flex-horizontal-center mr-6">
                                                <div class="progress bg-gray-33 rounded-pill w-100" style="height: 7px;">
                                                    <div class="progress-bar rounded-pill" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="ml-3 text-primary font-weight-bold">
                                                    1
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 mb-4">
                                            <h6 class="font-weight-normal text-gray-1 mb-1">
                                                Average
                                            </h6>
                                            <div class="flex-horizontal-center mr-6">
                                                <div class="progress bg-gray-33 rounded-pill w-100" style="height: 7px;">
                                                    <div class="progress-bar rounded-pill" role="progressbar" style="width: 0%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="ml-3 text-primary font-weight-bold">
                                                    0
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 mb-4">
                                            <h6 class="font-weight-normal text-gray-1 mb-1">
                                                Poor
                                            </h6>
                                            <div class="flex-horizontal-center mr-6">
                                                <div class="progress bg-gray-33 rounded-pill w-100" style="height: 7px;">
                                                    <div class="progress-bar rounded-pill" role="progressbar" style="width: 0%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="ml-3 text-primary font-weight-bold">
                                                    0
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 mb-4">
                                            <h6 class="font-weight-normal text-gray-1 mb-1">
                                                Terrible
                                            </h6>
                                            <div class="flex-horizontal-center mr-6">
                                                <div class="progress bg-gray-33 rounded-pill w-100" style="height: 7px;">
                                                    <div class="progress-bar rounded-pill" role="progressbar" style="width: 0%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="ml-3 text-primary font-weight-bold">
                                                    0
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="stickyBlockEndPoint"></div>
                        <div class="border-bottom py-4">
                            <h5 class="font-size-21 font-weight-bold text-dark mb-5 mt-3">
                                Showing 1 - 2 of 2 total
                            </h5>
                            <div class="media flex-column flex-md-row align-items-center align-items-md-start mb-4">
                                <div class="mr-md-5">
                                    <a class="d-block" href="#">
                                        <img class="img-fluid mb-3 mb-md-0 rounded-circle avatar-img" src="http://127.0.0.1:8000/images/avatar.png" alt=" ">
                                    </a>
                                </div>
                                <div class="media-body text-center text-md-left">
                                    <div class="mb-4">
                                        <h6 class="font-weight-bold text-gray-3">
                                            <a href="#"> </a>
                                        </h6>
                                        <div class="font-weight-normal font-size-14 text-gray-9 mb-2">12/13/2023 06:31
                                        </div>
                                        <div class="d-flex align-items-center flex-column flex-md-row mb-2">
                                            <button type="button" class="btn btn-xs btn-primary rounded-xs font-size-14 py-1 px-2 mr-2 mb-2 mb-md-0">5
                                                /5 </button>
                                            <span class="font-weight-bold font-italic text-gray-3">Good Trip</span>
                                        </div>
                                        <p class="text-lh-1dot6 mb-0 pr-lg-5">Eum eu sumo albucius perfecto, commodo
                                            torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent
                                            omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius
                                            dissentias disputando, molestie mnesarchum complectitur per te</p>
                                    </div>
                                </div>
                            </div>
                            <div class="media flex-column flex-md-row align-items-center align-items-md-start mb-4">
                                <div class="mr-md-5">
                                    <a class="d-block" href="#">
                                        <img class="img-fluid mb-3 mb-md-0 rounded-circle avatar-img" src="http://127.0.0.1:8000/images/avatar.png" alt=" ">
                                    </a>
                                </div>
                                <div class="media-body text-center text-md-left">
                                    <div class="mb-4">
                                        <h6 class="font-weight-bold text-gray-3">
                                            <a href="#"> </a>
                                        </h6>
                                        <div class="font-weight-normal font-size-14 text-gray-9 mb-2">12/13/2023 06:31
                                        </div>
                                        <div class="d-flex align-items-center flex-column flex-md-row mb-2">
                                            <button type="button" class="btn btn-xs btn-primary rounded-xs font-size-14 py-1 px-2 mr-2 mb-2 mb-md-0">4
                                                /5 </button>
                                            <span class="font-weight-bold font-italic text-gray-3">Good Trip</span>
                                        </div>
                                        <p class="text-lh-1dot6 mb-0 pr-lg-5">Eum eu sumo albucius perfecto, commodo
                                            torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent
                                            omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius
                                            dissentias disputando, molestie mnesarchum complectitur per te</p>
                                    </div>
                                </div>
                            </div>
                            <div class="bravo-pagination">
                            </div>
                        </div>
                        <div class="py-4">
                            <div class="review-message">
                                You must <a href="#login" data-toggle="modal" data-target="#login">log in</a> to write
                                review
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 col-lg-3">
                    <div class="border border-color-7 rounded p-4 mb-5">
                        <h6 class="font-size-17 font-weight-bold text-gray-3 mx-1 mb-3 pb-1">
                            Why Book With Us?
                        </h6>
                        <div class="d-flex align-items-center mt-3">
                            <i class="flaticon-star font-size-25 text-primary mr-3 pr-1"></i>
                            <h6 class="mb-0 font-size-14 text-gray-1">
                                <a href="#">No-hassle best price guarantee</a>
                            </h6>
                        </div>
                        <div class="d-flex align-items-center mt-3">
                            <i class="flaticon-support font-size-25 text-primary mr-3 pr-1"></i>
                            <h6 class="mb-0 font-size-14 text-gray-1">
                                <a href="#">Customer care available 24/7</a>
                            </h6>
                        </div>
                        <div class="d-flex align-items-center mt-3">
                            <i class="flaticon-favorites-button font-size-25 text-primary mr-3 pr-1"></i>
                            <h6 class="mb-0 font-size-14 text-gray-1">
                                <a href="#">Hand-picked Tours &amp; Activities</a>
                            </h6>
                        </div>
                        <div class="d-flex align-items-center mt-3">
                            <i class="flaticon-airplane font-size-25 text-primary mr-3 pr-1"></i>
                            <h6 class="mb-0 font-size-14 text-gray-1">
                                <a href="#">Free Travel Insureance</a>
                            </h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @include('Flight::frontend.layouts.details.fareRulesModal')
    {{-- @include('Flight::frontend.layouts.details.space-form-book-mobile') --}}
</div>
@endsection
@push('js')
{!! App\Helpers\MapEngine::scripts() !!}
<script type="text/javascript" src="{{ asset(" themes/mytravel/libs/ion_rangeslider/js/ion.rangeSlider.min.js")
    }}"></script>
<script type="text/javascript" src="{{ asset(" libs/fotorama/fotorama.js") }}"></script>
<script type="text/javascript" src="{{ asset(" libs/sticky/jquery.sticky.js") }}"></script>
<script>
    $(document).ready(function() {
        $('#fareRulesModal').on('shown.bs.modal', function() {
            console.log('Modal is fully shown now.');
        });

        $('#fareRulesModal').on('hidden.bs.modal', function() {
            console.log('Modal is fully hidden now.');
        });
    });
</script>
@endpush