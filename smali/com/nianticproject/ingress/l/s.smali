.class final Lcom/nianticproject/ingress/l/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/c;
.implements Lcom/google/android/gms/common/d;
.implements Lcom/google/android/gms/location/d;


# instance fields
.field a:Lcom/google/android/gms/location/c;

.field final b:Lcom/google/android/gms/location/LocationRequest;

.field final synthetic c:Lcom/nianticproject/ingress/l/f;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/l/f;)V
    .locals 1
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/nianticproject/ingress/l/s;->c:Lcom/nianticproject/ingress/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/l/s;->b:Lcom/google/android/gms/location/LocationRequest;

    .line 383
    iget-object v0, p0, Lcom/nianticproject/ingress/l/s;->b:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->b()Lcom/google/android/gms/location/LocationRequest;

    .line 384
    iget-object v0, p0, Lcom/nianticproject/ingress/l/s;->b:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->c()Lcom/google/android/gms/location/LocationRequest;

    .line 385
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 425
    invoke-static {}, Lcom/nianticproject/ingress/l/f;->f()Lcom/nianticproject/ingress/common/w/aa;

    .line 427
    iget-object v0, p0, Lcom/nianticproject/ingress/l/s;->a:Lcom/google/android/gms/location/c;

    invoke-virtual {v0}, Lcom/google/android/gms/location/c;->a()Landroid/location/Location;

    move-result-object v0

    .line 428
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/nianticproject/ingress/l/s;->c:Lcom/nianticproject/ingress/l/f;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/l/f;->a(Lcom/nianticproject/ingress/l/f;Landroid/location/Location;)V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/l/s;->a:Lcom/google/android/gms/location/c;

    iget-object v1, p0, Lcom/nianticproject/ingress/l/s;->b:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/location/c;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/d;)V

    .line 433
    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 1
    .parameter

    .prologue
    .line 448
    iget-object v0, p0, Lcom/nianticproject/ingress/l/s;->c:Lcom/nianticproject/ingress/l/f;

    invoke-static {v0, p1}, Lcom/nianticproject/ingress/l/f;->a(Lcom/nianticproject/ingress/l/f;Landroid/location/Location;)V

    .line 449
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/a;)V
    .locals 2
    .parameter

    .prologue
    .line 442
    invoke-static {}, Lcom/nianticproject/ingress/l/f;->f()Lcom/nianticproject/ingress/common/w/aa;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 443
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 420
    invoke-static {}, Lcom/nianticproject/ingress/l/f;->f()Lcom/nianticproject/ingress/common/w/aa;

    .line 421
    return-void
.end method
