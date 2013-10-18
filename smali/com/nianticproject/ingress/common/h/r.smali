.class public final Lcom/nianticproject/ingress/common/h/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/missions/ek;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/a;

.field private final b:Lcom/nianticproject/ingress/common/g/ad;

.field private final c:Lcom/nianticproject/ingress/common/model/m;

.field private d:Lcom/nianticproject/ingress/common/missions/em;

.field private e:Lcom/nianticproject/ingress/common/missions/ep;

.field private f:Lcom/nianticproject/ingress/common/missions/el;

.field private g:Lcom/nianticproject/ingress/common/missions/er;

.field private h:Lcom/nianticproject/ingress/common/missions/eo;

.field private i:Lcom/nianticproject/ingress/common/missions/es;

.field private j:Lcom/nianticproject/ingress/common/missions/en;

.field private k:Lcom/nianticproject/ingress/common/missions/eq;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/g/ad;Lcom/nianticproject/ingress/common/model/m;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/nianticproject/ingress/common/h/r;->a:Lcom/nianticproject/ingress/common/a;

    .line 114
    iput-object p2, p0, Lcom/nianticproject/ingress/common/h/r;->b:Lcom/nianticproject/ingress/common/g/ad;

    .line 115
    iput-object p3, p0, Lcom/nianticproject/ingress/common/h/r;->c:Lcom/nianticproject/ingress/common/model/m;

    .line 116
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/h/r;)Lcom/nianticproject/ingress/common/g/ad;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/r;->b:Lcom/nianticproject/ingress/common/g/ad;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/h/r;)Lcom/nianticproject/ingress/common/missions/el;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/r;->f:Lcom/nianticproject/ingress/common/missions/el;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;Lcom/nianticproject/ingress/common/x/g;Lcom/nianticproject/ingress/common/x/f;)Lcom/nianticproject/ingress/common/h/g;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/nianticproject/ingress/common/x/g",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/rpc/m;",
            ">;>;",
            "Lcom/nianticproject/ingress/common/x/f;",
            ")",
            "Lcom/nianticproject/ingress/common/h/g;"
        }
    .end annotation

    .prologue
    .line 395
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/common/x/g;I)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/gameentity/components/Portal;",
            "Lcom/nianticproject/ingress/common/x/g",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/ad;",
            ">;>;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/r;->f:Lcom/nianticproject/ingress/common/missions/el;

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Lcom/nianticproject/ingress/common/h/s;

    new-instance v2, Lcom/nianticproject/ingress/common/h/w;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/r;->f:Lcom/nianticproject/ingress/common/missions/el;

    invoke-interface {p2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/nianticproject/ingress/common/missions/el;->a(Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/nianticproject/ingress/common/h/w;-><init>(Lcom/nianticproject/ingress/common/h/r;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V

    iget-object v3, p0, Lcom/nianticproject/ingress/common/h/r;->a:Lcom/nianticproject/ingress/common/a;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/h/r;->b:Lcom/nianticproject/ingress/common/g/ad;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/h/r;->c:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {p2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v7

    move-object v1, p0

    move-object v6, p1

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/nianticproject/ingress/common/h/s;-><init>(Lcom/nianticproject/ingress/common/h/r;Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/model/k;Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/f;I)V

    .line 199
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/h/c;->f()Lcom/nianticproject/ingress/shared/Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/Result;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 200
    invoke-virtual {v0, p3}, Lcom/nianticproject/ingress/common/h/c;->a(Lcom/nianticproject/ingress/common/x/g;)V

    .line 203
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/a/a/ba;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/ba",
            "<",
            "Lcom/nianticproject/ingress/shared/GameScore;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/missions/el;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/nianticproject/ingress/common/h/r;->f:Lcom/nianticproject/ingress/common/missions/el;

    .line 209
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/missions/em;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/nianticproject/ingress/common/h/r;->d:Lcom/nianticproject/ingress/common/missions/em;

    .line 230
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/missions/en;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/nianticproject/ingress/common/h/r;->j:Lcom/nianticproject/ingress/common/missions/en;

    .line 258
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/missions/eo;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/nianticproject/ingress/common/h/r;->h:Lcom/nianticproject/ingress/common/missions/eo;

    .line 347
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/missions/ep;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/nianticproject/ingress/common/h/r;->e:Lcom/nianticproject/ingress/common/missions/ep;

    .line 315
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/missions/eq;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/nianticproject/ingress/common/h/r;->k:Lcom/nianticproject/ingress/common/missions/eq;

    .line 281
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/missions/er;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/nianticproject/ingress/common/h/r;->g:Lcom/nianticproject/ingress/common/missions/er;

    .line 214
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/missions/es;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/nianticproject/ingress/common/h/r;->i:Lcom/nianticproject/ingress/common/missions/es;

    .line 237
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/common/x/g;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/gameentity/components/Portal;",
            "Lcom/nianticproject/ingress/common/x/g",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/CollectItemsFromPortalResult;",
            "Lcom/nianticproject/ingress/shared/ae;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/r;->e:Lcom/nianticproject/ingress/common/missions/ep;

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Lcom/nianticproject/ingress/common/h/w;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/r;->e:Lcom/nianticproject/ingress/common/missions/ep;

    invoke-interface {v1, p1}, Lcom/nianticproject/ingress/common/missions/ep;->a(Lcom/nianticproject/ingress/gameentity/components/Portal;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/h/w;-><init>(Lcom/nianticproject/ingress/common/h/r;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V

    .line 308
    new-instance v1, Lcom/nianticproject/ingress/common/h/p;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/r;->c:Lcom/nianticproject/ingress/common/model/m;

    invoke-direct {v1, v0, p1, v2}, Lcom/nianticproject/ingress/common/h/p;-><init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/common/model/k;)V

    invoke-virtual {v1, p2}, Lcom/nianticproject/ingress/common/h/p;->a(Lcom/nianticproject/ingress/common/x/g;)V

    .line 310
    :cond_0
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/gameentity/components/Portal;Ljava/lang/String;Lcom/nianticproject/ingress/common/x/g;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/gameentity/components/Portal;",
            "Lcom/nianticproject/ingress/gameentity/components/Portal;",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/x/g",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/LinkResult;",
            "Lcom/nianticproject/ingress/shared/n;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/r;->k:Lcom/nianticproject/ingress/common/missions/eq;

    if-nez v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/r;->k:Lcom/nianticproject/ingress/common/missions/eq;

    invoke-interface {v0, p1, p2, p3}, Lcom/nianticproject/ingress/common/missions/eq;->a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/gameentity/components/Portal;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    .line 291
    new-instance v1, Lcom/nianticproject/ingress/common/h/w;

    invoke-direct {v1, p0, v0}, Lcom/nianticproject/ingress/common/h/w;-><init>(Lcom/nianticproject/ingress/common/h/r;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V

    .line 292
    new-instance v0, Lcom/nianticproject/ingress/common/h/q;

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntityGuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntityGuid()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/nianticproject/ingress/common/h/r;->b:Lcom/nianticproject/ingress/common/g/ad;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/h/r;->a:Lcom/nianticproject/ingress/common/a;

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/h/q;-><init>(Lcom/nianticproject/ingress/common/u/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/a;)V

    .line 299
    invoke-virtual {v0, p4}, Lcom/nianticproject/ingress/common/h/q;->a(Lcom/nianticproject/ingress/common/x/g;)V

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/components/Resource;Lcom/nianticproject/ingress/common/x/g;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/gameentity/components/Resource;",
            "Lcom/nianticproject/ingress/common/x/g",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/ae;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 125
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;Lcom/google/a/a/ba;Lcom/nianticproject/ingress/common/x/g;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/gameentity/f;",
            "Lcom/google/a/a/ba",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Lcom/nianticproject/ingress/shared/FireEmpResult;",
            "Lcom/nianticproject/ingress/shared/e;",
            ">;>;",
            "Lcom/nianticproject/ingress/common/x/g",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Lcom/nianticproject/ingress/shared/FireEmpResult;",
            "Lcom/nianticproject/ingress/shared/e;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v2, Lcom/nianticproject/ingress/common/h/w;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/r;->d:Lcom/nianticproject/ingress/common/missions/em;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/missions/em;->a()Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/nianticproject/ingress/common/h/w;-><init>(Lcom/nianticproject/ingress/common/h/r;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V

    .line 223
    new-instance v0, Lcom/nianticproject/ingress/common/h/i;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/h/r;->b:Lcom/nianticproject/ingress/common/g/ad;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/h/r;->c:Lcom/nianticproject/ingress/common/model/m;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/h/i;-><init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/model/k;Lcom/google/a/a/ba;Lcom/nianticproject/ingress/common/r;)V

    invoke-virtual {v0, p3}, Lcom/nianticproject/ingress/common/h/i;->a(Lcom/nianticproject/ingress/common/x/g;)V

    .line 225
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/x/g;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/gameentity/f;",
            "Lcom/nianticproject/ingress/common/x/g",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/DischargePowerCubeResult;",
            "Lcom/nianticproject/ingress/shared/rpc/c;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 382
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/common/x/g;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/gameentity/f;",
            "Lcom/nianticproject/ingress/gameentity/components/Portal;",
            "Lcom/nianticproject/ingress/common/x/g",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/server/flip/a;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 388
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;Ljava/util/Set;Lcom/nianticproject/ingress/common/x/g;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/gameentity/f;",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/shared/r;",
            ">;",
            "Lcom/nianticproject/ingress/common/x/g",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/ad;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/r;->g:Lcom/nianticproject/ingress/common/missions/er;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/r;->g:Lcom/nianticproject/ingress/common/missions/er;

    invoke-interface {v0, p1, p2}, Lcom/nianticproject/ingress/common/missions/er;->a(Lcom/nianticproject/ingress/gameentity/f;Ljava/util/Set;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/nianticproject/ingress/common/x/g;->a(Ljava/lang/Object;)V

    .line 360
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    return-void
.end method

.method public final a(Ljava/lang/String;ILcom/nianticproject/ingress/common/x/g;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/nianticproject/ingress/common/x/g",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;",
            "Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 402
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/nianticproject/ingress/common/x/g;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/x/g",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/components/Modable;ILcom/nianticproject/ingress/common/x/g;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/gameentity/components/Modable;",
            "I",
            "Lcom/nianticproject/ingress/common/x/g",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/p;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 328
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/shared/r;Lcom/nianticproject/ingress/common/x/g;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            "Lcom/nianticproject/ingress/shared/r;",
            "Lcom/nianticproject/ingress/common/x/g",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/ad;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 352
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Set;Lcom/nianticproject/ingress/common/x/g;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nianticproject/ingress/common/x/g",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/n;",
            ">;",
            "Lcom/nianticproject/ingress/shared/w;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/r;->j:Lcom/nianticproject/ingress/common/missions/en;

    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/r;->j:Lcom/nianticproject/ingress/common/missions/en;

    invoke-interface {v0, p2}, Lcom/nianticproject/ingress/common/missions/en;->a(Ljava/util/Set;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    .line 271
    new-instance v1, Lcom/nianticproject/ingress/common/h/w;

    invoke-direct {v1, p0, v0}, Lcom/nianticproject/ingress/common/h/w;-><init>(Lcom/nianticproject/ingress/common/h/r;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V

    .line 272
    new-instance v0, Lcom/nianticproject/ingress/common/h/n;

    invoke-direct {v0, v1, p1, p2}, Lcom/nianticproject/ingress/common/h/n;-><init>(Lcom/nianticproject/ingress/common/u/q;Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {v0, p3}, Lcom/nianticproject/ingress/common/h/n;->a(Lcom/nianticproject/ingress/common/x/g;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lcom/nianticproject/ingress/common/x/g;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nianticproject/ingress/common/x/g",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/r;->h:Lcom/nianticproject/ingress/common/missions/eo;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/r;->h:Lcom/nianticproject/ingress/common/missions/eo;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/missions/eo;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/nianticproject/ingress/common/x/g;->a(Ljava/lang/Object;)V

    .line 342
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/r;->f:Lcom/nianticproject/ingress/common/missions/el;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/r;->f:Lcom/nianticproject/ingress/common/missions/el;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/missions/el;->a()Z

    move-result v0

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/Set;Lcom/nianticproject/ingress/common/x/g;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/shared/r;",
            ">;",
            "Lcom/nianticproject/ingress/common/x/g",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/ad;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 366
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/h/r;->a()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x1

    return v0
.end method
