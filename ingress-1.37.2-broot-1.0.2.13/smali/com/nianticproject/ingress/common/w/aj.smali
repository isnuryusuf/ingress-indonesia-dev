.class public final Lcom/nianticproject/ingress/common/w/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(D)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/c/ba;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const-wide v4, 0x408f400000000000L

    .line 38
    const-wide/16 v2, 0x0

    cmpl-double v0, p0, v2

    if-ltz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 39
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 42
    const-wide v2, 0x412e847e00000000L

    cmpg-double v2, p0, v2

    if-gtz v2, :cond_0

    .line 43
    cmpl-double v2, p0, v4

    if-ltz v2, :cond_2

    .line 44
    div-double v2, p0, v4

    invoke-static {v2, v3, v1}, Lcom/nianticproject/ingress/common/w/ak;->a(DI)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->bT:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    :goto_1
    return-object v0

    .line 38
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :cond_2
    invoke-static {p0, p1}, Lcom/nianticproject/ingress/common/w/ak;->a(D)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->bY:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
