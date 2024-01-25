
<div class="card w-100 shadow-hover-3 mb-5">
    <ul class="list-group list-group-horizontal">
        <li class="list-group-item flex-fill">
            <div class="row">
                <div class="col-4 pr-0">
                    <img src="https://satgurudmc.com/reseller/assets/thumbnail?src=air:<?php echo e($rows['offerArr']['fareDetails']->validatingCarrier->code); ?>.jpg&h=40" alt="<?php echo e($rows['offerArr']['fareDetails']->validatingCarrier->code); ?>" class="img-fluid rounded-circle">
                </div>
                <div class="col-8 text-left">
                    <a href="#" class="card-title text-dark font-size-20 font-weight-bold" tabindex="0"><?php echo e($rows['offerArr']['fareDetails']->validatingCarrier->name); ?></a>
                    <div class="text-left">
                        <h6 class="font-weight-bold font-ssize-17 text-gray-3 mb-0"><?php echo e($rows['offerArr']['fareDetails']->totalPrice->selling->value); ?><small><?php echo e($rows['offerArr']['fareDetails']->totalPrice->selling->currency); ?></small></h6>
                        <span class="font-weight-normal font-size-14 d-block text-color-1">
                            <?php if($rows['offerArr']['fareDetails']->nonRefundable == true): ?>
                            <small class="text-danger">Non-refundables</small>
                            <?php endif; ?>
                            (Total fare)
                        </span>
                    </div>
                </div>
            </div>
        </li>
        <li class="list-group-item flex-fill">
            <div class="scrollable-container overflow-auto pt-3" id="flightCardContainer">
                <?php ($a = 1); ?>
                <?php $__currentLoopData = $rows['offerArr']['flightsOverview']['flightReferencesArr']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $flightReferencesArrKey => $flightReferencesArr): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="card my-1" style="border: 1px solid #dbdbdb;">
                    <span class="d-flex mx-1 mt-1">
                        <small class="font-size-12 font-weight-normal text-gray-5" style="margin-top: -2px;">
                            <i class="flaticon-aeroplane font-size-14 text-primary"></i>
                            <small class="font-size-12 font-weight-normal text-gray-5">
                                <?php echo e((!empty($flightReferencesArr[0][0]->departure->airport->code)) ? "(".$flightReferencesArr[0][0]->departure->airport->code.")" : ''); ?>

                                <?php echo e($flightReferencesArr[0][0]->departure->city->name); ?>

                            </small>
                        </small>
                        <small class="mx-1 font-size-12 text-gray-1">|</small>
                        <small class="font-size-12 text-gray-1">
                            <?php echo e(date("D M d", strtotime($flightReferencesArr[0][0]->departure->date))); ?> <?php echo e(date("h:i a", strtotime($flightReferencesArr[0][0]->departure->time))); ?>

                        </small>
                    </span>
                </div>
                <?php ($a++); ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </li>
        <li class="list-group-item">
            <div class="d-flex justify-content-center pl-3 pr-3 pt-3" id="paginationContainer">
                <a href="javascript:;" class="btn btn-blue-1 font-size-14 width-260 text-lh-lg transition-3d-hover py-1" onclick="showNextPage()">Next Page</a>
            </div>
        </li>
    </ul>
    <div id="targetModal_<?php echo e($keys); ?>" class="modal fade" data-modal-type="ontarget" data-open-effect="fadeIn" data-close-effect="fadeOut" data-speed="500">
        <div class="modal-dialog modal-dialog-centered modal-xl">
            <form action="<?php echo e(route('flight.getFlight')); ?>" method="POST">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Fare Family Details</h5>
                        <button type="button" class="border-0 width-50 height-50 bg-primary flex-content-center position-absolute rounded-circle mt-n4 mr-n4 top-0 right-0 font-size-25" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true" class="font-size-25">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        
                        <div class="card mx-4 mx-xl-0 mb-4 mb-md-0 w-100">
                            <?php ($y=0); ?>
                            <?php $__currentLoopData = $rows['offerArr']['flightsOverview']['flightReferencesArr']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $flightReferencesArrKey => $flightReferencesArr): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                            <?php ($rand = rand(1000, 9999)); ?>
                            <div class="card m-2 " id="classs_<?php echo e($rand); ?>">
                                <div class="row my-2 align-items-center text-center">
                                    <div class="col-md-3 mb-4 mb-md-0">
                                        <div class="d-block d-lg-flex flex-horizontal-center">
                                            <input type="hidden" name="offerArrIndex" id="offerArrIndex__<?php echo e($keys); ?>" value="<?php echo e($rows['offerArr']['index']); ?>">
                                            <input required="required" onclick="checkedSegement('<?php echo e($flightReferencesArrKey); ?>','<?php echo e($flightReferencesArr[0][0]->key); ?>','<?php echo e($keys); ?>','<?php echo e($rows['offerArr']['index']); ?>')" type="radio" name="segmentJson" class="offerKey_<?php echo e($keys); ?> form-control mx-2 highlight-checkbox radioAfter_<?php echo e($flightReferencesArrKey); ?>" value="<?php echo e(json_encode($flightReferencesArr)); ?>" data-target="classs_<?php echo e($rand); ?>">
                                            <img class="img-fluid mr-3 mb-3 mb-lg-0 max-width-10"  src="https://satgurudmc.com/reseller/assets/thumbnail?src=air:<?php echo e($flightReferencesArr[0][0]->marketingCarrier->airline->code); ?>.jpg&h=40" alt="Image-Description">
                                            <div class="font-size-14"> <?php echo e($flightReferencesArr[0][0]->marketingCarrier->airline->name); ?> | <?php echo e($flightReferencesArr[0][0]->marketingCarrier->airline->code); ?> <?php echo e($flightReferencesArr[0][0]->marketingCarrier->flightNumber); ?></div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 mb-4 mb-md-0">
                                        <div class="mx-2 mx-xl-3 flex-content-center align-items-start d-block d-lg-flex">
                                            <div class="mr-lg-3 mb-1 mb-lg-0">
                                                <i class="flaticon-aeroplane font-size-30 text-primary"></i>
                                            </div>
                                            <div class="text-lg-left">
                                                <h6 class="font-weight-bold font-size-21 text-gray-5 mb-0">
                                                    <?php echo e($flightReferencesArr[0][0]->departure->time); ?>

                                                </h6>
                                                <div class="font-size-14 text-gray-5">
                                                    <?php echo e(date("D d M y", strtotime($flightReferencesArr[0][0]->departure->date))); ?>

                                                </div>
                                                <span class="font-size-14 text-gray-1">
                                                    <?php echo e($flightReferencesArr[0][0]->departure->airport->code." ".$flightReferencesArr[0][0]->departure->airport->name.", ".$flightReferencesArr[0][0]->departure->city->name); ?>

                                                </span>
                                                <br>
                                                <small class="font-size-10 text-muted">
                                                    Terminal: <?php echo e($flightReferencesArr[0][0]->arrival->terminal); ?>

                                                </small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 mb-4 mb-md-0">
                                        <div class="mx-2 mx-xl-3 flex-content-center flex-column">
                                            <h6 class="font-size-14 font-weight-bold text-gray-5 mb-0"><?php echo e($flightReferencesArr[0][0]->flightDetails->duration); ?> hrs</h6>
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
                                                    <?php echo e($flightReferencesArr[0][0]->arrival->time); ?>

                                                </h6>
                                                <div class="font-size-14 text-gray-5">
                                                    <?php echo e(date("D d M y", strtotime($flightReferencesArr[0][0]->arrival->date))); ?>

                                                </div>
                                                <span class="font-size-14 text-gray-1">
                                                    <?php echo e($flightReferencesArr[0][0]->arrival->airport->code." ".$flightReferencesArr[0][0]->arrival->airport->name.", ".$flightReferencesArr[0][0]->arrival->city->name); ?>

                                                </span>
                                                <br>
                                                <small class="font-size-10 text-muted">
                                                    Terminal: <?php echo e($flightReferencesArr[0][0]->arrival->terminal); ?>

                                                </small>
                                            </div>
                                        </div>
                                    </div>
                                    
                        </div>
                    </div>
                    <?php ($y++); ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
                <div class="card mx-4 mx-xl-0 my-2 mb-md-0 w-100">
                    <ul class="list-group list-group-borderless list-group-horizontal list-group-flush no-gutters row mx-4">
                        <li class="col-md-3 list-group-item item auditorium term-15">
                            <i class="icofont-check-circled icon-default"></i>
                            <span class="mx-1 font-size-16 text-dark">Cabin:</span>
                            <span class="mx-1 font-size-16 text-dark">
                                <?php echo e($rows['offerArr']['fareDetails']->brandedFare[0]->cabin ?? ''); ?>

                            </span>
                        </li>
                        <li class="col-md-3 list-group-item item auditorium term-15">
                            <i class="icofont-check-circled icon-default"></i>
                            <span class="mx-1 font-size-16 text-dark">Validating Carrier:</span>
                            <span class="mx-1 font-size-16 text-dark">
                                <?php echo e($rows['offerArr']['fareDetails']->validatingCarrier->name ?? ''); ?>

                            </span>
                        </li>
                        <li class="col-md-3 list-group-item item auditorium term-15">
                            <i class="icofont-check-circled icon-default"></i>
                            <span class="mx-1 font-size-16 text-dark">Fare basis codes:</span>
                            <span class="mx-1 font-size-16 text-dark">
                                <?php echo e($rows['offerArr']['offerItems'][0]->fareComponents[0]->fareBasisCode ?? ''); ?>

                            </span>
                        </li>
                        <li class="col-md-3 list-group-item item auditorium term-15">
                            <i class="icofont-check-circled icon-default"></i>
                            <span class="mx-1 font-size-16 text-dark">Fare Family:</span>
                            <span class="mx-1 font-size-16 text-dark">
                                <?php echo e($rows['offerArr']['fareDetails']->brandedFare[0]->name ?? ''); ?>

                            </span>
                        </li>
                    </ul>
                </div>
        </div>
        <div class="modal-footer mx-auto">
            <div class="text-center justify-content-between">
                <?php echo csrf_field(); ?>
                <?php ($offerItems = ''); ?>
                <?php $__currentLoopData = $rows['offerArr']['offerItems']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $offerItemsArrKey => $offerItemsArr): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php if($offerItemsArr->ptc == 'ADT'): ?>
                <?php ($offerItems.= 'Adult: '.$offerItemsArr->price->fullFare." ".$offerItemsArr->price->currency."<br>"); ?>
                <?php endif; ?>
                <?php if($offerItemsArr->ptc == 'CHD'): ?>
                <?php ($offerItems.= 'Child: '.$offerItemsArr->price->fullFare." ".$offerItemsArr->price->currency); ?>
                <?php endif; ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <input type="hidden" name="offerArrIndex" id="offerArrIndex_<?php echo e($keys); ?>" value="<?php echo e($rows['offerArr']['index']); ?>">
                <input type="hidden" name="offerFlightReference" class="offerFlightReference_<?php echo e($keys); ?>" value="">
                <input type="hidden" name="offerFlightReferenceKey" class="offerFlightReferenceKey_<?php echo e($keys); ?>" value="">
                <input type="hidden" name="flightSrk" id="flightSrk_<?php echo e($keys); ?>" value="<?php echo e($flightsData['srk']); ?>">
                <input type="hidden" name="flightSearchToken" id="flightSearchToken_<?php echo e($keys); ?>" value="<?php echo e($flightsData['tokensSearchResults']); ?>">
                <div class="mb-1">
                    <label class="unit h3">
                        <?php echo e($rows['offerArr']['fareDetails']->totalPrice->selling->value); ?>

                        <small><?php echo e($rows['offerArr']['fareDetails']->totalPrice->selling->currency); ?></small>
                    </label>
                    <i data-toggle="tooltip" data-placement="top" title="" class="icofont-info-circle" data-html="true" data-original-title="<?php echo e($offerItems); ?>"></i>
                    <span class="font-weight-normal font-size-14 d-block text-color-1">
                        <?php if(isset($rows['offerArr']['fareDetails']->nonRefundable) && $rows['offerArr']['fareDetails']->nonRefundable == true): ?>
                        <small class="text-danger">Non-refundables</small>
                        <?php endif; ?>
                        (Total fare)</span>
                </div>
                <button name="submit" class="btn btn-primary d-flex align-items-center justify-content-center height-60 w-100 mb-xl-0 mb-lg-1 transition-3d-hover font-weight-bold btn-primary checkUpsellDetails" type="button" data-toggle="modal" data-target="#targetModal_" data-keys="<?php echo e($keys); ?>">
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
</div><?php /**PATH C:\wamp64\www\vdholiday\themes/Mytravel/Flight/Views/frontend/layouts/search/loop-grid_1.blade.php ENDPATH**/ ?>