from django import forms
from django.forms import ModelForm

from .models import registration
from .models import place
from .models import busdetails
from .models import route
from .models import trip
from .models import bustype
from .models import payment
from .models import bookingg
from .models import fare
from .models import stop
from .models import seat





class registers(forms.ModelForm):
    class Meta():

        model=registration
        fields="__all__"
        
        
class placess(forms.ModelForm):
    class Meta():

        model=place
        fields="__all__"
                
class busdetailssss(forms.ModelForm):
    class Meta():

        model=busdetails
        fields="__all__"
        
        
class seatss(forms.ModelForm):
    class Meta():

        model=seat
        fields="__all__"
        
        
class routess(forms.ModelForm):
    class Meta():

        model=route
        fields="__all__"
        
        
        
class tripss(forms.ModelForm):
    class Meta():

        model=trip
        fields="__all__"
        
        
        
        
class bustypess(forms.ModelForm):
    class Meta():

        model=bustype
        fields="__all__"
        
        
        
        
class paymentss(forms.ModelForm):
    class Meta():

        model=payment
        fields="__all__"
        
        
        
        
class bookingss(forms.ModelForm):
    class Meta():

        model=bookingg
        fields="__all__"
        
        
        
class faress(forms.ModelForm):
    class Meta():

        model=fare
        fields="__all__"
        
        
        
class stops(forms.ModelForm):
    class Meta():

        model=stop
        fields="__all__"