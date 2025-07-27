from django.db import models


class registration(models.Model):
    firstname = models.CharField(max_length=150)
    lastname = models.CharField(max_length=150)
    place = models.CharField(max_length=150)
    phone = models.CharField(max_length=150)
    email = models.CharField(max_length=150)
    username = models.CharField(max_length=150)
    password = models.CharField(max_length=150)  
    
    

class busdetails(models.Model):
    bustitle = models.CharField(max_length=150)
    type_id = models.CharField(max_length=150)
    registerno = models.CharField(max_length=150)
    makeyear = models.CharField(max_length=150)
    busstation = models.CharField(max_length=150)





class place(models.Model):
    name = models.CharField(max_length=150)


class route(models.Model):
    startingpoint = models.CharField(max_length=150)
    endingpoint = models.CharField(max_length=150)
    busname = models.CharField(max_length=150)
  

class stop(models.Model):
    route_id = models.CharField(max_length=150)
    trip_id = models.CharField(max_length=150)
    arrivingtime = models.CharField(max_length=150)
    departuretime = models.CharField(max_length=150)
    bus_id = models.CharField(max_length=150)
    name = models.CharField(max_length=150)


class trip(models.Model):
    tripname = models.CharField(max_length=150)
    busname = models.CharField(max_length=150)
    startingstop = models.CharField(max_length=150)
    endingstop = models.CharField(max_length=150)
    contact = models.CharField(max_length=150)
  


class seat(models.Model):
    seatnumber = models.CharField(max_length=150)
    bus_id = models.CharField(max_length=150)
    seatstatus = models.CharField(max_length=150)
    


class bustype(models.Model):
    name = models.CharField(max_length=150)
    description = models.CharField(max_length=150)
    



class payment(models.Model):
    bustitle = models.CharField(max_length=150)
    passenger_firstname = models.CharField(max_length=150)
    noof_paasenger = models.CharField(max_length=150)
    payment_type = models.CharField(max_length=150)
    amount = models.CharField(max_length=150)
    cardno = models.CharField(max_length=150)
    ccvno = models.CharField(max_length=150)
    expdate = models.CharField(max_length=150)
    date = models.CharField(max_length=150)
    status = models.CharField(max_length=150)    
    uid = models.CharField(max_length=150)    



class bookingg(models.Model):
    bustitle = models.CharField(max_length=150)
    seat_id = models.CharField(max_length=150)
    passenger_firstname = models.CharField(max_length=150)
    passenger_lastname = models.CharField(max_length=150)
    noof_paasenger = models.CharField(max_length=150)
    startingpoint = models.CharField(max_length=150)
    endingpoint = models.CharField(max_length=150)
    amount = models.CharField(max_length=150)  
    status = models.CharField(max_length=150)  
    uid = models.CharField(max_length=150)  




class fare(models.Model):
    bustitle = models.CharField(max_length=150)
    startingpoint = models.CharField(max_length=150)
    endingpoint = models.CharField(max_length=150)
    amountperseat = models.CharField(max_length=150)
    

