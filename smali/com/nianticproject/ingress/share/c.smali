.class final Lcom/nianticproject/ingress/share/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/android/gms/maps/c;

.field final synthetic b:Lcom/nianticproject/ingress/share/LocationPickerActivity;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/share/LocationPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/nianticproject/ingress/share/c;->b:Lcom/nianticproject/ingress/share/LocationPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/share/LocationPickerActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/share/c;-><init>(Lcom/nianticproject/ingress/share/LocationPickerActivity;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/a/d/u;
    .locals 5

    .prologue
    .line 296
    iget-object v0, p0, Lcom/nianticproject/ingress/share/c;->a:Lcom/google/android/gms/maps/c;

    if-nez v0, :cond_0

    .line 297
    const/4 v0, 0x0

    .line 301
    :goto_0
    return-object v0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/share/c;->a:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->b()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->b:Lcom/google/android/gms/maps/model/LatLng;

    .line 301
    iget-wide v1, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->c:D

    invoke-static {v1, v2, v3, v4}, Lcom/google/a/d/u;->b(DD)Lcom/google/a/d/u;

    move-result-object v0

    goto :goto_0
.end method
