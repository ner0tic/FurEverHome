from django import forms
from .models import Pet, AdoptionApplication

class PetForm(forms.ModelForm):
    class Meta:
        model = Pet
        fields = ['name', 'age', 'breed', 'description'] #, 'shelter', 'health_status', 'image']
        widgets = {
            'name': forms.TextInput(attrs={'class': 'form-control'}),
            'age': forms.NumberInput(attrs={'class': 'form-control'}),
            'breed': forms.TextInput(attrs={'class': 'form-control'}),
            'description': forms.Textarea(attrs={'class': 'form-control'}),
            #'shelter': forms.ChoiceField(attrs={'class': 'form-control'}),
            #'health_status': forms.TextInput(attrs={'class': 'form-control'}),
            #'image': forms.ClearableFileInput(attrs={'class': 'form-control-file'}),
        }

class AdoptionApplicationForm(forms.ModelForm):
    class Meta:
        model = AdoptionApplication
        fields = ['pet', 'user', 'status', 'reason_for_adoption', 'home_environment', 'previous_pet_experience']
        widgets = {
            'user': forms.HiddenInput(attrs={'class': 'form-control'}),
            'pet': forms.HiddenInput(attrs={'class': 'form-control'}),
            'status': forms.HiddenInput(attrs={'class': 'form-control'}),
            'reason_for_adoption': forms.Textarea(attrs={'class': 'form-control'}),
            'home_environment': forms.Textarea(attrs={'class': 'form-control'}),
            'previous_pet_experience': forms.Textarea(attrs={'class': 'form-control'}),
        }
