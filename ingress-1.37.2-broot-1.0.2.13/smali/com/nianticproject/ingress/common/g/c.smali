.class public abstract Lcom/nianticproject/ingress/common/g/c;
.super Lcom/nianticproject/ingress/common/g/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/g/j",
        "<",
        "Lcom/nianticproject/ingress/common/model/GameState;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/g/e;

.field private c:Lcom/nianticproject/ingress/common/model/GameState;

.field private d:Lcom/nianticproject/ingress/common/g/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/g/c;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/g/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/g/e;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/g/j;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/nianticproject/ingress/common/g/c;->b:Lcom/nianticproject/ingress/common/g/e;

    .line 29
    return-void
.end method

.method private g()Lcom/nianticproject/ingress/common/model/GameState;
    .locals 8

    .prologue
    .line 42
    :try_start_0
    const-string/jumbo v0, "GameStateObserver.doQuery"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/c;->d:Lcom/nianticproject/ingress/common/g/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/c;->d:Lcom/nianticproject/ingress/common/g/h;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/h;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 48
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 52
    :cond_1
    :try_start_1
    new-instance v2, Lcom/nianticproject/ingress/common/g/z;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/c;->d:Lcom/nianticproject/ingress/common/g/h;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/h;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/nianticproject/ingress/common/g/z;-><init>(Ljava/util/Collection;)V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/c;->c:Lcom/nianticproject/ingress/common/model/GameState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/c;->c:Lcom/nianticproject/ingress/common/model/GameState;

    iget-wide v0, v0, Lcom/nianticproject/ingress/common/model/GameState;->timestamp:J

    .line 55
    :goto_1
    iget-object v5, p0, Lcom/nianticproject/ingress/common/g/c;->b:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v5, v2, v0, v1}, Lcom/nianticproject/ingress/common/g/e;->a(Lcom/nianticproject/ingress/common/g/h;J)Lcom/google/a/a/ak;

    move-result-object v1

    .line 57
    iget-object v0, v1, Lcom/google/a/a/ak;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/i;

    .line 58
    iget-object v1, v1, Lcom/google/a/a/ak;->b:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 60
    iget-object v5, p0, Lcom/nianticproject/ingress/common/g/c;->c:Lcom/nianticproject/ingress/common/model/GameState;

    invoke-virtual {v0, v5, v1, v2}, Lcom/nianticproject/ingress/common/model/i;->a(Lcom/nianticproject/ingress/common/model/GameState;J)Lcom/nianticproject/ingress/common/model/GameState;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/c;->c:Lcom/nianticproject/ingress/common/model/GameState;

    .line 62
    sget-object v0, Lcom/nianticproject/ingress/common/g/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "GameStateObserver.doQuery in %dms (%d disappeared %d changed %d total)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v3, v6, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nianticproject/ingress/common/g/c;->c:Lcom/nianticproject/ingress/common/model/GameState;

    iget-object v4, v4, Lcom/nianticproject/ingress/common/model/GameState;->disappeared:Lcom/google/a/c/du;

    invoke-virtual {v4}, Lcom/google/a/c/du;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/nianticproject/ingress/common/g/c;->c:Lcom/nianticproject/ingress/common/model/GameState;

    iget-object v4, v4, Lcom/nianticproject/ingress/common/model/GameState;->changedEntities:Lcom/google/a/c/du;

    invoke-virtual {v4}, Lcom/google/a/c/du;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/g/c;->c:Lcom/nianticproject/ingress/common/model/GameState;

    iget-object v4, v4, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    invoke-virtual {v4}, Lcom/google/a/c/dh;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/c;->c:Lcom/nianticproject/ingress/common/model/GameState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto/16 :goto_0

    .line 54
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 67
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/g/h;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/nianticproject/ingress/common/g/c;->d:Lcom/nianticproject/ingress/common/g/h;

    .line 37
    return-void
.end method

.method protected final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/g/c;->g()Lcom/nianticproject/ingress/common/model/GameState;

    move-result-object v0

    return-object v0
.end method
