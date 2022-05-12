@extends('frontend.include.master')
@section('content')
    <section class=body-top-section>
        <div class=container>
            <div class=row>
                <div class="col-6 col-lg-8">
                    <div class=text-container>
                        <h1>{{ $destination['title'] }}</h1>
                        <p>Serving since 2015</p>
                    </div>
                </div>
                <div class="col-6 col-lg-4">
                    <div class=img-container> <img src={{ asset('assets/images/logo.png') }} alt=""> </div>
                </div>
            </div>
        </div>
    </section>
    <main class="study-detail-page mx-auto">
        <section class="container study-detail">
            <div class=heading-main-container>
                <h2 class=heading-main>{{ $destination['title'] }}</h2>
                <div class=two-line>
                    <div class=line1></div>
                    <div class=line2></div>
                </div>
            </div>
            <p class="text-description">
            <h1><b>{{ $destination->title }} </b></h1> <br>
            <font size="+1.5">{!! html_entity_decode($destination->description) !!}</font>
            </p>
            </font>
            <div class=collapse-section>
                @foreach ($destination->country as $contry)
                    <div class=collapse-container> <button type=button data-bs-toggle=collapse
                            data-bs-target="#collapseExample{{ $contry->id }}" aria-expanded=false aria-controls=collapseExample>
                            <span>{{ $contry->name }}</span> <i class=ic-plus></i>
                        </button>
                        <div class=collapse id="collapseExample{{ $contry->id }}">
                            <div class="card card-body mt-2">
                                <p>{!! html_entity_decode($contry->description) !!}</p>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
            <a href="{{ route('contact') }}">
                <div class=btn-container> <button class="btn btn-primary"> <i class=ic-message></i> Contact With Counselor
                    </button> </div>
            </a>
        </section>
    </main>
@endsection
