"""bus URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.contrib import admin
from django.urls import path
from . import views
from django.conf.urls import url
from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [


    path('',views.first,name='first'),
    path('register',views.register,name='register'),
    path('addreg',views.addreg,name='addreg'),
    path('login',views.login,name='login'),
    path('logint',views.logint,name='logint'),
    path('logout',views.logout,name='logout'),
    path('addtype',views.addtype,name='addtype'),
    path('typezzz',views.typezzz,name='typezzz'),
    path('adddashboard',views.adddashboard,name='adddashboard'),
    path('addplaces',views.addplaces,name='addplaces'),
    path('placezz',views.placezz,name='placezz'),
    path('addstop',views.addstop,name='addstop'),
    path('stopzzzz',views.stopzzzz,name='stopzzzz'),
    path('addroute',views.addroute,name='addroute'),
    path('routezzz',views.routezzz,name='routezzz'),
    path('addseat',views.addseat,name='addseat'),
    path('seatsss',views.seatsss,name='seatsss'),
    path('addbus',views.addbus,name='addbus'),
    path('busesss',views.busesss,name='busesss'),
    path('booking/bookingbus',views.bookingbus,name='bookingbus'),
    path('busbook',views.busbook,name='busbook'),
    path('addfare',views.addfare,name='addfare'),
    path('faresss',views.faresss,name='faresss'),
    path('paymentzzzzzzzzzz/addpayments',views.addpayments,name='addpayments'),
    path('busview',views.busview,name='busview'),
    path('booking/<int:id>',views.booking,name='booking'),
    path('paymentzzzzzzzzzz/<int:id>',views.paymentzzzzzzzzzz,name='paymentzzzzzzzzzz'),
    path('viewuserbooking',views.viewuserbooking,name='viewuserbooking'),
    path('profile',views.profile,name='profile'),
    path('bookviews',views.bookviews,name='bookviews'),
    path('paymentview',views.paymentview,name='paymentview'),
    path('paystatus',views.paystatus,name='paystatus'),
    path('bussviews',views.bussviews,name='bussviews'),
    path('typeview',views.typeview,name='typeview'),
    path('placeview',views.placeview,name='placeview'),
    path('stopview',views.stopview,name='stopview'),
    path('fareview',views.fareview,name='fareview'),
    path('seatview',views.seatview,name='seatview'),
    path('routeview',views.routeview,name='routeview'),
    path('delete/<int:id>',views.delete, name='delete'),
    path('seatdelete/<int:id>',views.seatdelete, name='seatdelete'),
    path('busdelete/<int:id>',views.busdelete, name='busdelete'),
    path('typedelete/<int:id>',views.typedelete, name='typedelete'),
    path('faredelete/<int:id>',views.faredelete, name='faredelete'),
    path('stopdelete/<int:id>',views.stopdelete, name='stopdelete'),
    path('busupdate/<int:id>',views.busupdate, name='busupdate'),
    path('busupdate/updatebuss/<int:id>',views.updatebuss, name='updatebuss'),

    path('typeupdate/<int:id>',views.typeupdate, name='typeupdate'),
    path('typeupdate/edittype/<int:id>',views.edittype, name='edittype'),
    path('placeupdate/<int:id>',views.placeupdate, name='placeupdate'),
    path('placedelete/<int:id>',views.placedelete, name='placedelete'),
    path('placeupdate/editplace/<int:id>',views.editplace, name='editplace'),
    path('faredelete/<int:id>',views.faredelete, name='faredelete'),

    path('fareupdate/<int:id>',views.fareupdate, name='fareupdate'),
    path('fareupdate/editfare/<int:id>',views.editfare, name='editfare'),

   path('stopupdate/<int:id>',views.stopupdate, name='stopupdate'),
   path('stopupdate/editstop/<int:id>',views.editstop, name='editstop'),

       path('seatupdate/<int:id>',views.seatupdate, name='seatupdate'),
   path('seatupdate/editseat/<int:id>',views.editseat, name='editseat'),
       path('routeupdate/<int:id>',views.routeupdate, name='routeupdate'),
   path('routeupdate/editroute/<int:id>',views.editroute, name='editroute'),

    path('admin/', admin.site.urls),
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
