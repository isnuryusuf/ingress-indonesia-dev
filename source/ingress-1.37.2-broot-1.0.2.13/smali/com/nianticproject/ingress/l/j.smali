.class final Lcom/nianticproject/ingress/l/j;
.super Lcom/nianticproject/ingress/l/u;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/l/f;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/l/f;)V
    .locals 1
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/nianticproject/ingress/l/j;->a:Lcom/nianticproject/ingress/l/f;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/l/u;-><init>(Lcom/nianticproject/ingress/l/f;B)V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .parameter

    .prologue
    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 363
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/l/u;->onLocationChanged(Landroid/location/Location;)V

    .line 364
    return-void
.end method
