.class public final Lcom/nianticproject/ingress/common/ui/b/q;
.super Lcom/nianticproject/ingress/common/ui/b/s;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/ad;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nianticproject/ingress/common/ui/ac;

    const/4 v1, 0x0

    new-instance v2, Lcom/nianticproject/ingress/common/ui/b/r;

    invoke-direct {v2, p2}, Lcom/nianticproject/ingress/common/ui/b/r;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/ui/b/s;-><init>(Lcom/nianticproject/ingress/common/ui/ad;[Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 96
    return-void
.end method
