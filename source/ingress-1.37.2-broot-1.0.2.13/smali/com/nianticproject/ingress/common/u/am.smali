.class public final Lcom/nianticproject/ingress/common/u/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/u/h;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/u/am;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/u/an;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/nianticproject/ingress/common/u/am;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/u/am;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/u/am;->a:Lcom/nianticproject/ingress/common/u/am;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/am;->b:Ljava/util/Map;

    .line 294
    return-void
.end method

.method public static a()Lcom/nianticproject/ingress/common/u/am;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/nianticproject/ingress/common/u/am;->a:Lcom/nianticproject/ingress/common/u/am;

    return-object v0
.end method

.method private static a(Ljava/util/Set;Ljava/util/Set;Lcom/nianticproject/ingress/common/u/an;Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorArray;Lcom/nianticproject/ingress/gameentity/components/SimplePortal;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;",
            "Lcom/nianticproject/ingress/common/u/an;",
            "Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorArray;",
            "Lcom/nianticproject/ingress/gameentity/components/SimplePortal;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 221
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-static {}, Lcom/nianticproject/ingress/shared/r;->values()[Lcom/nianticproject/ingress/shared/r;

    move-result-object v4

    array-length v5, v4

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v0, v4, v3

    .line 228
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/r;->a()I

    move-result v6

    .line 229
    iget-object v7, p2, Lcom/nianticproject/ingress/common/u/an;->a:[Ljava/lang/String;

    aget-object v7, v7, v6

    .line 230
    invoke-interface {p3, v0}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorArray;->getResonator(Lcom/nianticproject/ingress/shared/r;)Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    move-result-object v8

    .line 231
    if-eqz v8, :cond_1

    invoke-interface {v8}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;->getId()Ljava/lang/String;

    move-result-object v0

    .line 235
    :goto_1
    if-nez v8, :cond_2

    if-eqz v7, :cond_2

    .line 236
    invoke-interface {p0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p2, Lcom/nianticproject/ingress/common/u/an;->a:[Ljava/lang/String;

    aput-object v2, v0, v6

    .line 227
    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 231
    goto :goto_1

    .line 243
    :cond_2
    if-eqz v8, :cond_0

    .line 245
    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    if-eqz v7, :cond_3

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 251
    invoke-interface {p0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_3
    iget-object v7, p2, Lcom/nianticproject/ingress/common/u/an;->a:[Ljava/lang/String;

    aput-object v0, v7, v6

    .line 261
    new-instance v6, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    invoke-interface {p3}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorArray;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v7

    invoke-interface {v7}, Lcom/nianticproject/ingress/gameentity/f;->getLastModifiedMs()J

    move-result-wide v9

    invoke-direct {v6, v0, v9, v10}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;-><init>(Ljava/lang/String;J)V

    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;

    invoke-interface {v8}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;->getLevel()I

    move-result v7

    invoke-interface {v8}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;->getEntityGuid()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;->getOwnerGuid()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v7, v9, v10}, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v0

    invoke-interface {v8}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v6

    const-class v7, Lcom/nianticproject/ingress/gameentity/components/ControllingTeam;

    invoke-interface {v6, v7}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v0

    invoke-interface {v8}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v6

    const-class v7, Lcom/nianticproject/ingress/gameentity/components/Captured;

    invoke-interface {v6, v7}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v0

    new-instance v6, Lcom/nianticproject/ingress/gameentity/components/SimpleDamageable;

    invoke-interface {v8}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;->getTotal()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/nianticproject/ingress/gameentity/components/SimpleDamageable;-><init>(I)V

    invoke-virtual {v0, v6}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v0

    invoke-interface {v8}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;->getLocation()Lcom/google/a/d/u;

    move-result-object v6

    invoke-static {v6}, Lcom/nianticproject/ingress/shared/b/a;->b(Lcom/google/a/d/u;)Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a()Lcom/nianticproject/ingress/gameentity/PersistentGameEntity;

    move-result-object v0

    .line 270
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 275
    :cond_4
    invoke-static {}, Lcom/nianticproject/ingress/shared/r;->values()[Lcom/nianticproject/ingress/shared/r;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_3
    if-ge v2, v4, :cond_7

    aget-object v0, v3, v2

    .line 276
    invoke-interface {p3, v0}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorArray;->getResonator(Lcom/nianticproject/ingress/shared/r;)Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    move-result-object v5

    .line 277
    if-eqz v5, :cond_5

    .line 278
    iget-object v6, p2, Lcom/nianticproject/ingress/common/u/an;->a:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/r;->a()I

    move-result v7

    aget-object v6, v6, v7

    invoke-interface {v5}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Lcom/google/a/a/an;->a(Z)V

    .line 279
    iget-object v6, p2, Lcom/nianticproject/ingress/common/u/an;->a:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/r;->a()I

    move-result v7

    aget-object v6, v6, v7

    invoke-interface {v5}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;->getLevel()I

    move-result v7

    invoke-interface {v5}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;->getOwnerGuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v6, v7, v0, v5}, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->addLinkedResonator(Ljava/lang/String;ILcom/nianticproject/ingress/shared/r;Ljava/lang/String;)V

    .line 275
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 282
    :cond_5
    iget-object v5, p2, Lcom/nianticproject/ingress/common/u/an;->a:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/r;->a()I

    move-result v0

    aget-object v0, v5, v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5

    .line 285
    :cond_7
    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V
    .locals 19
    .parameter

    .prologue
    .line 64
    :try_start_0
    const-string/jumbo v2, "PortalPostProcessor.onGameBasket"

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 65
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->c()Lcom/nianticproject/ingress/shared/rpc/f;

    move-result-object v6

    .line 83
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v7

    .line 84
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v8

    .line 92
    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/f;->c()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 93
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/u/am;->b:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/common/u/an;

    .line 94
    if-eqz v2, :cond_0

    .line 97
    iget-object v4, v2, Lcom/nianticproject/ingress/common/u/an;->a:[Ljava/lang/String;

    array-length v5, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v9, v4, v2

    .line 98
    if-eqz v9, :cond_1

    .line 99
    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/f;->a()Ljava/util/Set;

    move-result-object v9

    .line 107
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v10

    .line 109
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/gameentity/f;

    .line 111
    const-class v3, Lcom/nianticproject/ingress/gameentity/components/portal/PortalV2;

    invoke-interface {v2, v3}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v3

    check-cast v3, Lcom/nianticproject/ingress/gameentity/components/portal/PortalV2;

    .line 112
    const-class v4, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorArray;

    invoke-interface {v2, v4}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v4

    check-cast v4, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorArray;

    .line 113
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 123
    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v12

    .line 124
    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/f;->getLastModifiedMs()J

    move-result-wide v13

    .line 125
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/u/am;->b:Ljava/util/Map;

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nianticproject/ingress/common/u/an;

    .line 126
    if-eqz v5, :cond_4

    iget-wide v15, v5, Lcom/nianticproject/ingress/common/u/an;->b:J

    cmp-long v5, v15, v13

    if-lez v5, :cond_4

    const/4 v5, 0x1

    .line 128
    :goto_2
    if-eqz v5, :cond_5

    .line 129
    invoke-interface {v10, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 152
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    :catchall_1
    move-exception v2

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v2

    .line 126
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 132
    :cond_5
    :try_start_3
    new-instance v15, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;

    invoke-direct {v15}, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;-><init>()V

    const/4 v5, 0x0

    :goto_3
    invoke-interface {v3}, Lcom/nianticproject/ingress/gameentity/components/portal/PortalV2;->maxModCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v5, v0, :cond_6

    invoke-interface {v3, v5}, Lcom/nianticproject/ingress/gameentity/components/portal/PortalV2;->getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->setLinkedMod(Lcom/nianticproject/ingress/shared/Mod;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    invoke-interface {v3}, Lcom/nianticproject/ingress/gameentity/components/portal/PortalV2;->getLinkedEdges()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nianticproject/ingress/shared/model/b;

    invoke-interface {v5}, Lcom/nianticproject/ingress/shared/model/b;->a()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v5}, Lcom/nianticproject/ingress/shared/model/b;->b()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v5}, Lcom/nianticproject/ingress/shared/model/b;->c()Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lcom/nianticproject/ingress/shared/model/c;->a:Lcom/nianticproject/ingress/shared/model/c;

    :goto_5
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1, v5}, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->addLinkedEdgeData(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/model/c;)V

    goto :goto_4

    :cond_7
    sget-object v5, Lcom/nianticproject/ingress/shared/model/c;->b:Lcom/nianticproject/ingress/shared/model/c;

    goto :goto_5

    :cond_8
    invoke-interface {v3}, Lcom/nianticproject/ingress/gameentity/components/portal/PortalV2;->getDescriptiveTextLabels()Ljava/lang/Iterable;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Lcom/nianticproject/ingress/gameentity/components/portal/PortalV2;->getDescriptiveTextLabels()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nianticproject/ingress/shared/m;

    invoke-interface {v3, v5}, Lcom/nianticproject/ingress/gameentity/components/portal/PortalV2;->getDescriptiveText(Lcom/nianticproject/ingress/shared/m;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v5, v0}, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->addOrUpdateDescriptiveText(Lcom/nianticproject/ingress/shared/m;Ljava/lang/String;)V

    goto :goto_6

    .line 133
    :cond_9
    const-class v3, Lcom/nianticproject/ingress/gameentity/components/portal/PortalV2;

    invoke-interface {v2, v3}, Lcom/nianticproject/ingress/gameentity/f;->remove(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/DynamicComponent;

    .line 134
    invoke-interface {v2, v15}, Lcom/nianticproject/ingress/gameentity/f;->add(Lcom/nianticproject/ingress/gameentity/DynamicComponent;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/u/am;->b:Ljava/util/Map;

    invoke-interface {v3, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/u/am;->b:Ljava/util/Map;

    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nianticproject/ingress/common/u/an;

    invoke-static {v7, v8, v3, v4, v15}, Lcom/nianticproject/ingress/common/u/am;->a(Ljava/util/Set;Ljava/util/Set;Lcom/nianticproject/ingress/common/u/an;Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorArray;Lcom/nianticproject/ingress/gameentity/components/SimplePortal;)V

    iput-wide v13, v3, Lcom/nianticproject/ingress/common/u/an;->b:J

    .line 138
    :goto_7
    const-class v3, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorArray;

    invoke-interface {v2, v3}, Lcom/nianticproject/ingress/gameentity/f;->remove(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/DynamicComponent;

    goto/16 :goto_1

    .line 136
    :cond_a
    new-instance v3, Lcom/nianticproject/ingress/common/u/an;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5}, Lcom/nianticproject/ingress/common/u/an;-><init>(Lcom/nianticproject/ingress/common/u/am;B)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/u/am;->b:Ljava/util/Map;

    invoke-interface {v5, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7, v8, v3, v4, v15}, Lcom/nianticproject/ingress/common/u/am;->a(Ljava/util/Set;Ljava/util/Set;Lcom/nianticproject/ingress/common/u/an;Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorArray;Lcom/nianticproject/ingress/gameentity/components/SimplePortal;)V

    iput-wide v13, v3, Lcom/nianticproject/ingress/common/u/an;->b:J

    goto :goto_7

    .line 144
    :cond_b
    invoke-interface {v9, v10}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 150
    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/f;->c()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 151
    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/f;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 152
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 155
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 288
    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/am;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 290
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
