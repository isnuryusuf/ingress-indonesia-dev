.class public Lcom/nianticproject/ingress/common/g/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/g/e;


# static fields
.field private static final h:Lcom/nianticproject/ingress/common/w/aa;

.field private static final i:Lcom/nianticproject/ingress/gameentity/f;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation
.end field

.field c:La/a/a/a/b/ad;

.field final d:Lcom/nianticproject/ingress/common/g/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nianticproject/ingress/common/g/aa",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lcom/nianticproject/ingress/common/g/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nianticproject/ingress/common/g/aa",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation
.end field

.field final f:Lcom/nianticproject/ingress/common/g/y;

.field g:J

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/g/f;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/g/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 64
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/g/o;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/g/o;->h:Lcom/nianticproject/ingress/common/w/aa;

    .line 76
    new-instance v0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    const-string/jumbo v1, "deletedEntity"

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;-><init>(Ljava/lang/String;J)V

    new-instance v1, Lcom/nianticproject/ingress/gameentity/components/SimpleLocked;

    invoke-direct {v1}, Lcom/nianticproject/ingress/gameentity/components/SimpleLocked;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a()Lcom/nianticproject/ingress/gameentity/PersistentGameEntity;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/g/o;->i:Lcom/nianticproject/ingress/gameentity/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/google/a/c/hc;->a(I)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->a:Ljava/util/Map;

    .line 100
    const/16 v0, 0x7d0

    invoke-static {v0}, Lcom/google/a/c/hc;->a(I)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->b:Ljava/util/Map;

    .line 107
    new-instance v0, La/a/a/a/b/ag;

    invoke-direct {v0}, La/a/a/a/b/ag;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->c:La/a/a/a/b/ad;

    .line 110
    new-instance v0, Lcom/nianticproject/ingress/common/g/aa;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/g/aa;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->d:Lcom/nianticproject/ingress/common/g/aa;

    .line 112
    new-instance v0, Lcom/nianticproject/ingress/common/g/aa;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/g/aa;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->e:Lcom/nianticproject/ingress/common/g/aa;

    .line 115
    new-instance v0, Lcom/nianticproject/ingress/common/g/y;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/g/y;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->f:Lcom/nianticproject/ingress/common/g/y;

    .line 121
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->j:Ljava/util/Set;

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/g/o;->g:J

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->k:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->l:Ljava/util/List;

    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->c:La/a/a/a/b/ad;

    invoke-interface {v0}, La/a/a/a/b/ad;->a()V

    .line 131
    return-void
.end method

.method private static a(Lcom/nianticproject/ingress/gameentity/components/PointIndex;)Lcom/google/a/d/j;
    .locals 1
    .parameter

    .prologue
    .line 872
    instance-of v0, p0, Lcom/nianticproject/ingress/gameentity/components/CachingPointIndex;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 873
    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/CachingPointIndex;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/CachingPointIndex;->getIndexCell()Lcom/google/a/d/j;

    move-result-object v0

    .line 874
    if-eqz v0, :cond_0

    .line 878
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/PointIndex;->getIndexPoint()Lcom/google/a/d/u;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/b/b;->a(Lcom/google/a/d/u;)Lcom/google/a/d/j;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/nianticproject/ingress/common/g/h;)Ljava/util/Collection;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/g/h;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 724
    :try_start_0
    const-string/jumbo v0, "NemesisMemoryCache.findGameEntitiesInRange"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 725
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 728
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/g/h;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/a/c/eq;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 731
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/g/h;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/a/c/jc;->a(I)Ljava/util/HashSet;

    move-result-object v2

    .line 734
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 735
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->d:Lcom/nianticproject/ingress/common/g/aa;

    invoke-interface {p1}, Lcom/nianticproject/ingress/common/g/h;->a()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/nianticproject/ingress/common/g/aa;->a(Ljava/util/Collection;Ljava/util/Collection;)I

    .line 736
    iget-object v3, p0, Lcom/nianticproject/ingress/common/g/o;->e:Lcom/nianticproject/ingress/common/g/aa;

    invoke-interface {p1}, Lcom/nianticproject/ingress/common/g/h;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/nianticproject/ingress/common/g/aa;->a(Ljava/util/Collection;Ljava/util/Collection;)I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Lcom/google/a/c/jc;->a(I)Ljava/util/HashSet;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    :cond_1
    invoke-virtual {v0}, Lcom/google/a/d/j;->h()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0}, Lcom/google/a/d/j;->k()Lcom/google/a/d/j;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    iget-object v5, v3, Lcom/nianticproject/ingress/common/g/aa;->c:La/a/a/a/b/bv;

    invoke-virtual {v3, v0}, Lcom/nianticproject/ingress/common/g/aa;->a(Lcom/google/a/d/j;)J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, La/a/a/a/b/bv;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    invoke-interface {v2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 737
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 749
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 737
    :cond_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 740
    :try_start_4
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 749
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v1
.end method

.method private static a(Lcom/nianticproject/ingress/gameentity/components/RegionIndex;)Ljava/util/Collection;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/gameentity/components/RegionIndex;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/a/d/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 888
    instance-of v0, p0, Lcom/nianticproject/ingress/gameentity/components/CachingRegionIndex;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 889
    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/CachingRegionIndex;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/CachingRegionIndex;->getCovering()Lcom/google/a/c/dc;

    move-result-object v0

    .line 890
    if-eqz v0, :cond_0

    .line 906
    :goto_0
    return-object v0

    .line 895
    :cond_0
    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/RegionIndex;->getIndexRegion()Lcom/google/a/d/ad;

    move-result-object v0

    .line 897
    instance-of v1, v0, Lcom/google/a/d/i;

    if-eqz v1, :cond_1

    .line 898
    check-cast v0, Lcom/google/a/d/i;

    .line 899
    invoke-virtual {v0}, Lcom/google/a/d/i;->a()Lcom/google/a/d/j;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 903
    :cond_1
    new-instance v1, Lcom/google/a/d/ae;

    invoke-direct {v1}, Lcom/google/a/d/ae;-><init>()V

    .line 904
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/google/a/d/ae;->a(I)V

    .line 905
    invoke-virtual {v1, v0}, Lcom/google/a/d/ae;->a(Lcom/google/a/d/ad;)Lcom/google/a/d/k;

    move-result-object v0

    .line 906
    invoke-virtual {v0}, Lcom/google/a/d/k;->a()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 445
    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/o;->l:Ljava/util/List;

    monitor-enter v1

    .line 447
    :try_start_0
    const-string/jumbo v0, "NemesisMemoryCache.notifyInventoryChanged"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/g/g;

    .line 449
    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/g;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 452
    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 454
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 452
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 454
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void
.end method

.method private a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 802
    if-eqz p2, :cond_0

    .line 803
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 804
    sget-object v0, Lcom/nianticproject/ingress/common/g/o;->i:Lcom/nianticproject/ingress/gameentity/f;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    sget-object v0, Lcom/nianticproject/ingress/common/g/o;->h:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Attempting to reinsert deleted entity(%s) to the cache!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->b:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    invoke-static {p2}, Lcom/nianticproject/ingress/common/g/o;->c(Lcom/nianticproject/ingress/gameentity/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 816
    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/g/o;->d(Lcom/nianticproject/ingress/gameentity/f;)V

    .line 819
    :cond_1
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/SpatialIndex;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/SpatialIndex;

    .line 820
    instance-of v1, v0, Lcom/nianticproject/ingress/gameentity/components/PointIndex;

    if-eqz v1, :cond_3

    .line 821
    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/o;->d:Lcom/nianticproject/ingress/common/g/aa;

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/PointIndex;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/g/o;->a(Lcom/nianticproject/ingress/gameentity/components/PointIndex;)Lcom/google/a/d/j;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/nianticproject/ingress/common/g/aa;->a(Lcom/google/a/d/j;Ljava/lang/Object;)V

    .line 825
    :cond_2
    return-void

    .line 822
    :cond_3
    instance-of v1, v0, Lcom/nianticproject/ingress/gameentity/components/RegionIndex;

    if-eqz v1, :cond_2

    .line 823
    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/o;->e:Lcom/nianticproject/ingress/common/g/aa;

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/RegionIndex;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/g/o;->a(Lcom/nianticproject/ingress/gameentity/components/RegionIndex;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/g/aa;->a(Lcom/google/a/d/j;)J

    move-result-wide v3

    iget-object v0, v1, Lcom/nianticproject/ingress/common/g/aa;->c:La/a/a/a/b/bv;

    invoke-interface {v0, v3, v4}, La/a/a/a/b/bv;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_4

    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v5, v1, Lcom/nianticproject/ingress/common/g/aa;->c:La/a/a/a/b/bv;

    invoke-interface {v5, v3, v4, v0}, La/a/a/a/b/bv;->a(JLjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(ZLjava/util/Collection;)Z
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 397
    :try_start_0
    const-string/jumbo v0, "NemesisMemoryCache.updateChanged"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 399
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 400
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v7

    .line 401
    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/o;->b:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/f;

    .line 402
    sget-object v5, Lcom/nianticproject/ingress/common/g/o;->i:Lcom/nianticproject/ingress/gameentity/f;

    if-ne v1, v5, :cond_7

    .line 403
    if-nez p1, :cond_1

    .line 404
    sget-object v0, Lcom/nianticproject/ingress/common/g/o;->h:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Local change applied to server-deleted Entity.  Ignoring."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 440
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 406
    :cond_1
    :try_start_1
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 407
    sget-object v1, Lcom/nianticproject/ingress/common/g/o;->h:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v5, "Not Good! Resonator reinstated by the server!..."

    invoke-virtual {v1, v5}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    .line 420
    const/4 v1, 0x0

    move-object v5, v1

    .line 424
    :goto_1
    if-eqz p1, :cond_4

    .line 426
    if-eqz v5, :cond_2

    invoke-interface {v5}, Lcom/nianticproject/ingress/gameentity/f;->getLastModifiedMs()J

    move-result-wide v8

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getLastModifiedMs()J

    move-result-wide v10

    cmp-long v1, v8, v10

    if-gez v1, :cond_3

    :cond_2
    move v1, v2

    .line 427
    :goto_2
    iget-object v8, p0, Lcom/nianticproject/ingress/common/g/o;->j:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 433
    :goto_3
    if-eqz v1, :cond_6

    .line 435
    invoke-direct {p0, v0, v5}, Lcom/nianticproject/ingress/common/g/o;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/f;)V

    move v0, v2

    :goto_4
    move v3, v0

    .line 437
    goto :goto_0

    :cond_3
    move v1, v4

    .line 426
    goto :goto_2

    .line 430
    :cond_4
    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/o;->j:Ljava/util/Set;

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_3

    .line 440
    :cond_5
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return v3

    :cond_6
    move v0, v3

    goto :goto_4

    :cond_7
    move-object v5, v1

    goto :goto_1
.end method

.method private b(Ljava/util/Collection;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 579
    :try_start_0
    const-string/jumbo v0, "NemesisMemoryCache.updateInventory"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 580
    const/4 v2, 0x0

    .line 581
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 582
    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/o;->a:Ljava/util/Map;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/f;

    .line 584
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getLastModifiedMs()J

    move-result-wide v4

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getLastModifiedMs()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    .line 587
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/o;->a:Ljava/util/Map;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/o;->f:Lcom/nianticproject/ingress/common/g/y;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/g/y;->a(Lcom/nianticproject/ingress/gameentity/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    const/4 v0, 0x1

    :goto_1
    move v2, v0

    .line 591
    goto :goto_0

    .line 594
    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return v2

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 1
    .parameter

    .prologue
    .line 847
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 848
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 849
    if-eqz v0, :cond_0

    .line 850
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/g/o;->d(Lcom/nianticproject/ingress/gameentity/f;)V

    .line 852
    :cond_0
    return-object v0
.end method

.method private static c(Lcom/nianticproject/ingress/gameentity/f;)Z
    .locals 1
    .parameter

    .prologue
    .line 574
    if-eqz p0, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/common/g/o;->i:Lcom/nianticproject/ingress/gameentity/f;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 6
    .parameter

    .prologue
    .line 857
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/SpatialIndex;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/SpatialIndex;

    .line 858
    instance-of v1, v0, Lcom/nianticproject/ingress/gameentity/components/PointIndex;

    if-eqz v1, :cond_1

    .line 859
    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/o;->d:Lcom/nianticproject/ingress/common/g/aa;

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/PointIndex;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/g/o;->a(Lcom/nianticproject/ingress/gameentity/components/PointIndex;)Lcom/google/a/d/j;

    move-result-object v0

    iget-object v2, v1, Lcom/nianticproject/ingress/common/g/aa;->c:La/a/a/a/b/bv;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/g/aa;->a(Lcom/google/a/d/j;)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, La/a/a/a/b/bv;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 865
    :cond_0
    return-void

    .line 860
    :cond_1
    instance-of v1, v0, Lcom/nianticproject/ingress/gameentity/components/RegionIndex;

    if-eqz v1, :cond_3

    .line 861
    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/o;->e:Lcom/nianticproject/ingress/common/g/aa;

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/RegionIndex;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/g/o;->a(Lcom/nianticproject/ingress/gameentity/components/RegionIndex;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    iget-object v3, v1, Lcom/nianticproject/ingress/common/g/aa;->c:La/a/a/a/b/bv;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/g/aa;->a(Lcom/google/a/d/j;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, La/a/a/a/b/bv;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 862
    :cond_3
    if-eqz v0, :cond_0

    .line 863
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown spatial index type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 458
    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/o;->k:Ljava/util/List;

    monitor-enter v1

    .line 460
    :try_start_0
    const-string/jumbo v0, "NemesisMemoryCache.notifyGameStateChanged"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/g/f;

    .line 462
    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 467
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 465
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 467
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/g/h;J)Lcom/google/a/a/ak;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/g/h;",
            "J)",
            "Lcom/google/a/a/ak",
            "<",
            "Lcom/nianticproject/ingress/common/model/i;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    :try_start_0
    const-string/jumbo v0, "NemesisMemoryCache.loadGameState"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 193
    new-instance v3, Lcom/nianticproject/ingress/common/model/i;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/model/i;-><init>()V

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 195
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/g/o;->a(Lcom/nianticproject/ingress/common/g/h;)Ljava/util/Collection;

    move-result-object v0

    .line 198
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 199
    :try_start_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v1, p2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 200
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getLastModifiedMs()J

    move-result-wide v5

    .line 201
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 202
    cmp-long v5, v5, p2

    if-gez v5, :cond_0

    iget-object v5, p0, Lcom/nianticproject/ingress/common/g/o;->j:Ljava/util/Set;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 203
    :cond_0
    invoke-virtual {v3, v0}, Lcom/nianticproject/ingress/common/model/i;->a(Lcom/nianticproject/ingress/gameentity/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 216
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 205
    :cond_1
    :try_start_3
    invoke-virtual {v3, v0}, Lcom/nianticproject/ingress/common/model/i;->b(Lcom/nianticproject/ingress/gameentity/f;)V

    goto :goto_0

    .line 208
    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    :try_start_4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/a/a/ak;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/a/ak;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 216
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 5
    .parameter

    .prologue
    .line 631
    monitor-enter p0

    .line 633
    :try_start_0
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/g/o;->c(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    .line 634
    if-nez v0, :cond_0

    .line 635
    sget-object v0, Lcom/nianticproject/ingress/common/g/o;->h:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Removing resource from world that is not in the db: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    const/4 v0, 0x0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    :goto_0
    return-object v0

    .line 640
    :cond_0
    monitor-exit p0

    .line 641
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/g/o;->h()V

    goto :goto_0

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 2
    .parameter

    .prologue
    .line 479
    monitor-enter p0

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 481
    sget-object v1, Lcom/nianticproject/ingress/common/g/o;->i:Lcom/nianticproject/ingress/gameentity/f;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Class;Lcom/nianticproject/ingress/common/g/h;)Ljava/util/Collection;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/nianticproject/ingress/gameentity/a;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/nianticproject/ingress/common/g/h;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 761
    :try_start_0
    const-string/jumbo v0, "NemesisMemoryCache.findComponentsInRange"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 762
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 764
    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/g/o;->a(Lcom/nianticproject/ingress/common/g/h;)Ljava/util/Collection;

    move-result-object v0

    .line 768
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 769
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 770
    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v3

    .line 771
    if-eqz v3, :cond_0

    invoke-interface {p2, v0}, Lcom/nianticproject/ingress/common/g/h;->a(Lcom/nianticproject/ingress/gameentity/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 783
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v1
.end method

.method public final a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/shared/af;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 600
    invoke-static {}, Lcom/google/a/c/eq;->b()Ljava/util/LinkedList;

    move-result-object v1

    .line 601
    monitor-enter p0

    .line 602
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/af;

    .line 603
    iget-object v3, p0, Lcom/nianticproject/ingress/common/g/o;->f:Lcom/nianticproject/ingress/common/g/y;

    invoke-virtual {v3, v0}, Lcom/nianticproject/ingress/common/g/y;->a(Lcom/nianticproject/ingress/shared/af;)Ljava/util/Collection;

    move-result-object v0

    .line 604
    if-eqz v0, :cond_0

    .line 605
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 608
    const-class v4, Lcom/nianticproject/ingress/gameentity/components/Locked;

    invoke-interface {v0, v4}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v4

    if-nez v4, :cond_1

    .line 609
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 614
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    return-object v1
.end method

.method public final a(J)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x1

    .line 704
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/g/o;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    cmp-long v0, p1, v4

    if-nez v0, :cond_0

    .line 705
    iput-wide v4, p0, Lcom/nianticproject/ingress/common/g/o;->g:J

    .line 709
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/g/o;->a()V

    .line 713
    :goto_0
    return-void

    .line 711
    :cond_0
    iput-wide p1, p0, Lcom/nianticproject/ingress/common/g/o;->g:J

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/g/f;)V
    .locals 2
    .parameter

    .prologue
    .line 139
    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/o;->k:Ljava/util/List;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/g/g;)V
    .locals 2
    .parameter

    .prologue
    .line 153
    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/o;->l:Ljava/util/List;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/nianticproject/ingress/shared/model/e;)V
    .locals 12
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 223
    :try_start_0
    const-string/jumbo v0, "NemesisMemoryCache.update"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 225
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-interface {p1}, Lcom/nianticproject/ingress/shared/model/e;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/aj;->c(Ljava/lang/Object;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/a/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 228
    invoke-interface {p1}, Lcom/nianticproject/ingress/shared/model/e;->b()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/google/a/a/aj;->c(Ljava/lang/Object;)Lcom/google/a/a/aj;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/a/a/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 230
    invoke-interface {p1}, Lcom/nianticproject/ingress/shared/model/e;->c()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/google/a/a/aj;->c(Ljava/lang/Object;)Lcom/google/a/a/aj;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/a/a/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 232
    invoke-interface {p1}, Lcom/nianticproject/ingress/shared/model/e;->d()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lcom/google/a/a/aj;->c(Ljava/lang/Object;)Lcom/google/a/a/aj;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/a/a/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 235
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 299
    :goto_0
    return-void

    .line 246
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_3

    .line 248
    :try_start_2
    const-string/jumbo v4, "ComputeSpatialIndexCoverings"

    invoke-static {v4}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 250
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nianticproject/ingress/gameentity/f;

    .line 252
    const-class v8, Lcom/nianticproject/ingress/gameentity/components/CachingSpatialIndex;

    invoke-interface {v4, v8}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v4

    check-cast v4, Lcom/nianticproject/ingress/gameentity/components/CachingSpatialIndex;

    .line 253
    if-eqz v4, :cond_1

    .line 254
    invoke-interface {v4}, Lcom/nianticproject/ingress/gameentity/components/CachingSpatialIndex;->computeCovering()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 264
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 298
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 264
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 269
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 270
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v7

    if-nez v7, :cond_5

    .line 272
    :try_start_5
    const-string/jumbo v4, "CreateEnergyGlobEntities"

    invoke-static {v4}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 273
    invoke-interface {p1}, Lcom/nianticproject/ingress/shared/model/e;->e()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lcom/google/a/a/aj;->c(Ljava/lang/Object;)Lcom/google/a/a/aj;

    move-result-object v4

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/a/a/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 277
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Lcom/google/a/c/eq;->a(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 279
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 280
    new-instance v10, Lcom/nianticproject/ingress/common/gameentity/EnergyGlobEntity;

    invoke-direct {v10, v3, v7, v8}, Lcom/nianticproject/ingress/common/gameentity/EnergyGlobEntity;-><init>(Ljava/lang/String;J)V

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 288
    :catchall_2
    move-exception v0

    :try_start_6
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_4
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 292
    :cond_5
    invoke-interface {p1}, Lcom/nianticproject/ingress/shared/model/e;->a()Z

    move-result v7

    .line 294
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 295
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    const-string/jumbo v3, "RemoveEntities"

    invoke-static {v3}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v3, v6

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/g/o;->c(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v9

    iget-object v10, p0, Lcom/nianticproject/ingress/common/g/o;->b:Ljava/util/Map;

    sget-object v11, Lcom/nianticproject/ingress/common/g/o;->i:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v10, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Lcom/nianticproject/ingress/common/g/o;->c(Lcom/nianticproject/ingress/gameentity/f;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v6, v5

    goto :goto_3

    :cond_6
    iget-object v9, p0, Lcom/nianticproject/ingress/common/g/o;->a:Ljava/util/Map;

    sget-object v10, Lcom/nianticproject/ingress/common/g/o;->i:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v9, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/g/o;->c(Lcom/nianticproject/ingress/gameentity/f;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v3, p0, Lcom/nianticproject/ingress/common/g/o;->f:Lcom/nianticproject/ingress/common/g/y;

    invoke-virtual {v3, v0}, Lcom/nianticproject/ingress/common/g/y;->b(Lcom/nianticproject/ingress/gameentity/f;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move v0, v5

    :goto_4
    move v3, v0

    goto :goto_3

    :cond_7
    :try_start_9
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    const-string/jumbo v0, "UpdateEntities"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    invoke-direct {p0, v7, v1}, Lcom/nianticproject/ingress/common/g/o;->a(ZLjava/util/Collection;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-result v0

    or-int/2addr v0, v6

    :try_start_b
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    const-string/jumbo v1, "UpdateInventory"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/nianticproject/ingress/common/g/o;->b(Ljava/util/Collection;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-result v1

    or-int v2, v3, v1

    :try_start_d
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    const-string/jumbo v1, "AddEnergyGlobs"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/gameentity/EnergyGlobEntity;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/o;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/gameentity/EnergyGlobEntity;->getGuid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/f;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/g/o;->c(Lcom/nianticproject/ingress/gameentity/f;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/g/o;->d(Lcom/nianticproject/ingress/gameentity/f;)V

    :cond_8
    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/o;->d:Lcom/nianticproject/ingress/common/g/aa;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/gameentity/EnergyGlobEntity;->getIndexCell()Lcom/google/a/d/j;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/nianticproject/ingress/common/g/aa;->a(Lcom/google/a/d/j;Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    move v0, v5

    goto :goto_5

    :catchall_3
    move-exception v0

    :try_start_f
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 296
    :catchall_4
    move-exception v0

    :try_start_10
    monitor-exit p0

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 295
    :catchall_5
    move-exception v0

    :try_start_11
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :catchall_6
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_9
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/g/o;->h()V

    :cond_a
    if-eqz v2, :cond_b

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/g/o;->a()V

    .line 296
    :cond_b
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 298
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto/16 :goto_0

    .line 295
    :catchall_7
    move-exception v0

    :try_start_12
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :cond_c
    move v0, v3

    goto/16 :goto_4
.end method

.method public final a([J[J)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 675
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    array-length v0, p1

    array-length v2, p2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 678
    monitor-enter p0

    .line 679
    :goto_1
    :try_start_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 680
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->c:La/a/a/a/b/ad;

    aget-wide v2, p1, v1

    aget-wide v4, p2, v1

    invoke-interface {v0, v2, v3, v4, v5}, La/a/a/a/b/ad;->a(JJ)J

    .line 679
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 677
    goto :goto_0

    .line 682
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/Set;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 495
    monitor-enter p0

    .line 497
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 498
    iget-object v2, p0, Lcom/nianticproject/ingress/common/g/o;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 499
    if-eqz v0, :cond_1

    const-class v2, Lcom/nianticproject/ingress/gameentity/components/Locked;

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    .line 511
    :goto_0
    return v0

    .line 505
    :cond_2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 506
    iget-object v2, p0, Lcom/nianticproject/ingress/common/g/o;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    new-instance v2, Lcom/nianticproject/ingress/gameentity/components/SimpleLocked;

    invoke-direct {v2}, Lcom/nianticproject/ingress/gameentity/components/SimpleLocked;-><init>()V

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/gameentity/f;->add(Lcom/nianticproject/ingress/gameentity/DynamicComponent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/g/o;->a()V

    .line 511
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a([J)[J
    .locals 5
    .parameter

    .prologue
    .line 664
    array-length v0, p1

    new-array v1, v0, [J

    .line 665
    monitor-enter p0

    .line 666
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 667
    iget-object v2, p0, Lcom/nianticproject/ingress/common/g/o;->c:La/a/a/a/b/ad;

    aget-wide v3, p1, v0

    invoke-interface {v2, v3, v4}, La/a/a/a/b/ad;->d(J)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 666
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 669
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    return-object v1

    .line 669
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 2
    .parameter

    .prologue
    .line 487
    monitor-enter p0

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 489
    sget-object v1, Lcom/nianticproject/ingress/common/g/o;->i:Lcom/nianticproject/ingress/gameentity/f;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/common/g/f;)V
    .locals 2
    .parameter

    .prologue
    .line 146
    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/o;->k:Ljava/util/List;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 148
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Lcom/nianticproject/ingress/common/g/g;)V
    .locals 2
    .parameter

    .prologue
    .line 160
    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/o;->l:Ljava/util/List;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 162
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 2
    .parameter

    .prologue
    .line 647
    monitor-enter p0

    .line 648
    :try_start_0
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/g/o;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    .line 654
    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/g/o;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/f;)V

    .line 657
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->j:Ljava/util/Set;

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 658
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/g/o;->h()V

    .line 660
    return-void

    .line 658
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/util/Set;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 516
    const/4 v1, 0x0

    .line 517
    monitor-enter p0

    .line 518
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 519
    iget-object v3, p0, Lcom/nianticproject/ingress/common/g/o;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 521
    invoke-static {v0}, Lcom/nianticproject/ingress/common/g/o;->c(Lcom/nianticproject/ingress/gameentity/f;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 522
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Locked;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->remove(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/DynamicComponent;

    .line 523
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 525
    goto :goto_0

    .line 526
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    if-eqz v1, :cond_1

    .line 529
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/g/o;->a()V

    .line 531
    :cond_1
    return v1

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 168
    :try_start_0
    const-string/jumbo v0, "NemesisMemoryCache.clearAll"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 170
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 172
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->f:Lcom/nianticproject/ingress/common/g/y;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/y;->a()V

    .line 173
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 174
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->d:Lcom/nianticproject/ingress/common/g/aa;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/aa;->a()V

    .line 175
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->e:Lcom/nianticproject/ingress/common/g/aa;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/aa;->a()V

    .line 176
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/g/o;->g:J

    .line 177
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/g/o;->d()V

    .line 178
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :try_start_2
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/g/o;->h()V

    .line 180
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/g/o;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 185
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 186
    return-void

    .line 178
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 185
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 687
    monitor-enter p0

    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->c:La/a/a/a/b/ad;

    invoke-interface {v0}, La/a/a/a/b/ad;->clear()V

    .line 689
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 620
    sget-object v0, Lcom/nianticproject/ingress/common/gameentity/g;->a:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/g/o;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/o;->f:Lcom/nianticproject/ingress/common/g/y;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/y;->b()I

    move-result v0

    return v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 699
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/g/o;->g:J

    return-wide v0
.end method
