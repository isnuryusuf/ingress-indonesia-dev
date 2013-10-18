.class final Lcom/nianticproject/ingress/common/missions/tutorial/i;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/aj;
.implements Lcom/nianticproject/ingress/common/missions/ep;


# static fields
.field static final a:Lcom/nianticproject/ingress/common/w/d;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/missions/tutorial/u;

.field private final c:Lcom/nianticproject/ingress/common/h/k;

.field private final d:Lcom/nianticproject/ingress/common/model/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "HACKING_COMPLETE_EVENT"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/missions/tutorial/i;->a:Lcom/nianticproject/ingress/common/w/d;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/u;Lcom/nianticproject/ingress/common/h/k;Lcom/nianticproject/ingress/common/model/k;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    const-string/jumbo v0, "PendingHackState"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/i;->b:Lcom/nianticproject/ingress/common/missions/tutorial/u;

    .line 43
    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/tutorial/i;->c:Lcom/nianticproject/ingress/common/h/k;

    .line 44
    iput-object p3, p0, Lcom/nianticproject/ingress/common/missions/tutorial/i;->d:Lcom/nianticproject/ingress/common/model/k;

    .line 45
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

    .line 61
    new-instance v0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    const-string/jumbo v1, "hacked_xmp_guid"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->b:Lcom/nianticproject/ingress/shared/af;

    invoke-direct {v1, v2, v5}, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;-><init>(Lcom/nianticproject/ingress/shared/af;I)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/gameentity/components/SimpleInInventory;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/tutorial/i;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/k;->k()Ljava/lang/String;

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

    .line 67
    new-instance v1, Lcom/nianticproject/ingress/shared/rpc/CollectItemsFromPortalResult;

    const-string/jumbo v2, "hacked_xmp_guid"

    invoke-static {v2}, Lcom/google/a/c/du;->b(Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/shared/rpc/CollectItemsFromPortalResult;-><init>(Ljava/util/Set;)V

    .line 69
    new-instance v2, Lcom/nianticproject/ingress/shared/rpc/g;

    invoke-direct {v2}, Lcom/nianticproject/ingress/shared/rpc/g;-><init>()V

    new-array v3, v5, [Lcom/nianticproject/ingress/gameentity/f;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/google/a/c/jc;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/shared/rpc/g;->c(Ljava/util/Set;)Lcom/nianticproject/ingress/shared/rpc/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/g;->a()Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    move-result-object v0

    .line 72
    invoke-static {v1, v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a(Ljava/lang/Object;Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/i;->c:Lcom/nianticproject/ingress/common/h/k;

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/common/h/k;->a(Lcom/nianticproject/ingress/common/missions/ep;)V

    .line 50
    invoke-static {p0}, Lcom/nianticproject/ingress/common/ai;->a(Lcom/nianticproject/ingress/common/aj;)V

    .line 51
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/i;->b:Lcom/nianticproject/ingress/common/missions/tutorial/u;

    sget-object v1, Lcom/nianticproject/ingress/common/missions/tutorial/i;->a:Lcom/nianticproject/ingress/common/w/d;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/missions/tutorial/u;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 80
    return-void
.end method

.method public final u_()V
    .locals 0

    .prologue
    .line 55
    invoke-static {p0}, Lcom/nianticproject/ingress/common/ai;->b(Lcom/nianticproject/ingress/common/aj;)V

    .line 56
    return-void
.end method
