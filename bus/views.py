from django.http import HttpResponse
from django.shortcuts import render
#from .models import testtb
from django.shortcuts import redirect
# FILE UPLOAD AND VIEW
from  django.core.files.storage import FileSystemStorage
# SESSION
from django.conf import settings
from .models import *
from .forms import *


def first(request):
    return render (request,'index.html') 
    
    
def register(request):
    return render(request,'register.html')
    
    
    
    
def addreg(request):
    if request.method == 'POST':
        firstname=request.POST.get('firstname')
        lastname=request.POST.get('lastname')
        place=request.POST.get('place')
        phone=request.POST.get('phone')
        email=request.POST.get('email')
        username=request.POST.get('username')
        password=request.POST.get('password')
        # POST, generate bound form with data from the request
        user=registration(firstname=firstname,lastname=lastname,place=place,phone=phone,email=email,username=username,password=password)
        user.save()
        return render(request,'register.html')
 
 
 
 
def login(request):
    return render(request,'login.html')
   
   
   
def logint(request):
    email = request.POST.get('email')
    password = request.POST.get('password')
    if email == 'admin@gmail.com' and password == 'admin':
        request.session['logintdetail'] = email
        request.session['logint'] = 'admin'
        return render(request, 'admin/index.html')

    elif registration.objects.filter(email=email,password=password).exists():
        userdetails=registration.objects.get(email=request.POST['email'], password=password)
        if userdetails.password == request.POST['password']:
            request.session['uid'] = userdetails.id
            request.session['uname'] = userdetails.firstname

            request.session['uemail'] = email

            request.session['user'] = 'user'

            
            return render(request,'index.html')

    else:
        return render(request, 'login.html', {'status': 'failed'})





def logout(request):
    session_keys = list(request.session.keys())
    for key in session_keys:
        del request.session[key]
    return redirect(first) 
    
    
    
    
def addtype(request):
    if request.method == 'POST':
        name=request.POST.get('name')
        description=request.POST.get('description')
      
        # POST, generate bound form with data from the request
        user=bustype(name=name,description=description)
        user.save()
        return render(request,'admin/bustype.html')
        
        
        
        
def typezzz(request):
    return render(request,'admin/bustype.html')
    
def adddashboard(request):
    return render(request,'admin/index.html')
    
    
    
def addplaces(request):
    if request.method == 'POST':
        name=request.POST.get('name')
        
      
        # POST, generate bound form with data from the request
        user=place(name=name)
        user.save()
        return render(request,'admin/addplace.html')
    

def placezz(request):
    return render(request,'admin/addplace.html')
         
         
         
def addstop(request):
    if request.method == 'POST':
        # POST, generate bound form with data from the request
        form = stops(request.POST)
        # check if it's valid:
        if form.is_valid():
        #Insert into DB
            form.save()
        #redirect to a new URL:
            return render(request, 'admin/addbusstop.html')
    else:
        # GET, generate unbound (blank) form
        form = stop()
        return render(request,'admin/addbusstop.html')


        
def stopzzzz(request):
    users=route.objects.all()
    sel=busdetails.objects.all()
    return render(request,'admin/addbusstop.html',{'res':users,'res1':sel})       
        
    
    
    
def addroute(request):
    if request.method == 'POST':
        # POST, generate bound form with data from the request
        form = routess(request.POST)
        # check if it's valid:
        if form.is_valid():
        #Insert into DB
            form.save()
        #redirect to a new URL:
            return render(request, 'admin/addbusroute.html')
    else:
        # GET, generate unbound (blank) form
        form = route()
        return render(request,'admin/addbus.html')
        
        
        
        
def routezzz(request):
    users=bustype.objects.all()
    sel=place.objects.all()
    emp=busdetails.objects.all()  
    return render(request,'admin/addbusroute.html',{'res':users,'res1':sel,'res2':emp})      
    
        
    
def addseat(request):
    if request.method == 'POST':
        # POST, generate bound form with data from the request
        form = seatss(request.POST)
        # check if it's valid:
        if form.is_valid():
        #Insert into DB
            form.save()
        #redirect to a new URL:
        users=busdetails.objects.all()
        return render(request,'admin/addseat.html',{'res':users})      
    else:
        # GET, generate unbound (blank) form
        form = seat()
        return render(request,'admin/addseat.html')


    
def seatsss(request):
    users=busdetails.objects.all()
    return render(request,'admin/addseat.html',{'res':users})      
        
 

def addbus(request):
    if request.method == 'POST':
        # POST, generate bound form with data from the request
        form = busdetailssss(request.POST)
        # check if it's valid:
        if form.is_valid():
        #Insert into DB
            form.save()
        #redirect to a new URL:
        users=bustype.objects.all()
        return render(request,'admin/addbus.html',{'res':users}) 
    else:
        # GET, generate unbound (blank) form
        form = busdetails()
        return render(request,'admin/addbus.html')




def busesss(request):
    users=bustype.objects.all()
    return render(request,'admin/addbus.html',{'res':users})      
         

def bookingbus(request):
    if request.method == 'POST':
        # POST, generate bound form with data from the request
        form = bookingss(request.POST)
        # check if it's valid:
        if form.is_valid():
        #Insert into DB
            form.save()
        #redirect to a new URL:
        temp=request.session['uname']
        sel=bookingg.objects.filter(status="pending",uid=temp)	

        return render(request,'viewbooking.html',{'res':sel})
    else:
        # GET, generate unbound (blank) form
        form = bookingg()
        return render(request,'booking.html')
        
        
def busbook(request):
    return render(request,'booking.html')        
        
        
     

def addfare(request):
    if request.method == 'POST':
        # POST, generate bound form with data from the request
        form = faress(request.POST)
        # check if it's valid:
        if form.is_valid():
        #Insert into DB
            form.save()
        #redirect to a new URL:
        users=busdetails.objects.all()
        return render(request,'admin/addfare.html',{'res':users}) 
    else:
        # GET, generate unbound (blank) form
        form = fare()
        return render(request,'admin/addfare.html')
        
        
        
        
def faresss(request):
    users=busdetails.objects.all()
    return render(request,'admin/addfare.html',{'res':users})   
    
    
    
    
  
def addpayments(request):
    if request.method == 'POST':
        bustitle=request.POST.get('bustitle')
        passengername=request.POST.get('passengername')
        noof_paasenger=request.POST.get('noof_paasenger')
        payment_type=request.POST.get('payment_type')
        amount=request.POST.get('amount')
        cardno=request.POST.get('cardno')
        ccvno=request.POST.get('ccvno')
        expdate=request.POST.get('expdate')
        date=request.POST.get('date')
        status=request.POST.get('status')
        date=request.POST.get('date')
        uid=request.POST.get('uid')
        # POST, generate bound form with data from the request
        user=payment(bustitle=bustitle,passenger_firstname=passengername,noof_paasenger=noof_paasenger,payment_type=payment_type,amount=amount,cardno=cardno,ccvno=ccvno,expdate=expdate,date=date,status=status,uid=uid)
        user.save()
        temp=request.session['uname']
        sel=payment.objects.filter(status="paid",uid=temp)	

        return render(request,'viewuserpayment.html',{'res':sel})
        

    
    
def busview(request):

	sel=seat.objects.filter(seatstatus="available")	
	return render(request,'viewbus.html',{'res':sel})

    
def booking(request,id):
    sel=seat.objects.get(id=id)
    a=sel.bus_id
    print(a)
    sell=busdetails.objects.get(id=a)
    
    b=sell.bustitle
    print(b)
    sels=fare.objects.get(bustitle=b)
    temp=request.session['uname']
    a=sel.seatnumber
    b=sel.bus_id
    user=seat(seatnumber=a,bus_id=b,seatstatus="not available",id=id)
    user.save()
    return render(request,'booking.html',{'res':sel,'res1':sels,'res2':temp})
        
        

    
    
def viewuserbooking(request):
    temp=request.session['uname']
    sel=bookingg.objects.filter(status="pending",uid=temp)	

    return render(request,'viewbooking.html',{'res':sel})



    
def paystatus(request):
    temp=request.session['uname']
    sel=payment.objects.filter(status="paid",uid=temp)	

    return render(request,'viewuserpayment.html',{'res':sel})



def paymentzzzzzzzzzz(request,id):
    sel=bookingg.objects.get(id=id)
    temp=request.session['uname']
    a=sel.bustitle
    b=sel.seat_id
    c=sel.passenger_firstname
    d=sel.passenger_lastname
    f=sel.noof_paasenger
    g=sel.startingpoint
    h=sel.endingpoint
    i=sel.amount
    j=sel.uid
    user=bookingg(bustitle=a,seat_id=b,passenger_firstname=c,passenger_lastname=d,noof_paasenger=f,startingpoint=g,endingpoint=h,amount=i,uid=j,status="paid",id=id)
    user.save()
    return render(request,'addpayment.html',{'res':sel,'res3':temp})
        
        
    
    
    
    
def profile(request):
    if request.session.has_key('uid'):
        temp=request.session['uid']
        users = registration.objects.get(id=request.session['uid'])
        # us=[]
        # us['id']=user.id
        # email= user.email

        return render(request, 'profile.html',{'result': users})
        
     
     
   
   
   
   
def bookviews(request):

	sel=bookingg.objects.all()	

			
	return render(request,'admin/viewbookinggs.html',{'res':sel})




def paymentview(request):

	sel=payment.objects.all()
	return render(request,'admin/viewpayment.html',{'res':sel})
    
    
    
    
    
def bussviews(request):

	sel=busdetails.objects.all()	

			
	return render(request,'admin/viewbus.html',{'res':sel})
    
def typeview(request):

	sel=bustype.objects.all()	

			
	return render(request,'admin/viewtype.html',{'res':sel})
    
        
def placeview(request):

	sel=place.objects.all()	

			
	return render(request,'admin/viewplace.html',{'res':sel})
        
def fareview(request):

	sel=fare.objects.all()	

			
	return render(request,'admin/viewfare.html',{'res':sel})    

def stopview(request):

	sel=stop.objects.all()	

			
	return render(request,'admin/viewstop.html',{'res':sel})    
       
    

def seatview(request):

	sel=seat.objects.all()
    
	return render(request,'admin/viewseat.html',{'res':sel})    
       
def routeview(request):

	sel=route.objects.all()	

			
	return render(request,'admin/viewroute.html',{'res':sel})    
       

def delete(request,id):

	emp=route.objects.get(pk=id)
	emp.delete()
	return redirect(routeview)   
    
    
    
def seatdelete(request,id):

	emp=seat.objects.get(pk=id)
	emp.delete()
	return redirect(seatview)   
    
def busdelete(request,id):

	emp=busdetails.objects.get(pk=id)
	emp.delete()
	return redirect(bussviews)     
    
def typedelete(request,id):

	emp=bustype.objects.get(pk=id)
	emp.delete()
	return redirect(typeview)     
        
    
def faredelete(request,id):

	emp=fare.objects.get(pk=id)
	emp.delete()
	return redirect(fareview)     
            


def stopdelete(request,id):

	emp=stop.objects.get(pk=id)
	emp.delete()
	return redirect(stopview)       
    
    
    
def busupdate(request,id):
    upd=busdetails.objects.get(pk=id)
    emp=bustype.objects.all()
    return render(request, 'admin/busupdate.html', {'result': upd,'res':emp})



def updatebuss(request,id):
    if request.method == 'POST':
        bustitle=request.POST.get('bustitle')
        type_id=request.POST.get('type_id')
        makeyear=request.POST.get('makeyear')
        registerno=request.POST.get('registerno')
        busstation=request.POST.get('busstation')
         
        # POST, generate bound form with data from the request
        user=busdetails(bustitle=bustitle,type_id=type_id,makeyear=makeyear,registerno=registerno,busstation=busstation,id=id)
        user.save()
    return redirect(bussviews)
    
 
def typeupdate(request,id):
    upd=bustype.objects.get(pk=id)
    return render(request, 'admin/typeupdate.html', {'result': upd})

def editplace(request,id):
    if request.method == 'POST':
        name=request.POST.get('name')
        
         
        # POST, generate bound form with data from the request
        user=place(name=name,id=id)
        user.save()
        return redirect(placeview)




def updatebuss(request,id):
    if request.method == 'POST':
        bustitle=request.POST.get('bustitle')
        type_id=request.POST.get('type_id')
        makeyear=request.POST.get('makeyear')
        registerno=request.POST.get('registerno')
        busstation=request.POST.get('busstation')
         
        # POST, generate bound form with data from the request
        user=busdetails(bustitle=bustitle,type_id=type_id,makeyear=makeyear,registerno=registerno,busstation=busstation,id=id)
        user.save()
    return redirect(bussviews)
    
 
def typeupdate(request,id):
    upd=bustype.objects.get(pk=id)
    return render(request, 'admin/typeupdate.html', {'result': upd})

def edittype(request,id):
    if request.method == 'POST':
        name=request.POST.get('name')
        description=request.POST.get('description')
        
         
        # POST, generate bound form with data from the request
        user=bustype(name=name,description=description,id=id)
        user.save()
        return redirect(typeview)
    
    
    
def placeupdate(request,id):
    upd=place.objects.get(pk=id)
    return render(request, 'admin/placeupdate.html', {'result': upd})
    
def placedelete(request,id):

	emp=place.objects.get(pk=id)
	emp.delete()
	return redirect(placeview)
    
    
def faredelete(request,id):

	emp=fare.objects.get(pk=id)
	emp.delete()
	return redirect(fareview)
    
    
    
def fareupdate(request,id):
    upd=fare.objects.get(pk=id)
    users=busdetails.objects.all()
    return render(request,'admin/fareupdate.html',{'res':users,'result':upd})   
    
    
def editfare(request,id):
    if request.method == 'POST':
        bustitle=request.POST.get('bustitle')
        startingpoint=request.POST.get('startingpoint')
        endingpoint=request.POST.get('endingpoint')
        amountperseat=request.POST.get('amountperseat')

         
        # POST, generate bound form with data from the request
        user=fare(bustitle=bustitle,startingpoint=startingpoint,endingpoint=endingpoint,amountperseat=amountperseat,id=id)
        user.save()
        return redirect(fareview)
        
  
    
def stopupdate(request,id):
    upd=stop.objects.get(pk=id)
    users=route.objects.all()
    sel=busdetails.objects.all()
    return render(request,'admin/stopupdate.html',{'res':users,'res1':sel,'result':upd})       
        
    
    
    
def editstop(request,id):
    if request.method == 'POST':
        name=request.POST.get('name')
        trip_id=request.POST.get('trip_id')
        route_id=request.POST.get('route_id')
        bus_id=request.POST.get('bus_id')
        arrivingtime=request.POST.get('arrivingtime')
        departuretime=request.POST.get('departuretime')
       

         
        # POST, generate bound form with data from the request
        user=stop(name=name,trip_id=trip_id,route_id=route_id,bus_id=bus_id,arrivingtime=arrivingtime,departuretime=departuretime,id=id)
        user.save()
        return redirect(stopview)
        
        
        
        
def seatupdate(request,id):
    upd=seat.objects.get(pk=id)
    users=busdetails.objects.all()

    return render(request,'admin/seatupdate.html',{'res':users,'result':upd})       
        
    
def editseat(request,id):
    if request.method == 'POST':
        seatnumber=request.POST.get('seatnumber')
        bus_id=request.POST.get('bus_id')
        seatstatus=request.POST.get('seatstatus')
       
       

         
        # POST, generate bound form with data from the request
        user=seat(seatnumber=seatnumber,bus_id=bus_id,seatstatus=seatstatus,id=id)
        user.save()
        return redirect(seatview)
        
        
        
def routeupdate(request,id):
    upd=route.objects.get(pk=id)

    users=bustype.objects.all()
    sel=place.objects.all()
    emp=busdetails.objects.all()  
    return render(request,'admin/updateroute.html',{'res':users,'res1':sel,'res2':emp,'result':upd})      
    
    
def editroute(request,id):
    if request.method == 'POST':
        startingpoint=request.POST.get('startingpoint')
        endingpoint=request.POST.get('endingpoint')
        busname=request.POST.get('busname')
       
       

         
        # POST, generate bound form with data from the request
        user=route(startingpoint=startingpoint,endingpoint=endingpoint,busname=busname,id=id)
        user.save()
        return redirect(routeview)