<style>
    .card {
        background-color: #ffffff;
        border-radius: 15px;
        box-shadow: 0 0 0px rgba(0, 0, 0, 0.1);
        margin: 15px;
        padding: 6px;
    }

    .card-header {
        background-color: #ffff;
        border-bottom: none;
        padding: 10px;
    }

    .card-title {
        color: #007bff;
        font-size: 1.2rem;
        margin-bottom: 0;
    }

    .btn {
        border-radius: 10px;
    }

    .collapse-link {
        color: #007bff;
        text-decoration: none;
        cursor: pointer;
    }


    .collapsed .fa-minus-circle {
        display: none;
    }

    .fa-plus-circle {
        display: none;
    }

    .card-body {
        padding: 15px;
    }

    .fa-check-circle {
        color: #28a745;
    }

    .fa-times-circle {
        color: #dc3545;
    }

    .fa-exclamation-circle {
        color: #ffc107;
    }

    @media (max-width: 576px) {
        .card {
            margin: 10px;
        }
    }
</style>
<?php ($mainUpsellDataa = []); ?>
<?php $__currentLoopData = $upsellDetails['upsellList']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $upsellListKey => $upsellListVal): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php ($mainUpsellDataa[] = $upsellListVal); ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<div class="border-bottom border-top py-2">
    
    <div id="itinerary">
        <?php $__currentLoopData = $mainUpsellDataa; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $mainUpsellData): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        
        <div class="card border-0 my-3">
            <div class="card-header border-bottom-0 p-0">
                <h5 class="mb-0 d-flex transition-3d-hover shadow-hover-2 item-loop" style="border: 1px dashed #999999; border-radius: 25px; padding: 12px 12px; ">
                    <button type="button" class="collapse-link btn btn-link btn-block d-flex align-items-md-center font-weight-bold p-0 collapsed" data-toggle="collapse" data-target="#<?php echo e($mainUpsellData['fareDetails']['brandedFare'][0]['code']); ?>" aria-expanded="false">
                        <div class="text-primary font-size-22 mb-3 mb-md-0 mr-3">
                            <i class="fa fa-info-circle font-size-16" data-toggle="tooltip" data-placement="top" title="Business Fully Flexible" data-html="true" data-original-title="Business Fully Flexible"></i>
                        </div>
                        <div class="text-primary flex-shrink-0">
                            <span class="text-success mr-1">
                                <?php echo e($mainUpsellData['fareDetails']['brandedFare'][0]['departure']); ?>-<?php echo e($mainUpsellData['fareDetails']['brandedFare'][0]['arrival']); ?>

                                <i class="fa fa-info-circle font-size-16" data-toggle="tooltip" data-placement="top" title="Business Fully Flexible" data-html="true" data-original-title="Business Fully Flexible"></i>
                            </span>
                        </div>
                        <h6 class="font-weight-bold text-gray-3 text-left mb-0 ml-2">
                            <span class="card-title h5">
                                <input type="hidden" name="brandFareCode" value="<?php echo e($mainUpsellData['fareDetails']['brandedFare'][0]['code']); ?>">
                                <?php echo e($mainUpsellData['fareDetails']['brandedFare'][0]['name']); ?>

                            </span>
                            <span class="font-weight-normal font-size-14 d-block text-color-1">
                                <small class="text-danger">
                                    (<?php echo e($mainUpsellData['fareDetails']['validatingCarrier']['code']); ?>) <?php echo e($mainUpsellData['fareDetails']['validatingCarrier']['name']); ?>

                                </small><?php echo e($mainUpsellData['code']); ?>

                            </span>
                        </h6>
                    </button>
                    <div class="m">
                        <div class="mb-1 float-right mx-5 align-items-center justify-content-center">
                            <label class="unit h5">
                                238
                                <small style="font-size: 60%;">
                                    GBP</small>
                            </label>
                            <span class="font-weight-normal font-size-14 d-block text-color-1 align-items-center justify-content-center">
                                <?php echo e($mainUpsellData['fareDetails']['price']['baseFare']); ?> <?php echo e($mainUpsellData['fareDetails']['price']['currency']); ?> (Total fare)
                            </span>
                        </div>
                        <button name="submit" type="button" class="btn btn-primary d-flex align-items-center justify-content-center height-60 w-100 mb-xl-0 mb-lg-1 transition-3d-hover font-weight-bold btn-sm mt-3 rounded"><span class="stop-color-white">Select Fare</span>
                            <i class="fa fa-spinner fa-spin ml-1" style="display: none;"></i>
                        </button>
                    </div>
                </h5>
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
            <div id="<?php echo e($mainUpsellData['fareDetails']['brandedFare'][0]['code']); ?>" class="collapse" data-parent="#itinerary" style="background: #f8f8f8;
    border: 1px solid #e5e5e5;
    box-shadow: 0px 0px 5px 1px #ebebeb;">
                <?php $__currentLoopData = $separatedByCategory; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $separatedByCategoryKey => $separatedByCategoryVal): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php
                $formattedKey = str_replace(' ', '_', $separatedByCategoryKey);
                ?>
                <div class="col-6 card border-0 mb-1 pb-1">
                    <div class="card-header border-bottom-0 p-0">
                        <h5 class="mb-0">
                            <button type="button" class="collapse-link btn btn-link btn-block d-flex align-items-md-center p-0" data-toggle="collapse" data-target="#<?php echo e($formattedKey); ?>" aria-expanded="true" aria-controls="<?php echo e($formattedKey); ?>">
                                <div class="p-2 mb-3 mb-md-0 mr-4">
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
                                <h6 class="font-weight-bold text-gray-3 mb-0 capitalize"><?php echo e($separatedByCategoryKey); ?>

                                </h6>
                            </button>
                        </h5>
                    </div>
                    <div id="<?php echo e($formattedKey); ?>" class="collapse" data-parent="#<?php echo e($formattedKey); ?>" style="">
                        <div class="card-body">
                            <?php $__currentLoopData = $separatedByCategoryVal; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $categoryVal): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <?php $color = 'secondary';
                            $icon = 'check';
                            if ($categoryVal['chargeType'] == 'notOffered') {
                                $color = 'danger';
                                $icon = 'times';
                            } else if ($categoryVal['chargseType'] == 'included') {
                                $color = 'success';
                                $icon = 'check';
                            } else if ($categoryVal['chargeType'] == 'chargeable') {
                                $color = 'warning';
                                $icon = 'exclamation';
                            }
                            ?>
                            <span class="mr-2"> <i class="fa fa-<?php echo e($icon); ?>-circle text-<?php echo e($color); ?>"></i> <?php echo e($categoryVal['name']); ?></span>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>
                    </div>
                </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
</div><?php /**PATH C:\wamp64\www\vdholiday\themes/Mytravel/Flight/Views/frontend/layouts/details/2fareFamilyModalBody.blade.php ENDPATH**/ ?>