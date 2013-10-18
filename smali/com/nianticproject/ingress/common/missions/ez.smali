.class final Lcom/nianticproject/ingress/common/missions/ez;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/missions/ep;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/eu;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/eu;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/ez;->a:Lcom/nianticproject/ingress/common/missions/eu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/gameentity/components/Portal;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .locals 6
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
    const/4 v5, 0x1

    .line 258
    new-instance v0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    const-string/jumbo v1, "hacked_xmp_guid"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->b:Lcom/nianticproject/ingress/shared/af;

    invoke-direct {v1, v2, v5}, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;-><init>(Lcom/nianticproject/ingress/shared/af;I)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/gameentity/components/SimpleInInventory;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/ez;->a:Lcom/nianticproject/ingress/common/missions/eu;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/missions/eu;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/m;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/gameentity/components/SimpleInInventory;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/gameentity/components/SimpleEmpWeapon;

    invoke-direct {v1, v5}, Lcom/nianticproject/ingress/gameentity/components/SimpleEmpWeapon;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a()Lcom/nianticproject/ingress/gameentity/PersistentGameEntity;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/ez;->a:Lcom/nianticproject/ingress/common/missions/eu;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/eu;->j:Lcom/nianticproject/ingress/common/g/ad;

    invoke-static {v0}, Lcom/google/a/c/du;->b(Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/common/g/ad;->b(Ljava/util/Collection;)V

    .line 265
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/ez;->a:Lcom/nianticproject/ingress/common/missions/eu;

    const-string/jumbo v2, "HackedPortal"

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/missions/ch;Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/ez;->a:Lcom/nianticproject/ingress/common/missions/eu;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/missions/eu;->t()Lcom/nianticproject/ingress/common/w/b;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/ez;->a:Lcom/nianticproject/ingress/common/missions/eu;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/missions/eu;->e(Lcom/nianticproject/ingress/common/missions/eu;)Lcom/nianticproject/ingress/common/w/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 268
    new-instance v1, Lcom/nianticproject/ingress/shared/rpc/CollectItemsFromPortalResult;

    const-string/jumbo v2, "hacked_xmp_guid"

    invoke-static {v2}, Lcom/google/a/c/du;->b(Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/shared/rpc/CollectItemsFromPortalResult;-><init>(Ljava/util/Set;)V

    .line 270
    new-instance v2, Lcom/nianticproject/ingress/shared/rpc/g;

    invoke-direct {v2}, Lcom/nianticproject/ingress/shared/rpc/g;-><init>()V

    new-array v3, v5, [Lcom/nianticproject/ingress/gameentity/f;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/google/a/c/jc;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/shared/rpc/g;->b(Ljava/util/Set;)Lcom/nianticproject/ingress/shared/rpc/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/g;->a()Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    move-result-object v0

    .line 273
    invoke-static {v1, v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a(Ljava/lang/Object;Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    return-object v0
.end method
