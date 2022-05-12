@extends('frontend.include.master')
@section('content')
<section class="body-top-section">
    <div class="container">
      <div class="row">
        <div class="col-6 col-lg-8">
          <div class="text-container">
            <h1>About Employee</h1>
            <p>Serving since 2015</p>
          </div>
        </div>
        <div class="col-6 col-lg-4">
          <div class="img-container">
            <img src=assets/images/logo.png alt="">
          </div>
        </div>
      </div>
    </div>
  </section>
  <main class="employee-page">
    <section class="container employee-details">
      <div class="row too my-5">
        <div class="col-lg-5">
          <div class="heading-main-container" style="justify-content: center; align-items: center;">

            <img src="{{$user->photo}}" width="300px" height="300px" alt="">
            <br>
            <h2 class="heading-main">{{$user->full_name}}</h2>
            <h2 class="desire-employee-cont">
              Contact Using
            </h2>
            <br>
            <ul>
              <li class="icon-holder"><a href="{{ $user->facebook }}"><i class="ic-facebook"></i></a></li>
              <li class="icon-holder"><a href="{{ $user->twitter }}"><i class="ic-twitter"></i></a></li>
              <li class="icon-holder"><a href="{{ $user->instagram }}"><i class="ic-instagram"></i></a></li>
            </ul>
          </div>

        </div>
        <div class="col-lg-5 mt-lg-0 mt-5">
          <div class="heading-main-container">
            <h2 class="heading-main">Description</h2>
            <div class="two-line">
              <div class="line1"></div>
              <div class="line2"></div>
            </div>
          </div>
          <p class="desire-mission-desc">
            {!! html_entity_decode($user->description) !!} 
          </p>
        </div>
      </div>
    </section>


  </main>

@endsection