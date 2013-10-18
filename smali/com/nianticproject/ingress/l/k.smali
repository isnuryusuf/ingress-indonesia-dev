.class final Lcom/nianticproject/ingress/l/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/l/f;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/l/f;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/nianticproject/ingress/l/k;->a:Lcom/nianticproject/ingress/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .locals 3
    .parameter

    .prologue
    .line 370
    iget-object v0, p0, Lcom/nianticproject/ingress/l/k;->a:Lcom/nianticproject/ingress/l/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/l/k;->a:Lcom/nianticproject/ingress/l/f;

    invoke-static {v1}, Lcom/nianticproject/ingress/l/f;->d(Lcom/nianticproject/ingress/l/f;)Landroid/location/LocationManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/l/f;->a(Lcom/nianticproject/ingress/l/f;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    .line 371
    return-void
.end method
