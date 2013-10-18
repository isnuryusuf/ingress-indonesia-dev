.class public final Lcom/nianticproject/ingress/gameentity/components/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/k;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/k;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/g;)F
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-interface {p1, p0}, Lcom/nianticproject/ingress/gameentity/g;->getGameEntity(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    .line 159
    invoke-static {v0, p1}, Lcom/nianticproject/ingress/gameentity/components/k;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/g;)Lcom/google/a/a/ak;

    move-result-object v1

    iget-object v0, v1, Lcom/google/a/a/ak;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v1, Lcom/google/a/a/ak;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    int-to-float v1, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0
.end method

.method public static a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/shared/ai;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/ai;

    move-result-object v0

    .line 110
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->h()Lcom/nianticproject/ingress/knobs/XmCostKnobs;

    move-result-object v1

    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLevel()I

    move-result v2

    invoke-static {v1, v0, v2, p1}, Lcom/nianticproject/ingress/gameentity/components/portal/a;->a(Lcom/nianticproject/ingress/knobs/XmCostKnobs;Lcom/nianticproject/ingress/shared/ai;ILcom/nianticproject/ingress/shared/ai;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/Iterable;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {p0}, Lcom/nianticproject/ingress/gameentity/components/portal/a;->a(Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public static a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-static {p0, p1}, Lcom/nianticproject/ingress/gameentity/components/portal/a;->a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/lang/Iterable;Lcom/nianticproject/ingress/gameentity/components/Modable;)J
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/nianticproject/ingress/gameentity/components/Modable;",
            ")J"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->j()Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;

    move-result-object v0

    .line 61
    invoke-static {p0, p1, v0}, Lcom/nianticproject/ingress/gameentity/components/portal/a;->a(Ljava/lang/Iterable;Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/g;)Lcom/google/a/a/ak;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/gameentity/f;",
            "Lcom/nianticproject/ingress/gameentity/g;",
            ")",
            "Lcom/google/a/a/ak",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 177
    if-eqz p0, :cond_1

    .line 178
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 179
    if-eqz v0, :cond_1

    .line 183
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedResonatorGuids()Lcom/google/a/c/dh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dh;->d_()Lcom/google/a/c/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/ct;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    move v3, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/g;->getGameEntity(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    .line 185
    if-eqz v1, :cond_2

    .line 186
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    .line 187
    const-class v5, Lcom/nianticproject/ingress/gameentity/components/Energy;

    invoke-interface {v1, v5}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/Energy;

    .line 188
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 189
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Resonator;->getEnergyCapacity()I

    move-result v0

    add-int/2addr v3, v0

    .line 190
    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Energy;->getTotal()I

    move-result v0

    add-int/2addr v2, v0

    move v0, v2

    move v1, v3

    :goto_1
    move v2, v0

    move v3, v1

    .line 193
    goto :goto_0

    .line 195
    :cond_0
    new-instance v0, Lcom/google/a/a/ak;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    :goto_2
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/a/a/ak;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move v0, v2

    move v1, v3

    goto :goto_1
.end method

.method public static a(Lcom/nianticproject/ingress/gameentity/components/Portal;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/r;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedResonatorGuids()Lcom/google/a/c/dh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dh;->f()Lcom/google/a/c/du;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/du;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/r;

    .line 74
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/nianticproject/ingress/gameentity/g;Lcom/nianticproject/ingress/gameentity/components/Portal;)Ljava/util/Map;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/gameentity/g;",
            "Lcom/nianticproject/ingress/gameentity/components/Portal;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/shared/r;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    :try_start_0
    const-string/jumbo v0, "Portals.loadLinkedResonatorGameEntities"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 257
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v2

    .line 258
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedResonatorGuids()Lcom/google/a/c/dh;

    move-result-object v0

    .line 259
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntityGuid()Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 261
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 262
    invoke-static {v1}, Lcom/nianticproject/ingress/common/h/c;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 263
    invoke-interface {p0, v1}, Lcom/nianticproject/ingress/gameentity/g;->getGameEntity(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    .line 266
    if-nez v1, :cond_1

    .line 267
    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/k;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v5, "Trying to look up resonator (%s) for portal (%s) but unable to locate it in the cache."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v3, v6, v0

    invoke-virtual {v1, v5, v6}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 271
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 276
    :cond_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v2
.end method

.method public static b(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-static {p0, p1}, Lcom/nianticproject/ingress/gameentity/components/portal/a;->b(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/g;)[F
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0x8

    .line 210
    new-array v4, v6, [F

    move v0, v1

    .line 212
    :goto_0
    if-ge v0, v6, :cond_0

    .line 213
    const/4 v2, 0x0

    aput v2, v4, v0

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    if-eqz p0, :cond_1

    .line 217
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 218
    if-eqz v0, :cond_1

    .line 220
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedResonatorGuids()Lcom/google/a/c/dh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dh;->d_()Lcom/google/a/c/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/ct;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/g;->getGameEntity(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    .line 222
    if-eqz v1, :cond_3

    .line 223
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    .line 224
    const-class v3, Lcom/nianticproject/ingress/gameentity/components/Energy;

    invoke-interface {v1, v3}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/Energy;

    .line 225
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 226
    add-int/lit8 v3, v2, 0x1

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Energy;->getTotal()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Resonator;->getEnergyCapacity()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    aput v0, v4, v2

    .line 227
    if-le v3, v6, :cond_2

    .line 229
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/k;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Encounted more than 8 resonators in a portal"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;)V

    .line 239
    :cond_1
    invoke-static {v4}, Ljava/util/Arrays;->sort([F)V

    .line 241
    return-object v4

    :cond_2
    move v0, v3

    :goto_2
    move v2, v0

    .line 235
    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method
