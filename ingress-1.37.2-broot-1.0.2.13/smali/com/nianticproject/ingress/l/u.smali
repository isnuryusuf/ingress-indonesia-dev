.class Lcom/nianticproject/ingress/l/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic b:Lcom/nianticproject/ingress/l/f;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/l/f;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/nianticproject/ingress/l/u;->b:Lcom/nianticproject/ingress/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/l/f;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/l/u;-><init>(Lcom/nianticproject/ingress/l/f;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/nianticproject/ingress/l/u;->b:Lcom/nianticproject/ingress/l/f;

    invoke-static {v0, p1}, Lcom/nianticproject/ingress/l/f;->a(Lcom/nianticproject/ingress/l/f;Landroid/location/Location;)V

    .line 216
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/nianticproject/ingress/l/u;->b:Lcom/nianticproject/ingress/l/f;

    invoke-static {v0}, Lcom/nianticproject/ingress/l/f;->c(Lcom/nianticproject/ingress/l/f;)Lcom/nianticproject/ingress/l/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/l/ai;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/l/v;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/l/v;-><init>(Lcom/nianticproject/ingress/l/u;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/nianticproject/ingress/l/u;->b:Lcom/nianticproject/ingress/l/f;

    invoke-static {v0}, Lcom/nianticproject/ingress/l/f;->c(Lcom/nianticproject/ingress/l/f;)Lcom/nianticproject/ingress/l/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/l/ai;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/l/w;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/l/w;-><init>(Lcom/nianticproject/ingress/l/u;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/nianticproject/ingress/l/u;->b:Lcom/nianticproject/ingress/l/f;

    invoke-static {v0}, Lcom/nianticproject/ingress/l/f;->c(Lcom/nianticproject/ingress/l/f;)Lcom/nianticproject/ingress/l/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/l/ai;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/l/x;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/l/x;-><init>(Lcom/nianticproject/ingress/l/u;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    return-void
.end method
