<div class="d-block d-md-flex flex-center-between align-items-start mb-3">
    <div class="mb-3">
        <div class="d-block d-md-flex flex-horizontal-center mb-2 mb-md-0">
            <h4 class="font-size-23 font-weight-bold mb-1 mr-3">{!! clean($translation->title ?? 'na') !!}</h4>
            {{-- @if($row->getReviewEnable())
                <span class="font-size-14 text-primary mr-2">{{ $review_score['score_total'] ?? 'na' }}/5 {{$review_score['score_text'] ?? 'na'}}</span>
                <span class="font-size-14 text-gray-1 ml-1">{{__(":number reviews",['number'=>$review_score['total_review']]) ?? 'na'}}</span>
            @endif --}}
        </div>
    </div>
    <ul class="list-group list-group-borderless list-group-horizontal custom-social-share">
        <li class="list-group-item px-1">
            <a href="#" class="height-45 width-45 border rounded border-width-2 flex-content-center">
                <i class="flaticon-like font-size-18 text-dark"></i>
            </a>
        </li>
        <li class="list-group-item px-1">
            <a href="#" class="height-45 width-45 border rounded border-width-2 flex-content-center">
                <i class="flaticon-share font-size-18 text-dark"></i>
            </a>
        </li>
    </ul>
</div>

<div class="py-4 border-top border-bottom mb-4">
    <ul class="list-group list-group-borderless list-group-horizontal flex-center-between text-center mx-md-4 flex-wrap">
        @if(!empty($row->square))
            <li class="list-group-item text-lh-sm ">
                <i class="flaticon-plans text-primary font-size-50 mb-1 d-block"></i>
                <div class="text-gray-1">{!! size_unit_format($row->square) !!}</div>
            </li>
        @endif
        <li class="list-group-item text-lh-sm ">
            <i class="flaticon-door text-primary font-size-50 mb-1 d-block"></i>
            <div class="text-gray-1"> {{$row->max_guests ?? 'na'}} {{ __("People") }}</div>
        </li>
        @if(!empty($row->bathroom))
            <li class="list-group-item text-lh-sm ">
                <i class="flaticon-bathtub text-primary font-size-50 mb-1 d-block"></i>
                <div class="text-gray-1"> {{$row->bathroom}} {{ __("bathrooms") }}</div>
            </li>
        @endif
        @if(!empty($row->bed))
            <li class="list-group-item text-lh-sm ">
                <i class="flaticon-bed-1 text-primary font-size-50 mb-1 d-block"></i>
                <div class="text-gray-1">{{$row->bed}} {{ __("beds") }}</div>
            </li>
        @endif
    </ul>
</div>
@if(!empty($translation->content))
    <div class="border-bottom position-relative">
        <h5 class="font-size-21 font-weight-bold text-dark">
            {{ __("Description") }}
        </h5>
        <div class="description">
            <?php echo $translation->content ?? '' ?>
        </div>
    </div>
@endif
{{-- @include('Flight::frontend.layouts.details.space-attributes') --}}
{{-- @include('Flight::frontend.layouts.details.space-faqs') --}}

