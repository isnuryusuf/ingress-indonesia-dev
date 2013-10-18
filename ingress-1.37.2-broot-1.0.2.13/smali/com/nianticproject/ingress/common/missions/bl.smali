.class final Lcom/nianticproject/ingress/common/missions/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/missions/ep;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/bd;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/bd;)V
    .locals 0
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/bl;->a:Lcom/nianticproject/ingress/common/missions/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/gameentity/components/Portal;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/gameentity/components/Portal;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/CollectItemsFromPortalResult;",
            "Lcom/nianticproject/ingress/shared/ae;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v0, 0x8

    .line 472
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bl;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/bd;->j:Lcom/nianticproject/ingress/common/g/ad;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bl;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/missions/bd;->M:Lcom/google/a/c/hs;

    invoke-interface {v2, p1}, Lcom/google/a/c/hs;->c(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/common/g/ad;->b(Ljava/util/Collection;)V

    .line 476
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bl;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/bd;->c:Lcom/nianticproject/ingress/gameentity/f;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntityGuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bl;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/missions/bd;->c:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bl;->a:Lcom/nianticproject/ingress/common/missions/bd;

    const-string/jumbo v1, "HackedFirstPortal"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/missions/ch;Ljava/lang/String;)V

    .line 478
    const/4 v0, 0x0

    move v1, v0

    .line 486
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bl;->a:Lcom/nianticproject/ingress/common/missions/bd;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/bd;->t()Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bl;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/missions/bd;->A:Lcom/nianticproject/ingress/common/w/d;

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 488
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v2

    .line 489
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bl;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/bd;->M:Lcom/google/a/c/hs;

    invoke-interface {v0, p1}, Lcom/google/a/c/hs;->c(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 490
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bl;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/bd;->O:Lcom/nianticproject/ingress/gameentity/f;

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntityGuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bl;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/missions/bd;->O:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bl;->a:Lcom/nianticproject/ingress/common/missions/bd;

    const-string/jumbo v2, "HackedSecondPortal"

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/missions/ch;Ljava/lang/String;)V

    move v1, v0

    .line 481
    goto :goto_0

    .line 483
    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bl;->a:Lcom/nianticproject/ingress/common/missions/bd;

    const-string/jumbo v2, "HackedThirdPortal"

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/missions/ch;Ljava/lang/String;)V

    move v1, v0

    .line 484
    goto :goto_0

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bl;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/bd;->M:Lcom/google/a/c/hs;

    invoke-interface {v0, p1}, Lcom/google/a/c/hs;->d(Ljava/lang/Object;)Ljava/util/Collection;

    .line 496
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bl;->a:Lcom/nianticproject/ingress/common/missions/bd;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/bd;->a(I)Ljava/util/List;

    move-result-object v0

    .line 497
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 498
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bl;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/bd;->j:Lcom/nianticproject/ingress/common/g/ad;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/g/ad;->b(Ljava/util/Collection;)V

    .line 499
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 500
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 504
    :cond_3
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/CollectItemsFromPortalResult;

    invoke-direct {v0, v2}, Lcom/nianticproject/ingress/shared/rpc/CollectItemsFromPortalResult;-><init>(Ljava/util/Set;)V

    .line 506
    new-instance v1, Lcom/nianticproject/ingress/shared/rpc/g;

    invoke-direct {v1}, Lcom/nianticproject/ingress/shared/rpc/g;-><init>()V

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/g;->a()Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    move-result-object v1

    .line 507
    invoke-static {v0, v1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a(Ljava/lang/Object;Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    return-object v0
.end method
