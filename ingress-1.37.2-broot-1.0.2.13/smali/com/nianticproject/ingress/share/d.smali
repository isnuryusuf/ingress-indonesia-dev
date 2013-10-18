.class final Lcom/nianticproject/ingress/share/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Landroid/location/LocationManager;

.field final synthetic b:Lcom/nianticproject/ingress/share/c;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/share/c;Landroid/location/LocationManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/nianticproject/ingress/share/d;->b:Lcom/nianticproject/ingress/share/c;

    iput-object p2, p0, Lcom/nianticproject/ingress/share/d;->a:Landroid/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 6
    .parameter

    .prologue
    const/high16 v4, 0x42c8

    const-wide/16 v2, 0x0

    .line 264
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/share/d;->b:Lcom/nianticproject/ingress/share/c;

    iget-object v0, v0, Lcom/nianticproject/ingress/share/c;->a:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->e()Landroid/location/Location;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/nianticproject/ingress/share/d;->a:Landroid/location/LocationManager;

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 278
    iget-object v1, p0, Lcom/nianticproject/ingress/share/d;->b:Lcom/nianticproject/ingress/share/c;

    iget-object v1, v1, Lcom/nianticproject/ingress/share/c;->b:Lcom/nianticproject/ingress/share/LocationPickerActivity;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/a/d/u;->b(DD)Lcom/google/a/d/u;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->a(Lcom/nianticproject/ingress/share/LocationPickerActivity;Lcom/google/a/d/u;)Lcom/google/a/d/u;

    .line 279
    iget-object v0, p0, Lcom/nianticproject/ingress/share/d;->b:Lcom/nianticproject/ingress/share/c;

    iget-object v0, v0, Lcom/nianticproject/ingress/share/c;->a:Lcom/google/android/gms/maps/c;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v1}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/a;)V

    .line 282
    iget-object v0, p0, Lcom/nianticproject/ingress/share/d;->b:Lcom/nianticproject/ingress/share/c;

    iget-object v0, v0, Lcom/nianticproject/ingress/share/c;->b:Lcom/nianticproject/ingress/share/LocationPickerActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->c(Lcom/nianticproject/ingress/share/LocationPickerActivity;)V

    goto :goto_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    return-void
.end method
