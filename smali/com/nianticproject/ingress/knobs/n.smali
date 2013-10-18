.class public final Lcom/nianticproject/ingress/knobs/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/nianticproject/ingress/knobs/b;I)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 67
    goto :goto_0

    .line 70
    :cond_2
    const/16 v2, 0x286e

    if-ge p1, v2, :cond_4

    .line 71
    sget-object v0, Lcom/nianticproject/ingress/shared/ag;->a:Lcom/nianticproject/ingress/shared/ah;

    sget-object v2, Lcom/nianticproject/ingress/shared/ah;->a:Lcom/nianticproject/ingress/shared/ah;

    if-ne v0, v2, :cond_3

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Knob value is way too low."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v1

    .line 74
    goto :goto_0

    .line 78
    :cond_4
    invoke-interface {p0}, Lcom/nianticproject/ingress/knobs/b;->a()I

    move-result v2

    if-le p1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
