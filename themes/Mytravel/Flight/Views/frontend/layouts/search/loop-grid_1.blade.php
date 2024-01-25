{{-- {{ dd($rows); }} --}}
<div class="card w-100 shadow-hover-3 mb-5">
    <ul class="list-group list-group-horizontal">
        <li class="list-group-item flex-fill">
            <div class="row">
                <div class="col-4 pr-0">
                    <img src="https://satgurudmc.com/reseller/assets/thumbnail?src=air:{{ $rows['offerArr']['fareDetails']->validatingCarrier->code }}.jpg&h=40" alt="{{ $rows['offerArr']['fareDetails']->validatingCarrier->code }}" class="img-fluid rounded-circle">
                </div>
                <div class="col-8 text-left">
                    <a href="#" class="card-title text-dark font-size-20 font-weight-bold" tabindex="0">{{ $rows['offerArr']['fareDetails']->validatingCarrier->name }}</a>
                    <div class="text-left">
                        <h6 class="font-weight-bold font-ssize-17 text-gray-3 mb-0">{{ $rows['offerArr']['fareDetails']->totalPrice->selling->value}}<small>{{ $rows['offerArr']['fareDetails']->totalPrice->selling->currency }}</small></h6>
                        <span class="font-weight-normal font-size-14 d-block text-color-1">
                            @if($rows['offerArr']['fareDetails']->nonRefundable == true)
                            <small class="text-danger">Non-refundables</small>
                            @endif
                            (Total fare)
                        </span>
                    </div>
                </div>
            </div>
        </li>
        <li class="list-group-item flex-fill">
            <div class="scrollable-container overflow-auto pt-3" id="flightCardContainer">
                @php($a = 1)
                @foreach($rows['offerArr']['flightsOverview']['flightReferencesArr'] as $flightReferencesArrKey => $flightReferencesArr)
                <div class="card my-1" style="border: 1px solid #dbdbdb;">
                    <span class="d-flex mx-1 mt-1">
                        <small class="font-size-12 font-weight-normal text-gray-5" style="margin-top: -2px;">
                            <i class="flaticon-aeroplane font-size-14 text-primary"></i>
                            <small class="font-size-12 font-weight-normal text-gray-5">
                                {{ (!empty($flightReferencesArr[0][0]->departure->airport->code)) ? "(".$flightReferencesArr[0][0]->departure->airport->code.")" : ''  }}
                                {{ $flightReferencesArr[0][0]->departure->city->name }}
                            </small>
                        </small>
                        <small class="mx-1 font-size-12 text-gray-1">|</small>
                        <small class="font-size-12 text-gray-1">
                            {{ date("D M d", strtotime($flightReferencesArr[0][0]->departure->date)) }} {{ date("h:i a", strtotime($flightReferencesArr[0][0]->departure->time)) }}
                        </small>
                    </span>
                </div>
                @php($a++)
                @endforeach
            </div>
        </li>
        <li class="list-group-item">
            <div class="d-flex justify-content-center pl-3 pr-3 pt-3" id="paginationContainer">
                <a href="javascript:;" class="btn btn-blue-1 font-size-14 width-260 text-lh-lg transition-3d-hover py-1" onclick="showNextPage()">Next Page</a>
            </div>
        </li>
    </ul>
    <div id="targetModal_{{ $keys }}" class="modal fade" data-modal-type="ontarget" data-open-effect="fadeIn" data-close-effect="fadeOut" data-speed="500">
        <div class="modal-dialog modal-dialog-centered modal-xl">
            <form action="{{ route('flight.getFlight') }}" method="POST">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Fare Family Details</h5>
                        <button type="button" class="border-0 width-50 height-50 bg-primary flex-content-center position-absolute rounded-circle mt-n4 mr-n4 top-0 right-0 font-size-25" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true" class="font-size-25">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        {{-- {{ session()->get('api_token') }} --}}
                        <div class="card mx-4 mx-xl-0 mb-4 mb-md-0 w-100">
                            @php($y=0)
                            @foreach($rows['offerArr']['flightsOverview']['flightReferencesArr'] as $flightReferencesArrKey => $flightReferencesArr)

                            @php($rand = rand(1000, 9999))
                            <div class="card m-2 " id="classs_{{ $rand }}">
                                <div class="row my-2 align-items-center text-center">
                                    <div class="col-md-3 mb-4 mb-md-0">
                                        <div class="d-block d-lg-flex flex-horizontal-center">
                                            <input type="hidden" name="offerArrIndex" id="offerArrIndex__{{ $keys }}" value="{{ $rows['offerArr']['index'] }}">
                                            <input required="required" onclick="checkedSegement('{{ $flightReferencesArrKey }}','{{ $flightReferencesArr[0][0]->key }}','{{ $keys }}','{{ $rows['offerArr']['index'] }}')" type="radio" name="segmentJson" class="offerKey_{{ $keys }} form-control mx-2 highlight-checkbox radioAfter_{{ $flightReferencesArrKey }}" value="{{ json_encode($flightReferencesArr) }}" data-target="classs_{{ $rand }}">
                                            <img class="img-fluid mr-3 mb-3 mb-lg-0 max-width-10" {{-- :src="flight.airline.image_url??''"  --}} src="https://satgurudmc.com/reseller/assets/thumbnail?src=air:{{ $flightReferencesArr[0][0]->marketingCarrier->airline->code }}.jpg&h=40" alt="Image-Description">
                                            <div class="font-size-14"> {{ $flightReferencesArr[0][0]->marketingCarrier->airline->name }} | {{ $flightReferencesArr[0][0]->marketingCarrier->airline->code }} {{ $flightReferencesArr[0][0]->marketingCarrier->flightNumber }}</div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 mb-4 mb-md-0">
                                        <div class="mx-2 mx-xl-3 flex-content-center align-items-start d-block d-lg-flex">
                                            <div class="mr-lg-3 mb-1 mb-lg-0">
                                                <i class="flaticon-aeroplane font-size-30 text-primary"></i>
                                            </div>
                                            <div class="text-lg-left">
                                                <h6 class="font-weight-bold font-size-21 text-gray-5 mb-0">
                                                    {{ $flightReferencesArr[0][0]->departure->time }}
                                                </h6>
                                                <div class="font-size-14 text-gray-5">
                                                    {{ date("D d M y", strtotime($flightReferencesArr[0][0]->departure->date)) }}
                                                </div>
                                                <span class="font-size-14 text-gray-1">
                                                    {{ $flightReferencesArr[0][0]->departure->airport->code." ".$flightReferencesArr[0][0]->departure->airport->name.", ".$flightReferencesArr[0][0]->departure->city->name }}
                                                </span>
                                                <br>
                                                <small class="font-size-10 text-muted">
                                                    Terminal: {{ $flightReferencesArr[0][0]->arrival->terminal }}
                                                </small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 mb-4 mb-md-0">
                                        <div class="mx-2 mx-xl-3 flex-content-center flex-column">
                                            <h6 class="font-size-14 font-weight-bold text-gray-5 mb-0">{{ $flightReferencesArr[0][0]->flightDetails->duration }} hrs</h6>
                                            <div class="width-60 border-top border-primary border-width-2 my-1"></div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 mb-4 mb-md-0">
                                        <div class="mx-2 mx-xl-3 flex-content-center align-items-start d-block d-lg-flex">
                                            <div class="mr-lg-3 mb-1 mb-lg-0">
                                                <i class="d-block rotate-90 flaticon-aeroplane font-size-30 text-primary"></i>
                                            </div>
                                            <div class="text-lg-left">
                                                <h6 class="font-weight-bold font-size-21 text-gray-5 mb-0">
                                                    {{ $flightReferencesArr[0][0]->arrival->time }}
                                                </h6>
                                                <div class="font-size-14 text-gray-5">
                                                    {{ date("D d M y", strtotime($flightReferencesArr[0][0]->arrival->date)) }}
                                                </div>
                                                <span class="font-size-14 text-gray-1">
                                                    {{ $flightReferencesArr[0][0]->arrival->airport->code." ".$flightReferencesArr[0][0]->arrival->airport->name.", ".$flightReferencesArr[0][0]->arrival->city->name }}
                                                </span>
                                                <br>
                                                <small class="font-size-10 text-muted">
                                                    Terminal: {{ $flightReferencesArr[0][0]->arrival->terminal }}
                                                </small>
                                            </div>
                                        </div>
                                    </div>
                                    {{-- <div class="col-12 border-bottom mb-3">
                                        <ul class="d-block d-md-flex justify-content-between list-group list-group-borderless list-group-horizontal list-group-flush no-gutters border-bottom">
                                            <li class="mr-md-8 mr-lg-8 mb-3 d-flex d-md-block justify-content-between list-group-item py-0">
                                                <div class="font-weight-bold text-dark">{{__('Seat type')}}
                                </div>
                                <span class="text-gray-1 text-capitalize">{{ $rows['offerArr']['fareDetails']->brandedFare[0]->cabin }}</span>
                                </li>
                                <li class="mr-md-8 mr-lg-8 mb-3 d-flex d-md-block justify-content-between list-group-item py-0">
                                    <div class="font-weight-bold text-dark">{{__('Baggage')}}</div>
                                    <span class="text-gray-1 text-capitalize">flight_seat person</span>
                                </li>
                                <li class="mr-md-8 mr-lg-8 mb-3 d-flex d-md-block justify-content-between list-group-item py-0">
                                    <div class="font-weight-bold text-dark">{{__('Check-in')}}</div>
                                    <span class="text-gray-1">flight_seat baggage_check_in Kgs</span>
                                </li>
                                <li class="mr-md-8 mr-lg-8 mb-3 d-flex d-md-block justify-content-between list-group-item py-0">
                                    <div class="font-weight-bold text-dark">{{__('Cabin')}}</div>
                                    <span class="text-gray-1">flight_seat baggage_cabin Kgs</span>
                                </li>
                                <li class="mr-md-8 mr-lg-8 mb-3 d-flex d-md-block justify-content-between list-group-item py-0">
                                    <div class="font-weight-bold text-dark">{{__('Price')}}</div>
                                    <span class="text-gray-1">flight_seat price_html</span>
                                </li>
                                <li class="mr-md-8 mr-lg-8 mb-3 d-flex d-md-block justify-content-between list-group-item py-0">
                                    <div class="font-weight-bold text-dark">{{__('Number')}}</div>
                                    <div class="flex-horizontal-center">
                                        <a class="font-size-10 text-dark" href="javascript:;">
                                            <i class="fa fa-chevron-down"></i>
                                        </a>
                                        <input class="form-control h-auto width-30 font-weight-bold font-size-16 shadow-none bg-tranparent border-0 rounded p-0 mx-1 text-center" value="1" type="text" min="1">
                                        <a class="font-size-10 text-dark" href="javascript:;">
                                            <i class="fa fa-chevron-up"></i>
                                        </a>
                                    </div>
                                </li>
                                </ul>
                            </div> --}}
                        </div>
                    </div>
                    @php($y++)
                    @endforeach
                </div>
                <div class="card mx-4 mx-xl-0 my-2 mb-md-0 w-100">
                    <ul class="list-group list-group-borderless list-group-horizontal list-group-flush no-gutters row mx-4">
                        <li class="col-md-3 list-group-item item auditorium term-15">
                            <i class="icofont-check-circled icon-default"></i>
                            <span class="mx-1 font-size-16 text-dark">Cabin:</span>
                            <span class="mx-1 font-size-16 text-dark">
                                {{ $rows['offerArr']['fareDetails']->brandedFare[0]->cabin ?? '' }}
                            </span>
                        </li>
                        <li class="col-md-3 list-group-item item auditorium term-15">
                            <i class="icofont-check-circled icon-default"></i>
                            <span class="mx-1 font-size-16 text-dark">Validating Carrier:</span>
                            <span class="mx-1 font-size-16 text-dark">
                                {{ $rows['offerArr']['fareDetails']->validatingCarrier->name ?? '' }}
                            </span>
                        </li>
                        <li class="col-md-3 list-group-item item auditorium term-15">
                            <i class="icofont-check-circled icon-default"></i>
                            <span class="mx-1 font-size-16 text-dark">Fare basis codes:</span>
                            <span class="mx-1 font-size-16 text-dark">
                                {{ $rows['offerArr']['offerItems'][0]->fareComponents[0]->fareBasisCode ?? '' }}
                            </span>
                        </li>
                        <li class="col-md-3 list-group-item item auditorium term-15">
                            <i class="icofont-check-circled icon-default"></i>
                            <span class="mx-1 font-size-16 text-dark">Fare Family:</span>
                            <span class="mx-1 font-size-16 text-dark">
                                {{ $rows['offerArr']['fareDetails']->brandedFare[0]->name ?? '' }}
                            </span>
                        </li>
                    </ul>
                </div>
        </div>
        <div class="modal-footer mx-auto">
            <div class="text-center justify-content-between">
                @csrf
                @php($offerItems = '')
                @foreach($rows['offerArr']['offerItems'] as $offerItemsArrKey => $offerItemsArr)
                @if($offerItemsArr->ptc == 'ADT')
                @php($offerItems.= 'Adult: '.$offerItemsArr->price->fullFare." ".$offerItemsArr->price->currency."<br>")
                @endif
                @if($offerItemsArr->ptc == 'CHD')
                @php($offerItems.= 'Child: '.$offerItemsArr->price->fullFare." ".$offerItemsArr->price->currency)
                @endif
                @endforeach
                <input type="hidden" name="offerArrIndex" id="offerArrIndex_{{ $keys }}" value="{{ $rows['offerArr']['index'] }}">
                <input type="hidden" name="offerFlightReference" class="offerFlightReference_{{ $keys }}" value="">
                <input type="hidden" name="offerFlightReferenceKey" class="offerFlightReferenceKey_{{ $keys }}" value="">
                <input type="hidden" name="flightSrk" id="flightSrk_{{ $keys }}" value="{{ $flightsData['srk'] }}">
                <input type="hidden" name="flightSearchToken" id="flightSearchToken_{{ $keys }}" value="{{ $flightsData['tokensSearchResults'] }}">
                <div class="mb-1">
                    <label class="unit h3">
                        {{ $rows['offerArr']['fareDetails']->totalPrice->selling->value}}
                        <small>{{ $rows['offerArr']['fareDetails']->totalPrice->selling->currency }}</small>
                    </label>
                    <i data-toggle="tooltip" data-placement="top" title="" class="icofont-info-circle" data-html="true" data-original-title="{{ $offerItems }}"></i>
                    <span class="font-weight-normal font-size-14 d-block text-color-1">
                        @if(isset($rows['offerArr']['fareDetails']->nonRefundable) && $rows['offerArr']['fareDetails']->nonRefundable == true)
                        <small class="text-danger">Non-refundables</small>
                        @endif
                        (Total fare)</span>
                </div>
                <button name="submit" class="btn btn-primary d-flex align-items-center justify-content-center height-60 w-100 mb-xl-0 mb-lg-1 transition-3d-hover font-weight-bold btn-primary checkUpsellDetails" type="button" data-toggle="modal" data-target="#targetModal_" data-keys="{{ $keys }}">
                    <span class="stop-color-white">Check Fare Families</span>
                    <i class="fa fa-spinner fa-spin ml-1" style="display: none;"></i>
                </button>
            </div>
        </div>
    </div>
    </form>
</div>

</div>
</div>
</div>