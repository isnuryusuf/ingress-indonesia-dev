.class public final Lcom/nianticproject/ingress/common/missions/aq;
.super Lcom/nianticproject/ingress/common/missions/y;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/missions/af;

.field private final b:Lcom/nianticproject/ingress/common/w/d;

.field private final c:I

.field private final d:I

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/lang/Runnable;

.field private h:Z

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j:Lcom/nianticproject/ingress/common/g/f;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/missions/af;Lcom/nianticproject/ingress/common/w/d;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x1

    const/16 v1, 0x1388

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/nianticproject/ingress/common/missions/aq;-><init>(Lcom/nianticproject/ingress/common/missions/af;Lcom/nianticproject/ingress/common/w/d;II)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/missions/af;Lcom/nianticproject/ingress/common/w/d;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/y;-><init>()V

    .line 41
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->e:Ljava/util/Set;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->f:Z

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Lcom/nianticproject/ingress/common/missions/ar;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/ar;-><init>(Lcom/nianticproject/ingress/common/missions/aq;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->j:Lcom/nianticproject/ingress/common/g/f;

    .line 77
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/aq;->a:Lcom/nianticproject/ingress/common/missions/af;

    .line 78
    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/aq;->b:Lcom/nianticproject/ingress/common/w/d;

    .line 79
    iput p3, p0, Lcom/nianticproject/ingress/common/missions/aq;->c:I

    .line 80
    iput p4, p0, Lcom/nianticproject/ingress/common/missions/aq;->d:I

    .line 81
    iget-object v0, p1, Lcom/nianticproject/ingress/common/missions/af;->j:Lcom/nianticproject/ingress/common/g/ad;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/aq;->j:Lcom/nianticproject/ingress/common/g/f;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/ad;->a(Lcom/nianticproject/ingress/common/g/f;)V

    .line 82
    return-void
.end method

.method private static a(Lcom/nianticproject/ingress/gameentity/components/Portal;)I
    .locals 4
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 95
    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedResonatorGuids()Lcom/google/a/c/dh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/c/dh;->g()Lcom/google/a/c/du;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/c/du;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/r;

    .line 96
    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedResonatorGuids()Lcom/google/a/c/dh;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    invoke-static {v0}, Lcom/nianticproject/ingress/common/h/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 100
    goto :goto_0

    .line 101
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/missions/aq;)V
    .locals 5
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/aq;->a:Lcom/nianticproject/ingress/common/missions/af;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/missions/af;->j:Lcom/nianticproject/ingress/common/g/ad;

    invoke-interface {v2, v0}, Lcom/nianticproject/ingress/common/g/ad;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v2, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/aq;->a(Lcom/nianticproject/ingress/gameentity/components/Portal;)I

    move-result v0

    iget v2, p0, Lcom/nianticproject/ingress/common/missions/aq;->c:I

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->f:Z

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->g:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->g:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->a:Lcom/nianticproject/ingress/common/missions/af;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/aq;->b:Lcom/nianticproject/ingress/common/w/d;

    iget v3, p0, Lcom/nianticproject/ingress/common/missions/aq;->d:I

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lcom/nianticproject/ingress/common/missions/af;->a(Lcom/nianticproject/ingress/common/w/d;ILjava/util/concurrent/TimeUnit;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/ad;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 201
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->f:Z

    if-nez v0, :cond_0

    .line 203
    invoke-super {p0, p1, p2}, Lcom/nianticproject/ingress/common/missions/y;->a(Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 206
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {p2, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 208
    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/aq;->a(Lcom/nianticproject/ingress/gameentity/components/Portal;)I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_3

    .line 211
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {p2, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    .line 213
    new-instance v1, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;

    invoke-direct {v1}, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;-><init>()V

    .line 214
    new-instance v5, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    invoke-interface {p2}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v5

    new-instance v6, Lcom/nianticproject/ingress/gameentity/components/SimpleTeam;

    iget-object v7, p0, Lcom/nianticproject/ingress/common/missions/aq;->a:Lcom/nianticproject/ingress/common/missions/af;

    iget-object v7, v7, Lcom/nianticproject/ingress/common/missions/af;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v7}, Lcom/nianticproject/ingress/common/model/m;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/nianticproject/ingress/gameentity/components/SimpleTeam;-><init>(Lcom/nianticproject/ingress/shared/ai;)V

    invoke-virtual {v5, v6}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v5

    new-instance v6, Lcom/nianticproject/ingress/gameentity/components/DefaultActionRange;

    invoke-direct {v6}, Lcom/nianticproject/ingress/gameentity/components/DefaultActionRange;-><init>()V

    invoke-virtual {v5, v6}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v5

    new-instance v6, Lcom/nianticproject/ingress/gameentity/components/SimpleCaptured;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, p0, Lcom/nianticproject/ingress/common/missions/aq;->a:Lcom/nianticproject/ingress/common/missions/af;

    iget-object v9, v9, Lcom/nianticproject/ingress/common/missions/af;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v9}, Lcom/nianticproject/ingress/common/model/m;->k()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/nianticproject/ingress/gameentity/components/SimpleCaptured;-><init>(JLjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a()Lcom/nianticproject/ingress/gameentity/PersistentGameEntity;

    move-result-object v8

    .line 223
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedResonatorGuids()Lcom/google/a/c/dh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/a/c/dh;->g()Lcom/google/a/c/du;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/a/c/du;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nianticproject/ingress/shared/r;

    .line 224
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedResonatorGuids()Lcom/google/a/c/dh;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 226
    invoke-static {v6}, Lcom/nianticproject/ingress/common/h/c;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 227
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedResonatorLevels()Lcom/google/a/c/dh;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 228
    iget-object v10, p0, Lcom/nianticproject/ingress/common/missions/aq;->a:Lcom/nianticproject/ingress/common/missions/af;

    iget-object v10, v10, Lcom/nianticproject/ingress/common/missions/af;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v10}, Lcom/nianticproject/ingress/common/model/m;->k()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v6, v7, v5, v10}, Lcom/nianticproject/ingress/gameentity/components/Portal;->addLinkedResonator(Ljava/lang/String;ILcom/nianticproject/ingress/shared/r;Ljava/lang/String;)V

    goto :goto_1

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->a:Lcom/nianticproject/ingress/common/missions/af;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/af;->j:Lcom/nianticproject/ingress/common/g/ad;

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v2

    iget-object v5, p0, Lcom/nianticproject/ingress/common/missions/aq;->a:Lcom/nianticproject/ingress/common/missions/af;

    iget-object v5, v5, Lcom/nianticproject/ingress/common/missions/af;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v5}, Lcom/nianticproject/ingress/common/model/m;->k()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/nianticproject/ingress/common/missions/aq;->a:Lcom/nianticproject/ingress/common/missions/af;

    iget-object v6, v6, Lcom/nianticproject/ingress/common/missions/af;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v6}, Lcom/nianticproject/ingress/common/model/m;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/nianticproject/ingress/common/g/ad;->a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/google/a/d/u;IILjava/lang/String;Lcom/nianticproject/ingress/shared/ai;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    .line 245
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/shared/rpc/g;

    invoke-direct {v2}, Lcom/nianticproject/ingress/shared/rpc/g;-><init>()V

    invoke-static {v8, v0}, Lcom/google/a/c/du;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/shared/rpc/g;->a(Ljava/util/Set;)Lcom/nianticproject/ingress/shared/rpc/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/g;->a()Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a(Ljava/lang/Object;Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    goto/16 :goto_0

    .line 250
    :cond_3
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->m:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    goto/16 :goto_0

    .line 254
    :cond_4
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->i:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->f:Z

    .line 130
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/aq;->g:Ljava/lang/Runnable;

    .line 131
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->a:Lcom/nianticproject/ingress/common/missions/af;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/af;->j:Lcom/nianticproject/ingress/common/g/ad;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/aq;->j:Lcom/nianticproject/ingress/common/g/f;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/ad;->b(Lcom/nianticproject/ingress/common/g/f;)V

    .line 155
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->a:Lcom/nianticproject/ingress/common/missions/af;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/af;->j:Lcom/nianticproject/ingress/common/g/ad;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/aq;->j:Lcom/nianticproject/ingress/common/g/f;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/ad;->a(Lcom/nianticproject/ingress/common/g/f;)V

    .line 156
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/missions/aq;->h:Z

    .line 143
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->f:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 187
    :goto_0
    return v0

    .line 176
    :cond_0
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->h:Z

    if-eqz v0, :cond_1

    .line 181
    const/4 v0, 0x1

    goto :goto_0

    .line 184
    :cond_1
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/y;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 194
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->a:Lcom/nianticproject/ingress/common/missions/af;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/af;->j:Lcom/nianticproject/ingress/common/g/ad;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/aq;->j:Lcom/nianticproject/ingress/common/g/f;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/ad;->b(Lcom/nianticproject/ingress/common/g/f;)V

    .line 168
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/aq;->f:Z

    .line 139
    return-void
.end method
