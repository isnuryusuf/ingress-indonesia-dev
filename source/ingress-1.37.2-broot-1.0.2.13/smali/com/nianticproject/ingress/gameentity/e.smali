.class public final Lcom/nianticproject/ingress/gameentity/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/a;Ljava/lang/Class;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/gameentity/f;",
            "Lcom/nianticproject/ingress/gameentity/a;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nianticproject/ingress/gameentity/a;",
            ">;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ")",
            "Lcom/nianticproject/ingress/gameentity/f;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24
    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 25
    invoke-interface {p3, p2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/a/a/an;->b(Z)V

    .line 26
    return-object p3

    :cond_0
    move v0, v2

    .line 24
    goto :goto_0

    :cond_1
    move v1, v2

    .line 25
    goto :goto_1
.end method
