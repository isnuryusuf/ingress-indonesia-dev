.class final Lcom/nianticproject/ingress/cu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/l/t;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/cq;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/cq;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/nianticproject/ingress/cu;->a:Lcom/nianticproject/ingress/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/u/av;)V
    .locals 2
    .parameter

    .prologue
    .line 230
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/av;->v()Lcom/nianticproject/ingress/common/u/aw;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/nianticproject/ingress/cu;->a:Lcom/nianticproject/ingress/cq;

    invoke-static {v1}, Lcom/nianticproject/ingress/cq;->d(Lcom/nianticproject/ingress/cq;)Lcom/nianticproject/ingress/l/ak;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/l/ak;->a(Lcom/nianticproject/ingress/common/u/aw;)V

    .line 232
    invoke-static {}, Lcom/nianticproject/ingress/common/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 233
    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/u/aw;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/aw;

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/cu;->a:Lcom/nianticproject/ingress/cq;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/u/aw;->c()Lcom/nianticproject/ingress/common/u/av;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/cq;->a(Lcom/nianticproject/ingress/cq;Lcom/nianticproject/ingress/common/u/av;)V

    .line 237
    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/nianticproject/ingress/cu;->a:Lcom/nianticproject/ingress/cq;

    invoke-static {v0, p1}, Lcom/nianticproject/ingress/cq;->a(Lcom/nianticproject/ingress/cq;Landroid/location/Location;)V

    .line 214
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    return-void
.end method
