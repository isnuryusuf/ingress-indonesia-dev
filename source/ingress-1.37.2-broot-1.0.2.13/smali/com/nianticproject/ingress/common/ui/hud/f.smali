.class public final Lcom/nianticproject/ingress/common/ui/hud/f;
.super Lcom/nianticproject/ingress/common/ui/hud/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(JZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 22
    const-string/jumbo v1, "-"

    const-string/jumbo v5, "hud-damage"

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/ui/hud/e;-><init>(Ljava/lang/String;JZLjava/lang/String;B)V

    .line 23
    return-void
.end method
