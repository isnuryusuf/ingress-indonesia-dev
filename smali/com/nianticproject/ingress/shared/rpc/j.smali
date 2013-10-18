.class public final Lcom/nianticproject/ingress/shared/rpc/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/nianticproject/ingress/shared/rpc/GameBasket;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/rpc/GameBasket;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->c()Lcom/nianticproject/ingress/shared/rpc/f;

    move-result-object v0

    iget-object v0, v0, Lcom/nianticproject/ingress/shared/rpc/f;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->f(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/shared/rpc/k;

    invoke-direct {v1, p1}, Lcom/nianticproject/ingress/shared/rpc/k;-><init>(Ljava/util/Set;)V

    invoke-static {v0, v1}, Lcom/google/a/c/jc;->a(Ljava/util/Set;Lcom/google/a/a/ao;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
