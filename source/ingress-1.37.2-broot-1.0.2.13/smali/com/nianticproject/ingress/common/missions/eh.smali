.class public final Lcom/nianticproject/ingress/common/missions/eh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/missions/en;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/g/ad;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/g/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/eh;->a:Lcom/nianticproject/ingress/common/g/ad;

    .line 93
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/n;",
            ">;",
            "Lcom/nianticproject/ingress/shared/w;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/a/c/hc;->a(I)Ljava/util/HashMap;

    move-result-object v3

    .line 100
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/eh;->a:Lcom/nianticproject/ingress/common/g/ad;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/g/ad;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_0

    .line 104
    const-class v5, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    invoke-interface {v1, v5}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    .line 107
    if-eqz v1, :cond_0

    .line 108
    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;->getPortalGuid()Ljava/lang/String;

    move-result-object v1

    .line 113
    iget-object v5, p0, Lcom/nianticproject/ingress/common/missions/eh;->a:Lcom/nianticproject/ingress/common/g/ad;

    invoke-interface {v5, v1}, Lcom/nianticproject/ingress/common/g/ad;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    const/16 v5, 0x8

    if-ge v1, v5, :cond_0

    .line 114
    sget-object v1, Lcom/nianticproject/ingress/shared/n;->e:Lcom/nianticproject/ingress/shared/n;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 113
    :cond_1
    const-class v5, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v1, v5}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedResonatorGuids()Lcom/google/a/c/dh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/c/dh;->g()Lcom/google/a/c/du;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/c/du;->size()I

    move-result v1

    goto :goto_1

    .line 117
    :cond_3
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/g;

    invoke-direct {v0}, Lcom/nianticproject/ingress/shared/rpc/g;-><init>()V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/g;->a()Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    move-result-object v0

    .line 118
    invoke-static {v3, v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a(Ljava/lang/Object;Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    return-object v0
.end method
