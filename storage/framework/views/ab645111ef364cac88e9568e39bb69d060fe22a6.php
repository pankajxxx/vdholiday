<div class="row  pt-5 pt-xl-8 mb-5 mb-xl-9 pb-xl-1">
    <div class="col-lg-3 col-md-12">
        <?php echo $__env->make('Flight::frontend.layouts.search.filter-search', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
    <div class="col-lg-9 col-md-12">
        <div class="bravo-list-item">
            <div class="d-flex justify-content-between align-items-center mb-4 topbar-search">
                <h3 class="font-size-21 font-weight-bold mb-0 text-lh-1">
                    <?php if($rows->total() > 1): ?>
                    <?php echo e(__(":count flights found",['count'=>$rows->total()])); ?>

                    <?php else: ?>
                    <?php echo e(__(":count flight found",['count'=>$rows->total()])); ?>

                    <?php endif; ?>
                </h3>
                <div class="control">
                    <?php echo $__env->make('Flight::frontend.layouts.search.orderby', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>
            </div>
            
<div class="list-item" id="flightFormBook">
    <div>
        <?php if(count($flightsData) > 0): ?>
        <?php $__currentLoopData = $flightsData['arr']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $keys => $rows): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="col-md-12 col-lg-12">
            
            <?php echo $__env->make('Flight::frontend.layouts.search.loop-grid_1', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
        <input type="hidden" id="flightSrk" value="<?php echo e($flightsData['srk']); ?>">
        <input type="hidden" id="flightSearchToken" value="<?php echo e($flightsData['tokensSearchResults']); ?>">
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <?php else: ?>
        <div class="col-lg-12">
            <?php echo e(__("Flight not found")); ?>

        </div>
        <?php endif; ?>
    </div>
</div>
<?php echo $__env->make('Flight::frontend.layouts.search.modal-form-book', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>


</div>
</div>
</div>
<div class="modal fade" tabindex="-1" role="dialog" id="targetModal_" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-centered">
        <div class="modal-content fareFamilyModal">
            <div class="modal-header row m-1 p-1">
                <div class="card-header col-12 d-flex my-0 py-0">
                    <h5 class="modal-title">Select Fare Family</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="container row transition-3d-hover shadow-hover-2 item-loop p-1 m-2" style="border: 1px solid #d0d0d0; border-radius: 15px;">
                    <div class="card-header col-md-4 flex collapsed" data-toggle="collapse" href="#LITE" role="button" aria-expanded="false" aria-controls="LITE">
                        <i class="fa fa-arrow-down mr-2 font-size-16" data-toggle="tooltip" data-placement="top" title="" data-html="true" data-original-title="Fly with what you have on, hand luggage only. Ideal for weekend breaks or short work trips."></i>
                        <span class="text-success mr-1">
                            ORY-MAD
                            <i class="fa fa-info-circle font-size-16" data-toggle="tooltip" data-placement="top" title="" data-html="true" data-original-title="Business Fully Flexible"></i>
                        </span>
                        <span class="card-title h5">
                            <input type="hidden" name="brandFareCode" value="LITE">
                            LITE
                        </span>
                        <span class="font-weight-normal font-size-14 d-block text-color-1 mt-3">
                            <small class="text-danger">
                                (UX) Air Europa
                            </small>TYYO5L
                        </span>
                    </div>
                    <div class="card-footer col-md-8 d-flex" style="text-align: right;">
                        <div class="m" style="text-align: right; ">
                            <div class="mb-1 float-right mx-5 align-items-center justify-content-center">
                                <label class="unit h5">
                                    238<small style="font-size: 60%;">GBP</small>
                                </label>
                                <span>(Total fare)</span>
                            </div>
                        </div>
                        <button name="submit" type="button" class="btn btn-primary d-flex align-items-center justify-content-center height-60 w-100 transition-3d-hover font-weight-bold btn-sm mt-3 rounded" style="background: #fa5180; color: white; border: 1px solid #fa5180;"><span class="stop-color-white">Reference Fare</span>
                            <i class="fa fa-spinner fa-spin ml-1" style="display: none;"></i>
                        </button>
                    </div>
                    <div class="collapse" id="LITE" style="border-top: 1px solid #d0d0d0;">
                        <div class="card-body row" id="FAQs">
                            <div class="col-6 card border-0 mb-1 pb-1">
                                <div class="card-header border-bottom-0 p-0">
                                    <h5 class="mb-0">
                                        <button type="button" class="collapse-link btn btn-link btn-block d-flex align-items-md-center p-0" data-toggle="collapse" data-target="#carry_on_baggage" aria-expanded="true" aria-controls="carry_on_baggage" style="background: #f8f8f8; border: 1px solid #e5e5e5; box-shadow: 0px 0px 5px 1px #ebebeb;">
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
                                            <h6 class="font-weight-bold text-gray-3 mb-0 capitalize">carry on baggage</h6>
                                        </button>
                                    </h5>
                                </div>
                                <div id="carry_on_baggage" class="collapse" data-parent="#carry_on_baggage">
                                    <div class="card-body">
                                        <span class="mr-2"> <i class="fa fa-check-circle text-success"></i> Carry on hand baggage</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6 card border-0 mb-1 pb-1">
                                <div class="card-header border-bottom-0 p-0">
                                    <h5 class="mb-0">
                                        <button type="button" class="collapse-link btn btn-link btn-block d-flex align-items-md-center p-0" data-toggle="collapse" data-target="#baggage" aria-expanded="true" aria-controls="baggage" style="background: #f8f8f8; border: 1px solid #e5e5e5; box-shadow: 0px 0px 5px 1px #ebebeb;">
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
                                <div id="baggage" class="collapse" data-parent="#baggage">
                                    <div class="card-body">
                                        <span class="mr-2"> <i class="fa fa-exclamation-circle text-warning"></i> First pre paid
                                            bag</span>
                                        <span class="mr-2"> <i class="fa fa-exclamation-circle text-warning"></i> Prepaid bag</span>
                                        <span class="mr-2"> <i class="fa fa-times-circle text-danger"></i> First checked bag</span>
                                        <span class="mr-2"> <i class="fa fa-times-circle text-danger"></i> Second checked bag</span>
                                        <span class="mr-2"> <i class="fa fa-times-circle text-danger"></i> Third checked bag</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6 card border-0 mb-1 pb-1">
                                <div class="card-header border-bottom-0 p-0">
                                    <h5 class="mb-0">
                                        <button type="button" class="collapse-link btn btn-link btn-block d-flex align-items-md-center p-0" data-toggle="collapse" data-target="#voluntary_change" aria-expanded="true" aria-controls="voluntary_change" style="background: #f8f8f8; border: 1px solid #e5e5e5; box-shadow: 0px 0px 5px 1px #ebebeb;">
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
                                            <h6 class="font-weight-bold text-gray-3 mb-0 capitalize">voluntary change</h6>
                                        </button>
                                    </h5>
                                </div>
                                <div id="voluntary_change" class="collapse" data-parent="#voluntary_change" style="">
                                    <div class="card-body">
                                        <span class="mr-2"> <i class="fa fa-exclamation-circle text-warning"></i> Changeable
                                            ticket</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6 card border-0 mb-1 pb-1">
                                <div class="card-header border-bottom-0 p-0">
                                    <h5 class="mb-0">
                                        <button type="button" class="collapse-link btn btn-link btn-block d-flex align-items-md-center p-0" data-toggle="collapse" data-target="#OTHER" aria-expanded="true" aria-controls="OTHER" style="background: #f8f8f8; border: 1px solid #e5e5e5; box-shadow: 0px 0px 5px 1px #ebebeb;">
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
                                            <h6 class="font-weight-bold text-gray-3 mb-0 capitalize">OTHER</h6>
                                        </button>
                                    </h5>
                                </div>
                                <div id="OTHER" class="collapse" data-parent="#OTHER" style="">
                                    <div class="card-body">
                                        <span class="mr-2"> <i class="fa fa-times-circle text-danger"></i> Refundable ticket</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6 card border-0 mb-1 pb-1">
                                <div class="card-header border-bottom-0 p-0">
                                    <h5 class="mb-0">
                                        <button type="button" class="collapse-link btn btn-link btn-block d-flex align-items-md-center p-0" data-toggle="collapse" data-target="#seat" aria-expanded="true" aria-controls="seat" style="background: #f8f8f8; border: 1px solid #e5e5e5; box-shadow: 0px 0px 5px 1px #ebebeb;">
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
                                            <h6 class="font-weight-bold text-gray-3 mb-0 capitalize">seat</h6>
                                        </button>
                                    </h5>
                                </div>
                                <div id="seat" class="collapse" data-parent="#seat" style="">
                                    <div class="card-body">
                                        <span class="mr-2"> <i class="fa fa-exclamation-circle text-warning"></i> Pre reserved seat
                                            assignment</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6 card border-0 mb-1 pb-1">
                                <div class="card-header border-bottom-0 p-0">
                                    <h5 class="mb-0">
                                        <button type="button" class="collapse-link btn btn-link btn-block d-flex align-items-md-center p-0" data-toggle="collapse" data-target="#meal_beverage" aria-expanded="true" aria-controls="meal_beverage" style="background: #f8f8f8; border: 1px solid #e5e5e5; box-shadow: 0px 0px 5px 1px #ebebeb;">
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
                                            <h6 class="font-weight-bold text-gray-3 mb-0 capitalize">meal beverage</h6>
                                        </button>
                                    </h5>
                                </div>
                                <div id="meal_beverage" class="collapse" data-parent="#meal_beverage" style="">
                                    <div class="card-body">
                                        <span class="mr-2"> <i class="fa fa-times-circle text-danger"></i> Meal 1</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6 card border-0 mb-1 pb-1">
                                <div class="card-header border-bottom-0 p-0">
                                    <h5 class="mb-0">
                                        <button type="button" class="collapse-link btn btn-link btn-block d-flex align-items-md-center p-0" data-toggle="collapse" data-target="#in_flight_entertainment" aria-expanded="true" aria-controls="in_flight_entertainment" style="background: #f8f8f8; border: 1px solid #e5e5e5; box-shadow: 0px 0px 5px 1px #ebebeb;">
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
                                            <h6 class="font-weight-bold text-gray-3 mb-0 capitalize">in flight entertainment</h6>
                                        </button>
                                    </h5>
                                </div>
                                <div id="in_flight_entertainment" class="collapse" data-parent="#in_flight_entertainment" style="">
                                    <div class="card-body">
                                        <span class="mr-2"> <i class="fa fa-exclamation-circle text-warning"></i> WiFi</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6 card border-0 mb-1 pb-1">
                                <div class="card-header border-bottom-0 p-0">
                                    <h5 class="mb-0">
                                        <button type="button" class="collapse-link btn btn-link btn-block d-flex align-items-md-center p-0" data-toggle="collapse" data-target="#lounge" aria-expanded="true" aria-controls="lounge" style="background: #f8f8f8; border: 1px solid #e5e5e5; box-shadow: 0px 0px 5px 1px #ebebeb;">
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
                                            <h6 class="font-weight-bold text-gray-3 mb-0 capitalize">lounge</h6>
                                        </button>
                                    </h5>
                                </div>
                                <div id="lounge" class="collapse" data-parent="#lounge" style="">
                                    <div class="card-body">
                                        <span class="mr-2"> <i class="fa fa-times-circle text-danger"></i> Lounge access</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6 card border-0 mb-1 pb-1">
                                <div class="card-header border-bottom-0 p-0">
                                    <h5 class="mb-0">
                                        <button type="button" class="collapse-link btn btn-link btn-block d-flex align-items-md-center p-0" data-toggle="collapse" data-target="#travel_services" aria-expanded="true" aria-controls="travel_services" style="background: #f8f8f8; border: 1px solid #e5e5e5; box-shadow: 0px 0px 5px 1px #ebebeb;">
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
                                            <h6 class="font-weight-bold text-gray-3 mb-0 capitalize">travel services</h6>
                                        </button>
                                    </h5>
                                </div>
                                <div id="travel_services" class="collapse" data-parent="#travel_services" style="">
                                    <div class="card-body">
                                        <span class="mr-2"> <i class="fa fa-exclamation-circle text-warning"></i> Priority
                                            boarding</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="fareFamilyDetailsID">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div><?php /**PATH C:\wamp64\www\vdholiday\themes/Mytravel/Flight/Views/frontend/layouts/search/list-item.blade.php ENDPATH**/ ?>