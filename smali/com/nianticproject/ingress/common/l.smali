.class public Lcom/nianticproject/ingress/common/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private b:Lcom/nianticproject/ingress/common/u/s;

.field private final c:Lcom/nianticproject/ingress/common/g/e;

.field private final d:Lcom/nianticproject/ingress/common/a;

.field private e:Lcom/nianticproject/ingress/common/g/h;

.field private f:Lcom/google/a/d/u;

.field private g:Z

.field private h:Z

.field private i:J

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/l;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/l;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/l;->g:Z

    .line 52
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/l;->h:Z

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/l;->i:J

    .line 58
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/l;->j:Z

    .line 61
    iput-object p1, p0, Lcom/nianticproject/ingress/common/l;->c:Lcom/nianticproject/ingress/common/g/e;

    .line 62
    iput-object p2, p0, Lcom/nianticproject/ingress/common/l;->d:Lcom/nianticproject/ingress/common/a;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/l;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nianticproject/ingress/common/l;->i:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1499700

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/l;->c:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/e;->d()V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/l;->d:Lcom/nianticproject/ingress/common/a;

    const-string/jumbo v2, "Clearing DB..."

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/common/a;->c(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/l;->j:Z

    iget-object v0, p0, Lcom/nianticproject/ingress/common/l;->c:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/e;->c()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/nianticproject/ingress/common/l;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/l;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/l;->d()Lcom/nianticproject/ingress/common/x/f;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/nianticproject/ingress/common/m;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/m;-><init>(Lcom/nianticproject/ingress/common/l;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/m;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 167
    return-void
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/l;->h:Z

    return v0
.end method

.method private final d()Lcom/nianticproject/ingress/common/x/f;
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v9, 0x10

    .line 251
    :try_start_0
    const-string/jumbo v0, "GameStateLoader.updateCacheFromServer"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 254
    iget-object v0, p0, Lcom/nianticproject/ingress/common/l;->d:Lcom/nianticproject/ingress/common/a;

    const-string/jumbo v3, "Scanning local area..."

    invoke-interface {v0, v3}, Lcom/nianticproject/ingress/common/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 261
    :try_start_1
    const-string/jumbo v0, "GetQueryTimesForCells"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 263
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 264
    :try_start_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/l;->e:Lcom/nianticproject/ingress/common/g/h;

    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/h;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    invoke-virtual {v0}, Lcom/google/a/d/j;->f()I

    move-result v3

    if-ge v3, v9, :cond_1

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/google/a/d/j;->c(I)Lcom/google/a/d/j;

    move-result-object v3

    :goto_1
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Lcom/google/a/d/j;->d(I)Lcom/google/a/d/j;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/google/a/d/j;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/a/d/j;->m()Lcom/google/a/d/j;

    move-result-object v3

    goto :goto_1

    :cond_1
    if-le v3, v9, :cond_2

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/google/a/d/j;->b(I)Lcom/google/a/d/j;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 269
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 351
    :catchall_2
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 264
    :cond_2
    :try_start_5
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v7, v0, [J

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v3, v2

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0}, Lcom/google/a/d/j;->d()J

    move-result-wide v9

    aput-wide v9, v7, v3

    move v3, v4

    goto :goto_2

    .line 265
    :cond_4
    new-instance v0, Lcom/google/a/d/u;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/l;->f:Lcom/google/a/d/u;

    invoke-virtual {v3}, Lcom/google/a/d/u;->a()Lcom/google/a/d/d;

    move-result-object v3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/l;->f:Lcom/google/a/d/u;

    invoke-virtual {v4}, Lcom/google/a/d/u;->d()Lcom/google/a/d/d;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/google/a/d/u;-><init>(Lcom/google/a/d/d;Lcom/google/a/d/d;)V

    .line 266
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 267
    :try_start_6
    iget-object v3, p0, Lcom/nianticproject/ingress/common/l;->c:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v3, v7}, Lcom/nianticproject/ingress/common/g/e;->a([J)[J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v3

    .line 269
    :try_start_7
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 273
    iget-object v4, p0, Lcom/nianticproject/ingress/common/l;->b:Lcom/nianticproject/ingress/common/u/s;

    invoke-virtual {v4, v0, v7, v3}, Lcom/nianticproject/ingress/common/u/s;->a(Lcom/google/a/d/u;[J[J)Lcom/google/a/a/ak;

    move-result-object v3

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 282
    iget-object v0, p0, Lcom/nianticproject/ingress/common/l;->d:Lcom/nianticproject/ingress/common/a;

    const-string/jumbo v4, "Completing scan..."

    invoke-interface {v0, v4}, Lcom/nianticproject/ingress/common/a;->c(Ljava/lang/String;)V

    .line 284
    iget-object v0, v3, Lcom/google/a/a/ak;->a:Ljava/lang/Object;

    if-eqz v0, :cond_5

    iget-object v0, v3, Lcom/google/a/a/ak;->b:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v0, :cond_5

    .line 294
    :try_start_8
    const-string/jumbo v0, "CacheUpdateQueryTimesForCells"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 295
    iput-wide v5, p0, Lcom/nianticproject/ingress/common/l;->i:J

    .line 296
    iget-object v4, p0, Lcom/nianticproject/ingress/common/l;->c:Lcom/nianticproject/ingress/common/g/e;

    iget-object v0, v3, Lcom/google/a/a/ak;->b:Ljava/lang/Object;

    check-cast v0, [J

    invoke-interface {v4, v7, v0}, Lcom/nianticproject/ingress/common/g/e;->a([J[J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 298
    :try_start_9
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 302
    :try_start_a
    const-string/jumbo v0, "CacheUpdateGameState"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 303
    iget-object v4, p0, Lcom/nianticproject/ingress/common/l;->c:Lcom/nianticproject/ingress/common/g/e;

    iget-object v0, v3, Lcom/google/a/a/ak;->a:Ljava/lang/Object;

    check-cast v0, Lcom/nianticproject/ingress/shared/model/e;

    invoke-interface {v4, v0}, Lcom/nianticproject/ingress/common/g/e;->a(Lcom/nianticproject/ingress/shared/model/e;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 305
    :try_start_b
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 309
    :cond_5
    iget-object v0, p0, Lcom/nianticproject/ingress/common/l;->d:Lcom/nianticproject/ingress/common/a;

    const-string/jumbo v4, "Refreshing the inventory..."

    invoke-interface {v0, v4}, Lcom/nianticproject/ingress/common/a;->c(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/nianticproject/ingress/common/l;->c:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/e;->g()J

    move-result-wide v4

    .line 313
    iget-object v0, p0, Lcom/nianticproject/ingress/common/l;->b:Lcom/nianticproject/ingress/common/u/s;

    invoke-virtual {v0, v4, v5}, Lcom/nianticproject/ingress/common/u/s;->a(J)Lcom/google/a/a/ak;

    move-result-object v6

    .line 316
    iget-object v0, v6, Lcom/google/a/a/ak;->a:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object v0, v6, Lcom/google/a/a/ak;->b:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 319
    iget-object v0, v6, Lcom/google/a/a/ak;->a:Ljava/lang/Object;

    check-cast v0, Lcom/nianticproject/ingress/shared/model/e;

    invoke-interface {v0}, Lcom/nianticproject/ingress/shared/model/e;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-nez v0, :cond_7

    .line 321
    iget-object v0, p0, Lcom/nianticproject/ingress/common/l;->c:Lcom/nianticproject/ingress/common/g/e;

    const-wide/16 v4, 0x1

    invoke-interface {v0, v4, v5}, Lcom/nianticproject/ingress/common/g/e;->a(J)V

    .line 333
    :cond_6
    :goto_3
    iget-object v0, v3, Lcom/google/a/a/ak;->a:Ljava/lang/Object;

    if-eqz v0, :cond_8

    iget-object v0, v6, Lcom/google/a/a/ak;->a:Ljava/lang/Object;

    if-eqz v0, :cond_8

    move v0, v1

    .line 335
    :goto_4
    if-eqz v0, :cond_9

    .line 336
    iget-object v0, p0, Lcom/nianticproject/ingress/common/l;->d:Lcom/nianticproject/ingress/common/a;

    const-string/jumbo v1, "Scan complete."

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/a;->b(Ljava/lang/String;)V

    .line 341
    :goto_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/l;->j:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 351
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    const/4 v0, 0x0

    return-object v0

    .line 298
    :catchall_3
    move-exception v0

    :try_start_c
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 305
    :catchall_4
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 324
    :cond_7
    :try_start_d
    const-string/jumbo v0, "CacheUpdateInventory"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 325
    iget-object v4, p0, Lcom/nianticproject/ingress/common/l;->c:Lcom/nianticproject/ingress/common/g/e;

    iget-object v0, v6, Lcom/google/a/a/ak;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {v4, v7, v8}, Lcom/nianticproject/ingress/common/g/e;->a(J)V

    .line 326
    iget-object v4, p0, Lcom/nianticproject/ingress/common/l;->c:Lcom/nianticproject/ingress/common/g/e;

    iget-object v0, v6, Lcom/google/a/a/ak;->a:Ljava/lang/Object;

    check-cast v0, Lcom/nianticproject/ingress/shared/model/e;

    invoke-interface {v4, v0}, Lcom/nianticproject/ingress/common/g/e;->a(Lcom/nianticproject/ingress/shared/model/e;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 328
    :try_start_e
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_3

    :catchall_5
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_8
    move v0, v2

    .line 333
    goto :goto_4

    .line 338
    :cond_9
    iget-object v0, p0, Lcom/nianticproject/ingress/common/l;->d:Lcom/nianticproject/ingress/common/a;

    const-string/jumbo v1, "Scan FAILED."

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/a;->b(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_5
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/l;->g:Z

    return v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/l;->h:Z

    return v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/l;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/l;->c()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/d/u;Lcom/nianticproject/ingress/common/g/h;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    sget-object v0, Lcom/nianticproject/ingress/common/l;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 109
    :goto_0
    return-void

    .line 88
    :cond_0
    monitor-enter p0

    .line 89
    :try_start_0
    new-instance v0, Lcom/nianticproject/ingress/common/g/z;

    invoke-interface {p2}, Lcom/nianticproject/ingress/common/g/h;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/g/z;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/l;->e:Lcom/nianticproject/ingress/common/g/h;

    .line 90
    iput-object p1, p0, Lcom/nianticproject/ingress/common/l;->f:Lcom/google/a/d/u;

    .line 91
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/l;->g:Z

    if-eqz v0, :cond_2

    .line 95
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/l;->h:Z

    if-eqz v0, :cond_1

    .line 96
    sget-object v0, Lcom/nianticproject/ingress/common/l;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 100
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/l;->h:Z

    .line 101
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 98
    :cond_1
    :try_start_1
    sget-object v0, Lcom/nianticproject/ingress/common/l;->a:Lcom/nianticproject/ingress/common/w/aa;

    goto :goto_1

    .line 104
    :cond_2
    sget-object v0, Lcom/nianticproject/ingress/common/l;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/l;->g:Z

    .line 106
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/l;->c()V

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/u/s;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/nianticproject/ingress/common/l;->b:Lcom/nianticproject/ingress/common/u/s;

    .line 68
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/l;->j:Z

    return v0
.end method
