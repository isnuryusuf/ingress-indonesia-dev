.class public final Lcom/nianticproject/ingress/common/factionchoice/ax;
.super Lcom/nianticproject/ingress/common/factionchoice/aw;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/ad;Ljava/lang/String;FLcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/t;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    const-string/jumbo v5, "ADA"

    const-string/jumbo v6, "unknown"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/nianticproject/ingress/common/factionchoice/aw;-><init>(Lcom/nianticproject/ingress/common/ui/ad;Ljava/lang/String;FLcom/nianticproject/ingress/common/ui/widget/z;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/t;)V

    .line 32
    return-void
.end method
