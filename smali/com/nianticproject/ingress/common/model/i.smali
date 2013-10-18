.class public final Lcom/nianticproject/ingress/common/model/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/a/c/dv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dv",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/a/c/dv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dv",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/a/c/di;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/di",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Lcom/google/a/c/du;->h()Lcom/google/a/c/dv;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/i;->a:Lcom/google/a/c/dv;

    .line 63
    invoke-static {}, Lcom/google/a/c/du;->h()Lcom/google/a/c/dv;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/i;->b:Lcom/google/a/c/dv;

    .line 64
    invoke-static {}, Lcom/google/a/c/dh;->j()Lcom/google/a/c/di;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/i;->c:Lcom/google/a/c/di;

    return-void
.end method

.method public static a(Lcom/nianticproject/ingress/common/model/GameState;Lcom/nianticproject/ingress/common/model/GameState;)Lcom/nianticproject/ingress/common/model/GameState;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 30
    :try_start_0
    const-string/jumbo v0, "GameStateBuilder.rebuildIncrementalGameState"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 31
    new-instance v5, Lcom/nianticproject/ingress/common/model/i;

    invoke-direct {v5}, Lcom/nianticproject/ingress/common/model/i;-><init>()V

    .line 32
    iget-object v0, v5, Lcom/nianticproject/ingress/common/model/i;->c:Lcom/google/a/c/di;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    invoke-virtual {v0, v1}, Lcom/google/a/c/di;->a(Ljava/util/Map;)Lcom/google/a/c/di;

    .line 34
    if-nez p0, :cond_1

    .line 36
    iget-object v0, v5, Lcom/nianticproject/ingress/common/model/i;->b:Lcom/google/a/c/dv;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    invoke-virtual {v1}, Lcom/google/a/c/dh;->d_()Lcom/google/a/c/ct;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/dv;->b(Ljava/lang/Iterable;)Lcom/google/a/c/dv;

    .line 56
    :cond_0
    iget-wide v1, p1, Lcom/nianticproject/ingress/common/model/GameState;->timestamp:J

    new-instance v0, Lcom/nianticproject/ingress/common/model/GameState;

    iget-object v3, v5, Lcom/nianticproject/ingress/common/model/i;->a:Lcom/google/a/c/dv;

    invoke-virtual {v3}, Lcom/google/a/c/dv;->a()Lcom/google/a/c/du;

    move-result-object v3

    iget-object v4, v5, Lcom/nianticproject/ingress/common/model/i;->b:Lcom/google/a/c/dv;

    invoke-virtual {v4}, Lcom/google/a/c/dv;->a()Lcom/google/a/c/du;

    move-result-object v4

    iget-object v5, v5, Lcom/nianticproject/ingress/common/model/i;->c:Lcom/google/a/c/di;

    invoke-virtual {v5}, Lcom/google/a/c/di;->a()Lcom/google/a/c/dh;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/model/GameState;-><init>(JLcom/google/a/c/du;Lcom/google/a/c/du;Lcom/google/a/c/dh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    .line 38
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    invoke-virtual {v0}, Lcom/google/a/c/dh;->g()Lcom/google/a/c/du;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/du;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    iget-object v2, p1, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    invoke-virtual {v2, v0}, Lcom/google/a/c/dh;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 41
    iget-object v2, v5, Lcom/nianticproject/ingress/common/model/i;->a:Lcom/google/a/c/dv;

    invoke-virtual {v2, v0}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 44
    :cond_3
    :try_start_2
    iget-object v0, p1, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    invoke-virtual {v0}, Lcom/google/a/c/dh;->d_()Lcom/google/a/c/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/ct;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 45
    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/f;

    .line 46
    if-nez v1, :cond_5

    .line 48
    iget-object v1, v5, Lcom/nianticproject/ingress/common/model/i;->b:Lcom/google/a/c/dv;

    invoke-virtual {v1, v0}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    goto :goto_1

    .line 49
    :cond_5
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getLastModifiedMs()J

    move-result-wide v3

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getLastModifiedMs()J

    move-result-wide v6

    cmp-long v1, v3, v6

    if-lez v1, :cond_4

    .line 51
    iget-object v1, v5, Lcom/nianticproject/ingress/common/model/i;->b:Lcom/google/a/c/dv;

    invoke-virtual {v1, v0}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/model/GameState;J)Lcom/nianticproject/ingress/common/model/GameState;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 106
    :try_start_0
    const-string/jumbo v0, "GameStateBuilder.buildIncrementalGameState"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/i;->c:Lcom/google/a/c/di;

    invoke-virtual {v0}, Lcom/google/a/c/di;->a()Lcom/google/a/c/dh;

    move-result-object v5

    .line 108
    if-eqz p1, :cond_3

    .line 111
    iget-object v0, p1, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    invoke-virtual {v0}, Lcom/google/a/c/dh;->g()Lcom/google/a/c/du;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/du;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    invoke-virtual {v5, v0}, Lcom/google/a/c/dh;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/nianticproject/ingress/common/model/i;->a:Lcom/google/a/c/dv;

    invoke-virtual {v2, v0}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 119
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Lcom/google/a/c/dh;->d_()Lcom/google/a/c/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/ct;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 120
    iget-object v2, p1, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/a/c/dh;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 121
    iget-object v2, p0, Lcom/nianticproject/ingress/common/model/i;->b:Lcom/google/a/c/dv;

    invoke-virtual {v2, v0}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    goto :goto_1

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/i;->b:Lcom/google/a/c/dv;

    invoke-virtual {v5}, Lcom/google/a/c/dh;->d_()Lcom/google/a/c/ct;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/dv;->b(Ljava/lang/Iterable;)Lcom/google/a/c/dv;

    .line 130
    :cond_4
    new-instance v0, Lcom/nianticproject/ingress/common/model/GameState;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/i;->a:Lcom/google/a/c/dv;

    invoke-virtual {v1}, Lcom/google/a/c/dv;->a()Lcom/google/a/c/du;

    move-result-object v3

    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/i;->b:Lcom/google/a/c/dv;

    invoke-virtual {v1}, Lcom/google/a/c/dv;->a()Lcom/google/a/c/du;

    move-result-object v4

    move-wide v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/model/GameState;-><init>(JLcom/google/a/c/du;Lcom/google/a/c/du;Lcom/google/a/c/dh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/i;->b:Lcom/google/a/c/dv;

    invoke-virtual {v0, p1}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/i;->c:Lcom/google/a/c/di;

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    .line 73
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/i;->c:Lcom/google/a/c/di;

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    .line 86
    return-void
.end method
