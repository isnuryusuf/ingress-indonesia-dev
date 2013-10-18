.class public Lcom/nianticproject/ingress/common/model/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/model/d;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/g/e;

.field private final c:Lcom/nianticproject/ingress/common/g/ac;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/model/e;",
            ">;"
        }
    .end annotation
.end field

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/model/f;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/model/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/g/e;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/nianticproject/ingress/common/g/ac;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/g/ac;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/f;->c:Lcom/nianticproject/ingress/common/g/ac;

    .line 46
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/f;->d:Ljava/util/Set;

    .line 50
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/f;->f:Ljava/util/Set;

    .line 54
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/g/e;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/f;->b:Lcom/nianticproject/ingress/common/g/e;

    .line 55
    return-void
.end method

.method private a(Lcom/google/a/d/u;J)Lcom/nianticproject/ingress/common/model/e;
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 217
    :try_start_0
    const-string/jumbo v0, "EnergyGlobCollector.vacuumEnergyGlobs"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/f;->c:Lcom/nianticproject/ingress/common/g/ac;

    const/16 v1, 0x28

    invoke-virtual {v0, p1, v1}, Lcom/nianticproject/ingress/common/g/ac;->a(Lcom/google/a/d/u;I)V

    .line 220
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/f;->b:Lcom/nianticproject/ingress/common/g/e;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/EnergyGlob;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/model/f;->c:Lcom/nianticproject/ingress/common/g/ac;

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/g/e;->a(Ljava/lang/Class;Lcom/nianticproject/ingress/common/g/h;)Ljava/util/Collection;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    sget-object v0, Lcom/nianticproject/ingress/common/model/e;->a:Lcom/nianticproject/ingress/common/model/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    :goto_0
    return-object v0

    .line 227
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/a/c/jc;->a(I)Ljava/util/HashSet;

    move-result-object v5

    .line 228
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v1, v3

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/EnergyGlob;

    .line 229
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/EnergyGlob;->getTotal()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v1, v7

    .line 230
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/EnergyGlob;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    cmp-long v0, v1, p2

    if-ltz v0, :cond_1

    .line 233
    :cond_2
    cmp-long v0, v1, v3

    if-nez v0, :cond_3

    .line 238
    sget-object v0, Lcom/nianticproject/ingress/common/model/e;->a:Lcom/nianticproject/ingress/common/model/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    .line 246
    :cond_3
    :try_start_2
    new-instance v0, Lcom/nianticproject/ingress/common/model/e;

    invoke-direct {v0, v5, v1, v2}, Lcom/nianticproject/ingress/common/model/e;-><init>(Ljava/util/Set;J)V

    .line 247
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/model/f;->a(Lcom/nianticproject/ingress/common/model/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method private declared-synchronized a(Lcom/nianticproject/ingress/common/model/e;)V
    .locals 1
    .parameter

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/model/f;->b(Lcom/nianticproject/ingress/common/model/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Lcom/nianticproject/ingress/common/model/e;)V
    .locals 4
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/f;->d:Ljava/util/Set;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/model/e;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 138
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/model/f;->e:J

    iget-wide v2, p1, Lcom/nianticproject/ingress/common/model/e;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/model/f;->e:J

    .line 139
    return-void
.end method

.method private declared-synchronized g()J
    .locals 2

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/model/f;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()J
    .locals 2

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/model/f;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()V
    .locals 5

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "EnergyGlobCollector.backupCachedEnergy"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/f;->d:Ljava/util/Set;

    .line 153
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/model/f;->d:Ljava/util/Set;

    .line 154
    iget-wide v1, p0, Lcom/nianticproject/ingress/common/model/f;->e:J

    .line 155
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/nianticproject/ingress/common/model/f;->e:J

    .line 157
    new-instance v3, Lcom/nianticproject/ingress/common/g;

    const/16 v4, 0x2c

    invoke-static {v4}, Lcom/google/a/a/ab;->a(C)Lcom/google/a/a/ab;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/a/a/ab;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v2, v0}, Lcom/nianticproject/ingress/common/g;-><init>(JLjava/lang/String;)V

    invoke-static {v3}, Lcom/nianticproject/ingress/common/s/c;->a(Lcom/nianticproject/ingress/common/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :try_start_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 166
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j()V
    .locals 3

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "EnergyGlobCollector.restoreCachedEnergy"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 175
    :try_start_1
    const-string/jumbo v0, "loadEnergyBatch"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->n()Lcom/nianticproject/ingress/common/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v1

    .line 178
    :try_start_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    :try_start_3
    const-string/jumbo v0, "decodeGuids"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 184
    iget-object v0, v1, Lcom/nianticproject/ingress/common/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result-object v0

    .line 186
    :goto_0
    :try_start_4
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 190
    :try_start_5
    const-string/jumbo v2, "addGuids"

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 191
    iget-wide v1, v1, Lcom/nianticproject/ingress/common/g;->a:J

    iput-wide v1, p0, Lcom/nianticproject/ingress/common/model/f;->e:J

    .line 192
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/nianticproject/ingress/common/model/f;->d:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 197
    :catchall_0
    move-exception v0

    :try_start_6
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 205
    :catchall_1
    move-exception v0

    :try_start_7
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 171
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    .line 178
    :catchall_3
    move-exception v0

    :try_start_8
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 184
    :cond_2
    :try_start_9
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-result-object v0

    goto :goto_0

    .line 186
    :catchall_4
    move-exception v0

    :try_start_a
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 197
    :cond_3
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 205
    :try_start_b
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 206
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/ad;JLcom/nianticproject/ingress/common/x/g;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/ad;",
            "J",
            "Lcom/nianticproject/ingress/common/x/g",
            "<",
            "Lcom/nianticproject/ingress/common/model/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/nianticproject/ingress/common/model/f;->a(Lcom/google/a/d/u;J)Lcom/nianticproject/ingress/common/model/e;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/nianticproject/ingress/common/x/g;->a(Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method public final declared-synchronized a(Lcom/nianticproject/ingress/common/model/e;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/f;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/model/f;->g:J

    iget-wide v2, p1, Lcom/nianticproject/ingress/common/model/e;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/model/f;->g:J

    .line 106
    if-nez p2, :cond_0

    .line 109
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/model/f;->b(Lcom/nianticproject/ingress/common/model/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/f;->i()V

    .line 70
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/f;->i()V

    .line 60
    return-void
.end method

.method public final declared-synchronized d()Lcom/nianticproject/ingress/common/model/e;
    .locals 5

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/f;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gez v0, :cond_0

    .line 75
    sget-object v0, Lcom/nianticproject/ingress/common/model/e;->a:Lcom/nianticproject/ingress/common/model/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :goto_0
    monitor-exit p0

    return-object v0

    .line 79
    :cond_0
    :try_start_1
    new-instance v0, Lcom/nianticproject/ingress/common/model/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/f;->d:Ljava/util/Set;

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/model/f;->e:J

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/model/e;-><init>(Ljava/util/Set;J)V

    .line 84
    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/f;->f:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    iget-wide v1, p0, Lcom/nianticproject/ingress/common/model/f;->g:J

    iget-wide v3, p0, Lcom/nianticproject/ingress/common/model/f;->e:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/nianticproject/ingress/common/model/f;->g:J

    .line 88
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/model/f;->d:Ljava/util/Set;

    .line 89
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/nianticproject/ingress/common/model/f;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()J
    .locals 4

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/f;->h()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/f;->g()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    add-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 2

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/f;->d:Ljava/util/Set;

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/model/f;->e:J

    .line 132
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/f;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/model/f;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f_()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/f;->j()V

    .line 65
    return-void
.end method
