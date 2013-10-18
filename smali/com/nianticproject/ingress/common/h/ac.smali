.class public final Lcom/nianticproject/ingress/common/h/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/h/l;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/u/q;

.field private final b:Lcom/nianticproject/ingress/common/g/e;

.field private final c:Lcom/nianticproject/ingress/common/a;

.field private final d:Lcom/nianticproject/ingress/common/model/k;

.field private final e:Lcom/nianticproject/ingress/common/r;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/r;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/nianticproject/ingress/common/h/ac;->a:Lcom/nianticproject/ingress/common/u/q;

    .line 79
    iput-object p2, p0, Lcom/nianticproject/ingress/common/h/ac;->b:Lcom/nianticproject/ingress/common/g/e;

    .line 80
    iput-object p3, p0, Lcom/nianticproject/ingress/common/h/ac;->c:Lcom/nianticproject/ingress/common/a;

    .line 81
    iput-object p4, p0, Lcom/nianticproject/ingress/common/h/ac;->d:Lcom/nianticproject/ingress/common/model/k;

    .line 82
    iput-object p5, p0, Lcom/nianticproject/ingress/common/h/ac;->e:Lcom/nianticproject/ingress/common/r;

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/h/ac;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/h/ac;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/h/ac;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/h/ac;->g:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;Lcom/nianticproject/ingress/common/x/g;Lcom/nianticproject/ingress/common/x/f;)Lcom/nianticproject/ingress/common/h/g;
    .locals 6
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
    .line 337
    new-instance v0, Lcom/nianticproject/ingress/common/h/ag;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/ac;->a:Lcom/nianticproject/ingress/common/u/q;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/h/ag;-><init>(Lcom/nianticproject/ingress/common/h/ac;Lcom/nianticproject/ingress/common/u/q;Ljava/util/List;Ljava/util/List;Lcom/nianticproject/ingress/common/x/f;)V

    .line 347
    invoke-virtual {v0, p3}, Lcom/nianticproject/ingress/common/h/g;->a(Lcom/nianticproject/ingress/common/x/g;)V

    .line 348
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
    const/4 v8, 0x0

    .line 117
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/h/ac;->f:Z

    if-eqz v0, :cond_1

    .line 118
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->r:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    .line 120
    if-eqz p3, :cond_0

    .line 121
    invoke-interface {p3, v0}, Lcom/nianticproject/ingress/common/x/g;->a(Ljava/lang/Object;)V

    :cond_0
    move-object v0, v8

    .line 157
    :goto_0
    return-object v0

    .line 125
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/h/ac;->f:Z

    .line 128
    new-instance v0, Lcom/nianticproject/ingress/common/h/c;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/ac;->a:Lcom/nianticproject/ingress/common/u/q;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/ac;->c:Lcom/nianticproject/ingress/common/a;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/h/ac;->b:Lcom/nianticproject/ingress/common/g/e;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/h/ac;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {p2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v6

    move-object v5, p1

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/nianticproject/ingress/common/h/c;-><init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/model/k;Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/f;I)V

    .line 138
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/h/c;->f()Lcom/nianticproject/ingress/shared/Result;

    move-result-object v1

    .line 139
    new-instance v2, Lcom/nianticproject/ingress/common/h/ad;

    invoke-direct {v2, p0, p3}, Lcom/nianticproject/ingress/common/h/ad;-><init>(Lcom/nianticproject/ingress/common/h/ac;Lcom/nianticproject/ingress/common/x/g;)V

    .line 149
    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/Result;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 150
    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/h/c;->a(Lcom/nianticproject/ingress/common/x/g;)V

    .line 151
    const-string/jumbo v0, "Resonator"

    const-string/jumbo v2, "deploy"

    invoke-static {v0, v2}, Lcom/nianticproject/ingress/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/Result;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/Result;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    .line 155
    invoke-interface {v2, v0}, Lcom/nianticproject/ingress/common/x/g;->a(Ljava/lang/Object;)V

    move-object v0, v8

    .line 157
    goto :goto_0
.end method

.method public final a(Lcom/google/a/a/ba;)V
    .locals 3
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
    .line 316
    new-instance v0, Lcom/nianticproject/ingress/common/h/m;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/ac;->a:Lcom/nianticproject/ingress/common/u/q;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/ac;->c:Lcom/nianticproject/ingress/common/a;

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/h/m;-><init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/a;)V

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/h/m;->a(Lcom/google/a/a/ba;)Lcom/nianticproject/ingress/common/f/a;

    .line 317
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/common/x/g;)V
    .locals 4
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
    .line 204
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/h/ac;->g:Z

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lcom/nianticproject/ingress/shared/ae;->j:Lcom/nianticproject/ingress/shared/ae;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    .line 210
    invoke-interface {p2, v0}, Lcom/nianticproject/ingress/common/x/g;->a(Ljava/lang/Object;)V

    .line 228
    :goto_0
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/h/ac;->g:Z

    .line 215
    new-instance v0, Lcom/nianticproject/ingress/common/h/ae;

    invoke-direct {v0, p0, p2}, Lcom/nianticproject/ingress/common/h/ae;-><init>(Lcom/nianticproject/ingress/common/h/ac;Lcom/nianticproject/ingress/common/x/g;)V

    .line 226
    new-instance v1, Lcom/nianticproject/ingress/common/h/p;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/ac;->a:Lcom/nianticproject/ingress/common/u/q;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/h/ac;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-direct {v1, v2, p1, v3}, Lcom/nianticproject/ingress/common/h/p;-><init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/common/model/k;)V

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/h/p;->a(Lcom/nianticproject/ingress/common/x/g;)V

    .line 227
    const-string/jumbo v0, "Portal"

    const-string/jumbo v1, "acquireItems"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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
    .line 195
    new-instance v0, Lcom/nianticproject/ingress/common/h/q;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/ac;->a:Lcom/nianticproject/ingress/common/u/q;

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/nianticproject/ingress/common/h/ac;->b:Lcom/nianticproject/ingress/common/g/e;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/h/ac;->c:Lcom/nianticproject/ingress/common/a;

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/h/q;-><init>(Lcom/nianticproject/ingress/common/u/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/a;)V

    invoke-virtual {v0, p4}, Lcom/nianticproject/ingress/common/h/q;->a(Lcom/nianticproject/ingress/common/x/g;)V

    .line 197
    const-string/jumbo v0, "Portal"

    const-string/jumbo v1, "link"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/components/Resource;Lcom/nianticproject/ingress/common/x/g;)V
    .locals 4
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
    .line 88
    new-instance v0, Lcom/nianticproject/ingress/common/h/x;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/ac;->a:Lcom/nianticproject/ingress/common/u/q;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/ac;->b:Lcom/nianticproject/ingress/common/g/e;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/h/ac;->c:Lcom/nianticproject/ingress/common/a;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/nianticproject/ingress/common/h/x;-><init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/gameentity/components/Resource;)V

    invoke-virtual {v0, p2}, Lcom/nianticproject/ingress/common/h/x;->a(Lcom/nianticproject/ingress/common/x/g;)V

    .line 89
    const-string/jumbo v0, "Item"

    const-string/jumbo v1, "pickUp"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
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
    .line 164
    new-instance v0, Lcom/nianticproject/ingress/common/h/i;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/ac;->a:Lcom/nianticproject/ingress/common/u/q;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/h/ac;->b:Lcom/nianticproject/ingress/common/g/e;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/h/ac;->d:Lcom/nianticproject/ingress/common/model/k;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/h/ac;->e:Lcom/nianticproject/ingress/common/r;

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/h/i;-><init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/model/k;Lcom/google/a/a/ba;Lcom/nianticproject/ingress/common/r;)V

    invoke-virtual {v0, p3}, Lcom/nianticproject/ingress/common/h/i;->a(Lcom/nianticproject/ingress/common/x/g;)V

    .line 166
    const-string/jumbo v0, "Weapon"

    const-string/jumbo v1, "fire"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/x/g;)V
    .locals 3
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
    .line 322
    new-instance v0, Lcom/nianticproject/ingress/common/h/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/ac;->a:Lcom/nianticproject/ingress/common/u/q;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/ac;->b:Lcom/nianticproject/ingress/common/g/e;

    invoke-direct {v0, p1, v1, v2}, Lcom/nianticproject/ingress/common/h/e;-><init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/g/e;)V

    invoke-virtual {v0, p2}, Lcom/nianticproject/ingress/common/h/e;->a(Lcom/nianticproject/ingress/common/x/g;)V

    .line 323
    const-string/jumbo v0, "PowerCube"

    const-string/jumbo v1, "discharge"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/common/x/g;)V
    .locals 3
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
    .line 329
    new-instance v0, Lcom/nianticproject/ingress/common/h/j;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/ac;->e:Lcom/nianticproject/ingress/common/r;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/ac;->a:Lcom/nianticproject/ingress/common/u/q;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/nianticproject/ingress/common/h/j;-><init>(Lcom/nianticproject/ingress/common/r;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/common/u/q;)V

    invoke-virtual {v0, p3}, Lcom/nianticproject/ingress/common/h/j;->a(Lcom/nianticproject/ingress/common/x/g;)V

    .line 330
    const-string/jumbo v0, "Weapon"

    const-string/jumbo v1, "flipCard"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;Ljava/util/Set;Lcom/nianticproject/ingress/common/x/g;)V
    .locals 3
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
    .line 302
    new-instance v0, Lcom/nianticproject/ingress/common/h/z;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/ac;->a:Lcom/nianticproject/ingress/common/u/q;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/ac;->c:Lcom/nianticproject/ingress/common/a;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/nianticproject/ingress/common/h/z;-><init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/gameentity/f;Ljava/util/Set;)V

    invoke-virtual {v0, p3}, Lcom/nianticproject/ingress/common/h/z;->a(Lcom/nianticproject/ingress/common/x/g;)V

    .line 303
    const-string/jumbo v0, "Resonator"

    const-string/jumbo v1, "recharge"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/ac;->c:Lcom/nianticproject/ingress/common/a;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/a;->a(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public final a(Ljava/lang/String;ILcom/nianticproject/ingress/common/x/g;)V
    .locals 2
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
    .line 354
    new-instance v0, Lcom/nianticproject/ingress/common/h/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/ac;->a:Lcom/nianticproject/ingress/common/u/q;

    invoke-direct {v0, v1, p1, p2}, Lcom/nianticproject/ingress/common/h/h;-><init>(Lcom/nianticproject/ingress/common/u/q;Ljava/lang/String;I)V

    invoke-virtual {v0, p3}, Lcom/nianticproject/ingress/common/h/h;->a(Lcom/nianticproject/ingress/common/x/g;)V

    .line 356
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/nianticproject/ingress/common/x/g;)V
    .locals 6
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
    .line 239
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Lcom/nianticproject/ingress/common/h/aa;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/ac;->a:Lcom/nianticproject/ingress/common/u/q;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/ac;->c:Lcom/nianticproject/ingress/common/a;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/h/ac;->b:Lcom/nianticproject/ingress/common/g/e;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/h/aa;-><init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/g/e;Ljava/lang/String;Lcom/nianticproject/ingress/common/x/g;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/h/aa;->a()V

    .line 241
    const-string/jumbo v0, "Item"

    const-string/jumbo v1, "recycle"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/components/Modable;ILcom/nianticproject/ingress/common/x/g;)V
    .locals 7
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
    .line 248
    new-instance v0, Lcom/nianticproject/ingress/common/h/b;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/ac;->a:Lcom/nianticproject/ingress/common/u/q;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/ac;->c:Lcom/nianticproject/ingress/common/a;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/h/ac;->b:Lcom/nianticproject/ingress/common/g/e;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/h/b;-><init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/g/e;Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/components/Modable;I)V

    invoke-virtual {v0, p4}, Lcom/nianticproject/ingress/common/h/b;->a(Lcom/nianticproject/ingress/common/x/g;)V

    .line 250
    const-string/jumbo v0, "Mod"

    const-string/jumbo v1, "deploy"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/shared/r;Lcom/nianticproject/ingress/common/x/g;)V
    .locals 6
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
    .line 272
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/h/ac;->f:Z

    if-eqz v0, :cond_1

    .line 273
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->r:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    .line 275
    if-eqz p4, :cond_0

    .line 276
    invoke-interface {p4, v0}, Lcom/nianticproject/ingress/common/x/g;->a(Ljava/lang/Object;)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/h/ac;->f:Z

    .line 283
    new-instance v0, Lcom/nianticproject/ingress/common/h/al;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/ac;->a:Lcom/nianticproject/ingress/common/u/q;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/ac;->b:Lcom/nianticproject/ingress/common/g/e;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/h/al;-><init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/g/e;Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/shared/r;)V

    .line 285
    new-instance v1, Lcom/nianticproject/ingress/common/h/af;

    invoke-direct {v1, p0, p4}, Lcom/nianticproject/ingress/common/h/af;-><init>(Lcom/nianticproject/ingress/common/h/ac;Lcom/nianticproject/ingress/common/x/g;)V

    .line 295
    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/h/al;->a(Lcom/nianticproject/ingress/common/x/g;)V

    .line 296
    const-string/jumbo v0, "Resonator"

    const-string/jumbo v1, "upgrade"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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
    .line 187
    new-instance v0, Lcom/nianticproject/ingress/common/h/n;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/ac;->a:Lcom/nianticproject/ingress/common/u/q;

    invoke-direct {v0, v1, p1, p2}, Lcom/nianticproject/ingress/common/h/n;-><init>(Lcom/nianticproject/ingress/common/u/q;Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {v0, p3}, Lcom/nianticproject/ingress/common/h/n;->a(Lcom/nianticproject/ingress/common/x/g;)V

    .line 190
    return-void
.end method

.method public final a(Ljava/util/List;Lcom/nianticproject/ingress/common/x/g;)V
    .locals 2
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
    .line 265
    new-instance v0, Lcom/nianticproject/ingress/common/h/o;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/ac;->a:Lcom/nianticproject/ingress/common/u/q;

    invoke-direct {v0, v1, p1}, Lcom/nianticproject/ingress/common/h/o;-><init>(Lcom/nianticproject/ingress/common/u/q;Ljava/util/List;)V

    invoke-virtual {v0, p2}, Lcom/nianticproject/ingress/common/h/o;->a(Lcom/google/a/a/ba;)Lcom/nianticproject/ingress/common/f/a;

    .line 266
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/h/ac;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 232
    new-instance v0, Lcom/nianticproject/ingress/common/h/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/ac;->a:Lcom/nianticproject/ingress/common/u/q;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/ac;->c:Lcom/nianticproject/ingress/common/a;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/h/ac;->b:Lcom/nianticproject/ingress/common/g/e;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/nianticproject/ingress/common/h/f;-><init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/g/e;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/h/f;->a()V

    .line 233
    const-string/jumbo v0, "Item"

    const-string/jumbo v1, "drop"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/Set;Lcom/nianticproject/ingress/common/x/g;)V
    .locals 3
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
    .line 309
    new-instance v0, Lcom/nianticproject/ingress/common/h/ah;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/ac;->a:Lcom/nianticproject/ingress/common/u/q;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/ac;->c:Lcom/nianticproject/ingress/common/a;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/nianticproject/ingress/common/h/ah;-><init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/a;Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {v0, p3}, Lcom/nianticproject/ingress/common/h/ah;->a(Lcom/nianticproject/ingress/common/x/g;)V

    .line 311
    const-string/jumbo v0, "Resonator"

    const-string/jumbo v1, "remoteRecharge"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/h/ac;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
