<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\ContactController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Auth::routes(['register' => false]);
Route::get('/',[\App\Http\Controllers\Frontend\IndexController::class,'index'])->name('index');
Route::get('contact',[\App\Http\Controllers\Frontend\ContactController::class,'index'])->name('contact');
Route::post('contact-form',[\App\Http\Controllers\Frontend\ContactController::class,'contactForm'])->name('contact.form');
Route::post('apply-form',[\App\Http\Controllers\Frontend\IndexController::class,'ApplyForm'])->name('Apply.form');
Route::post('enquery-form',[\App\Http\Controllers\Frontend\IndexController::class,'EnqueryForm'])->name('enquery.now');
Route::get('About-us',[\App\Http\Controllers\Frontend\AboutController::class,'index'])->name('about');
Route::get('Testimonials',[\App\Http\Controllers\Frontend\TestimonialController::class,'index'])->name('testimonials');
Route::get('Our-team',[\App\Http\Controllers\Frontend\TeamController::class,'index'])->name('team');
// team page
Route::get('/foo', function () {
Artisan::call('storage:link');
});
Route::get('Our-team/{id}/',[\App\Http\Controllers\Frontend\TeamController::class,'show'])->name('team.details');
Route::get('Dmit',[\App\Http\Controllers\Frontend\ServiceController::class,'index'])->name('services');
Route::get('Our_Offers',[\App\Http\Controllers\Frontend\OfferController::class,'index'])->name('offers');
Route::get('Blog',[\App\Http\Controllers\Frontend\BlogController::class,'index'])->name('blog');
Route::get('Blog-details/{slug}/',[\App\Http\Controllers\Frontend\BlogController::class,'show'])->name('blog.details');
Route::get('Study',[\App\Http\Controllers\Frontend\stydy::class,'index'])->name('study');
//Product category
Route::get('destination/{id}/',[\App\Http\Controllers\Frontend\IndexController::class,'destinationCategory'])->name('destinationa.category');
Route::POST('/contact-add',[ContactController::class,'contact_store'])->name('contact.store');

Route::middleware(['auth','isAdmin'])->group(function () {
    Route::get('/dashboard', function () {
       return view('admin.dashboard');
    });
    // Destination
    Route::get('/admin/destination/all/category',[\App\Http\Controllers\destinationController::class,'index'])->name('list.destination');
    Route::post('admin/destination/category_status',[\App\Http\Controllers\destinationController::class,' destinationStatus'])->name('destination.status');
    Route::get('/admin/destination/adddestination',[\App\Http\Controllers\destinationController::class,'createdestination'])->name('list.createdestination');
    Route::post('/admin/destination/add',[\App\Http\Controllers\destinationController::class,'destinationstore'])->name('destination.store');
    Route::get('/admin/destination/editmain/{id}',[\App\Http\Controllers\destinationController::class,'destinationedit'])->name('destination.edit');
    Route::put('/admin/destination/update/{id}',[\App\Http\Controllers\destinationController::class,'destinationupdate'])->name('destination.update');
    Route::delete('/admin/destination/delete/{id}',[\App\Http\Controllers\destinationController::class,'destinationdestroy'])->name('destination.destroy');
    // Blog
    Route::resource('/adminblog',\App\Http\Controllers\adminblogController::class);
    Route::post('adminblog_status',[\App\Http\Controllers\adminblogController::class,'adminbannerStatus'])->name('adminbanner.status');
     // Country
     Route::resource('/country',\App\Http\Controllers\countryController::class);
     Route::post('country_status',[\App\Http\Controllers\countryController::class,'countryStatus'])->name('country.status');
    
     // Banner Section
    Route::resource('/banner',\App\Http\Controllers\BannerController::class);
    Route::post('banner_status',[\App\Http\Controllers\BannerController::class,'bannerStatus'])->name('banner.status');
    // Create Testimonials
    Route::resource('/testimonials',\App\Http\Controllers\TestimonialsController::class);
    Route::post('testimonials_status',[\App\Http\Controllers\TestimonialsController::class,'TestimonialsStatus'])->name('Testimonials.status');
    //User Section
    Route::resource('/admin/user',\App\Http\Controllers\UserController::class);
    Route::post('admin/user_status',[\App\Http\Controllers\UserController::class,'userStatus'])->name('user.status');
    Route::put('admin/user_update',[\App\Http\Controllers\UserController::class,'userupdate'])->name('user.update');
    // our Offers   
    Route::resource('/offer',\App\Http\Controllers\OfferController::class);
    Route::post('offers_status',[\App\Http\Controllers\OfferController::class,'offerStatus'])->name('offer.status');
    // Contact us page
    Route::get('/admin/contact',[\App\Http\Controllers\ContactController::class,'index'])->name('list.contact');
    Route::delete('/admin/contact/{id}',[\App\Http\Controllers\ContactController::class,'destroy'])->name('contact.destroy');
    // Apply now page
    Route::get('/admin/Applyuser',[\App\Http\Controllers\ApplynowController::class,'index'])->name('list.apply');
    Route::delete('/admin/Applyuser/{id}',[\App\Http\Controllers\ApplynowController::class,'destroy'])->name('apply.destroy');
    //category
    Route::get('/admin/blogcategory',[\App\Http\Controllers\BlogcategoryController::class,'index'])->name('list.category');
    Route::post('blog/category_status',[\App\Http\Controllers\BlogcategoryController::class,' blogcategoryStatus'])->name('blogcategory.status');
    Route::get('/admin/blogcategory/addcategory',[\App\Http\Controllers\BlogcategoryController::class,'blogcreate'])->name('list.create');
    Route::post('/admin/blogcategory/add',[\App\Http\Controllers\BlogcategoryController::class,'blogstore'])->name('list.store');
    Route::get('/admin/blogcategory/editmain/{id}',[\App\Http\Controllers\BlogcategoryController::class,'blogedit'])->name('blogcategory.edit');
    Route::put('/admin/blogcategory/update/{id}',[\App\Http\Controllers\BlogcategoryController::class,'blogupdate'])->name('blogcategory.update');
    Route::delete('/admin/blogcategory/delete/{id}',[\App\Http\Controllers\BlogcategoryController::class,'blogdestroy'])->name('blogcategory.destroy');
    // Enquiry page 
    Route::get('/admin/enquerynow',[\App\Http\Controllers\EnqueryNowController::class,'index'])->name('list.enquery');
    Route::delete('/admin/enqueryuser/{id}',[\App\Http\Controllers\EnqueryNowController::class,'destroy'])->name('enquery.destroy');
    // for About Page in admin
    Route::get('admin/edit/aboutuspage',[\App\Http\Controllers\AboutController::class,'index'])->name('about.index');
    Route::put('aboutus/update',[\App\Http\Controllers\AboutController::class,'update'])->name('aboutus.update');
     // for House Page in admin
     Route::get('admin/Home/edithomepage',[\App\Http\Controllers\HouseController::class,'index'])->name('house.index');
     Route::put('House/update',[\App\Http\Controllers\HouseController::class,'update'])->name('house.update');
    // for services Page in admin
    Route::get('admin/edit/DMIT',[\App\Http\Controllers\ServiceController::class,'index'])->name('services.index');
    Route::put('services/update',[\App\Http\Controllers\ServiceController::class,'update'])->name('services.update');
    // setting Route
    Route::get('admin/setting',[\App\Http\Controllers\SettingsController::class,'index'])->name('setting.index');
    Route::put('admin/setting/Update',[\App\Http\Controllers\SettingsController::class,'settingsUpdate'])->name('setting.update');
    Route::get('admin/logout',[\App\Http\Controllers\IndexController::class,'logout'])->name('admin.logout');
    //User Account change Password
    Route::get('/admin/changepassword',[\App\Http\Controllers\HouseController::class,'adminAccount'])->name('admin.account');
    Route::post('/admin/update/account/{id}', [ \App\Http\Controllers\HouseController::class, 'adminupdateAccount'])->name('adminupdate.account');
});;
 
Auth::routes();


// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::middleware(['auth','isEmployee'])->group(function () {

    Route::get('/employee', function () {
       return view('employee.dashboard');
    });
    // Banner Section
    Route::resource('/employeebanner',\App\Http\Controllers\Employee\employeebannerController::class);
    Route::post('employeebanner_status',[\App\Http\Controllers\Employee\employeebannerController::class,'employeebannerStatus'])->name('employeebanner.status');
    
    // Destination
    Route::get('/employee/destination/all/category',[\App\Http\Controllers\Employee\employeedestinationController::class,'index'])->name('employee.destination');
    Route::post('employee/destination/category_status',[\App\Http\Controllers\Employee\employeedestinationController::class,' employeedestinationStatus'])->name('employeedestination.status');
    Route::get('/employee/destination/adddestination',[\App\Http\Controllers\Employee\employeedestinationController::class,'employeecreatedestination'])->name('employeelist.createdestination');
    Route::post('/employee/destination/add',[\App\Http\Controllers\Employee\employeedestinationController::class,'employeedestinationstore'])->name('employeedestination.store');
    Route::get('/employee/destination/editmain/{id}',[\App\Http\Controllers\Employee\employeedestinationController::class,'employeedestinationedit'])->name('employeedestination.edit');
    Route::put('/employee/destination/update/{id}',[\App\Http\Controllers\Employee\employeedestinationController::class,'employeedestinationupdate'])->name('employeedestination.update');
    Route::delete('/employee/destination/delete/{id}',[\App\Http\Controllers\Employee\employeedestinationController::class,'employeedestinationdestroy'])->name('employeedestination.destroy');
     // Country
     Route::resource('/employeecountry',\App\Http\Controllers\Employee\employeecountryController::class);
     Route::post('employee/country_status',[\App\Http\Controllers\Employee\employeecountryController::class,'employeecountryStatus'])->name('employeecountry.status');
    
    // Contact us page
    Route::get('/employee/contact',[\App\Http\Controllers\Employee\employeecontactController::class,'index'])->name('employeelist.contact');
    Route::delete('/employee/contact/{id}',[\App\Http\Controllers\Employee\employeecontactController::class,'destroy'])->name('employeecontact.destroy');
     // Enquiry page 
     Route::get('/employee/enquerynow',[\App\Http\Controllers\Employee\enqueryNowController::class,'index'])->name('employeelist.enquery');
     Route::delete('/employee/enqueryuser/{id}',[\App\Http\Controllers\Employee\enqueryNowController::class,'destroy'])->name('employeeenquery.destroy');
     // Apply now page
    Route::get('/employee/Applyuser',[\App\Http\Controllers\Employee\applynowController::class,'index'])->name('employeelist.apply');
    Route::delete('/employee/Applyuser/{id}',[\App\Http\Controllers\Employee\applynowController::class,'destroy'])->name('employeeapply.destroy');
    // Create Testimonials
    Route::resource('/employeetestimonials',\App\Http\Controllers\Employee\testimonialsController::class);
    Route::post('employeetestimonials_status',[\App\Http\Controllers\Employee\testimonialsController::class,'employeeTestimonialsStatus'])->name('employeeTestimonials.status');
    // Offer Section
    Route::resource('/employeeoffer',\App\Http\Controllers\Employee\offerController::class);
    Route::post('employeeoffer_status',[\App\Http\Controllers\Employee\offerController::class,'employeeofferStatus'])->name('employeeoffer.status');
    //category
    Route::get('/employee/blogcategory',[\App\Http\Controllers\Employee\BlogcategoryController::class,'index'])->name('employeelist.category');
    Route::post('employee/blog/category_status',[\App\Http\Controllers\Employee\BlogcategoryController::class,' blogcategoryStatus'])->name('employeeblogcategory.status');
    Route::get('/employee/blogcategory/addcategory',[\App\Http\Controllers\Employee\BlogcategoryController::class,'employeeblogcreate'])->name('employeelist.create');
    Route::post('/employee/blogcategory/add',[\App\Http\Controllers\Employee\BlogcategoryController::class,'blogstore'])->name('employeelist.store');
    Route::get('/employee/blogcategory/editmain/{id}',[\App\Http\Controllers\Employee\BlogcategoryController::class,'employeeblogedit'])->name('employeeblogcategory.edit');
    Route::put('/employee/blogcategory/update/{id}',[\App\Http\Controllers\Employee\BlogcategoryController::class,'employeeblogupdate'])->name('employeeblogcategory.update');
    Route::delete('/employee/blogcategory/delete/{id}',[\App\Http\Controllers\Employee\BlogcategoryController::class,'employeeblogdestroy'])->name('employeeblogcategory.destroy');
     // setting Route
     Route::get('employee/setting',[\App\Http\Controllers\Employee\SettingsController::class,'employeeindex'])->name('employeesetting.index');
     Route::put('employee/setting/Update',[\App\Http\Controllers\Employee\SettingsController::class,'employeesettingsUpdate'])->name('employeesetting.update');
        // for About Page in admin
    Route::get('employee/edit/aboutuspage',[\App\Http\Controllers\Employee\AboutController::class,'index'])->name('employeeaboutus.index');
    Route::put('employee/aboutus/update',[\App\Http\Controllers\Employee\AboutController::class,'update'])->name('employeeaboutus.update');
     // for House Page in admin
     Route::get('employee/Home/edithomepage',[\App\Http\Controllers\Employee\HouseController::class,'index'])->name('employeehouse.index');
     Route::put('employee/House/update',[\App\Http\Controllers\Employee\HouseController::class,'update'])->name('employeehouse.update');
    // for services Page in admin
    Route::get('employee/edit/services',[\App\Http\Controllers\Employee\ServiceController::class,'index'])->name('employeeservices.index');
    Route::put('employee/services/update',[\App\Http\Controllers\Employee\ServiceController::class,'update'])->name('employeeservices.update');
    // Blog
    Route::resource('/Employee/blog',\App\Http\Controllers\Employee\employeeblogController::class);
    Route::post('Employeeblog_status',[\App\Http\Controllers\Employee\employeeblogController::class,'employeeblogStatus'])->name('employeebanner.status');
    //User Account change Password
    Route::get('/employee/changepassword',[\App\Http\Controllers\Employee\HouseController::class,'userAccount'])->name('user.account');
    Route::post('/update/account/{id}', [ \App\Http\Controllers\Employee\HouseController::class, 'updateAccount'])->name('update.account');

});
