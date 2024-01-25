@extends('layouts.app')
@push('css')
<link href="{{ asset('themes/mytravel/dist/frontend/module/flight/css/flight.css?_ver='.config('app.asset_version')) }}" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="{{ asset("themes/mytravel/libs/ion_rangeslider/css/ion.rangeSlider.min.css") }}" />
@endpush
@section('content')
<div class="bravo_search_flight">
    <div class="bg-gray-33 py-1">
        <div class="container">
            <div class="border-0">
                <div class="card-body pl-0 pr-0">
                    @includeIf('Flight::frontend.layouts.search.form-search')
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        @include('Flight::frontend.layouts.search.list-item')
    </div>
</div>
@endsection

@push('js')
<script type="text/javascript" src="{{ asset('themes/mytravel/libs/ion_rangeslider/js/ion.rangeSlider.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes/mytravel/module/flight/js/flight.js?_ver='.config('app.asset_version')) }}"></script>
<script>
    $(document).ready(function() {
        $.BCoreModal.init('[data-modal-target]');
    });

    // Get all radio buttons with the 'highlight-checkbox' class
    const highlightCheckboxes = document.querySelectorAll('.highlight-checkbox');

    highlightCheckboxes.forEach(function(checkbox) {
        // Add change event listener to each checkbox
        checkbox.addEventListener('change', function() {
            const targetDivId = this.getAttribute('data-target');
            const targetDiv = document.getElementById(targetDivId);

            if (targetDiv) {
                // Remove 'highlight-div' class from all divs
                document.querySelectorAll('.card').forEach(function(div) {
                    div.classList.remove('highlight-div');
                });
                // Add 'highlight-div' class to the target div
                targetDiv.classList.add('highlight-div');
            }
        });
    });

    function callModal(modalName) {
        // console.log(modalName);
        const splittedArray = modalName.split('_');
        var inputElements = document.querySelectorAll('input[name="timeGroup_' + splittedArray[1] + '"]');
        // Loop through each input element
        inputElements.forEach(function(inputElement) {
            if (inputElement.checked) {
                const classNames = inputElement.classList;
                classNames.forEach(className => {
                    if (className.startsWith('radioPrev_')) {
                        var classee = className.split('_'); // Outputs the class name starting with 'radioPrev_'
                        console.log(classee[1]);
                        const afterInputElement = document.querySelector(".radioAfter_" + classee[1]);
                        if (afterInputElement) {
                            afterInputElement.checked = true; // This will check the input element
                            const event = new Event('change'); // Create a new 'change' event
                            afterInputElement.dispatchEvent(event); // Dispatch the 'change' event on the input element
                        }
                    }
                });
            }
        });
    }

    function checkedSegement(flightReferences, segementReferencesKeys, keys, index) {
        var offerFlightReference = document.querySelector('.offerFlightReference_' + keys);
        var offerFlightReferenceKey = document.querySelector('.offerFlightReferenceKey_' + keys);
        if (offerFlightReference) {
            offerFlightReference.value = flightReferences;
        }
        if (offerFlightReferenceKey) {
            offerFlightReferenceKey.value = segementReferencesKeys;
        }
        __checkedSegement(index);
    }
</script>

<script>
    function __checkedSegement(offerArrIndex) {
        // var offerArrIndex = $(this).data('index');
        var srk = $('#flightSrk').val();
        var token = $('#flightSearchToken').val();
        console.log(offerArrIndex, srk, token);

        // $.ajax({
        //     url: "{{ route('flight.__getOfferDetails') }}",
        //     type: 'POST',
        //     data: {
        //         'offerArrIndex_': offerArrIndex_,
        //         'flightSearchToken_': flightSearchToken_,
        //         'flightSrk_': flightSrk_
        //     },
        //     beforeSend: function() {
        //         console.log('Before Send');
        //     },
        //     success: function(response) {
        //         console.log('Success:', response);
        //         // $('#fareFamilyDetailsID').html(response);
        //         // Handle success response data here
        //     },
        //     error: function(xhr, status, error) {
        //         console.log('Error:', error);
        //         // Handle error here
        //     },
        //     complete: function() {
        //         console.log('Complete');
        //         // Handle complete (after success/error) here
        //     }
        // });
    }


    $(document).on("click", ".checkUpsellDetails", function() {
        var keys = $(this).data('keys');
        var offerArrIndex_ = $('#offerArrIndex__' + keys).val();
        var flightSrk_ = $('#flightSrk_' + keys).val();
        var flightSearchToken_ = $('#flightSearchToken_' + keys).val();
        $.ajax({
            url: "{{ route('flight._getUpsellDetails') }}",
            type: 'POST',
            data: {
                'offerArrIndex_': offerArrIndex_,
                'flightSearchToken_': flightSearchToken_,
                'flightSrk_': flightSrk_
            },
            beforeSend: function() {
                console.log('Before Send');
            },
            success: function(response) {
                // console.log('Success:', response);
                $('#fareFamilyDetailsID').html(response);
                // Handle success response data here
            },
            error: function(xhr, status, error) {
                console.log('Error:', error);
                // Handle error here
            },
            complete: function() {
                console.log('Complete');
                // Handle complete (after success/error) here
            }
        });
    });
</script>

@endpush