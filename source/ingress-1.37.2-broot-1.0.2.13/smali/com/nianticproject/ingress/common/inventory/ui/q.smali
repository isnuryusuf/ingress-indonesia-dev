.class public final Lcom/nianticproject/ingress/common/inventory/ui/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/nianticproject/ingress/common/inventory/ui/t;

.field public static final b:Lcom/nianticproject/ingress/common/inventory/ui/s;

.field private static final c:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final d:Lcom/nianticproject/ingress/shared/af;

.field private e:Lcom/nianticproject/ingress/gameentity/f;

.field private final f:Lcom/nianticproject/ingress/gameentity/components/d;

.field private final g:Lcom/nianticproject/ingress/gameentity/components/l;

.field private final h:D

.field private i:J

.field private j:J

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/inventory/ui/q;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/inventory/ui/q;->c:Lcom/nianticproject/ingress/common/w/aa;

    .line 73
    new-instance v0, Lcom/nianticproject/ingress/common/inventory/ui/t;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/inventory/ui/t;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/inventory/ui/q;->a:Lcom/nianticproject/ingress/common/inventory/ui/t;

    .line 75
    new-instance v0, Lcom/nianticproject/ingress/common/inventory/ui/s;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/inventory/ui/s;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/inventory/ui/q;->b:Lcom/nianticproject/ingress/common/inventory/ui/s;

    return-void
.end method

.method private constructor <init>(DLcom/nianticproject/ingress/shared/af;Lcom/nianticproject/ingress/gameentity/f;J)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput-object p3, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->d:Lcom/nianticproject/ingress/shared/af;

    .line 357
    iput-object p4, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->e:Lcom/nianticproject/ingress/gameentity/f;

    .line 358
    const/4 v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->k:I

    .line 359
    iput-wide p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->h:D

    .line 362
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->e:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resource;

    .line 363
    instance-of v1, v0, Lcom/nianticproject/ingress/gameentity/components/d;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/d;

    :goto_0
    iput-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->f:Lcom/nianticproject/ingress/gameentity/components/d;

    .line 364
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getRarity()Lcom/nianticproject/ingress/gameentity/components/l;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->g:Lcom/nianticproject/ingress/gameentity/components/l;

    .line 365
    iput-wide p5, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->i:J

    .line 366
    return-void

    .line 363
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/nianticproject/ingress/shared/af;Lcom/nianticproject/ingress/gameentity/f;J)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 461
    const-wide/16 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/inventory/ui/q;-><init>(DLcom/nianticproject/ingress/shared/af;Lcom/nianticproject/ingress/gameentity/f;J)V

    .line 462
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/inventory/ui/q;Lcom/nianticproject/ingress/common/inventory/ui/q;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->i:J

    iget-wide v2, p1, Lcom/nianticproject/ingress/common/inventory/ui/q;->i:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private static a(JJI)J
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 448
    shl-long v3, v5, p4

    sub-long/2addr v3, v5

    .line 450
    const-wide/16 v5, -0x1

    xor-long/2addr v5, v3

    and-long/2addr v5, p2

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 452
    const/16 v0, 0x3f

    if-gt p4, v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    .line 454
    shr-long v0, p0, p4

    and-long v2, p2, v3

    rsub-int/lit8 v4, p4, 0x3f

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    move v0, v2

    .line 450
    goto :goto_0

    :cond_1
    move v1, v2

    .line 452
    goto :goto_1
.end method

.method private static a(Lcom/nianticproject/ingress/shared/af;J)J
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 405
    const-wide/16 v0, 0x0

    const/16 v2, 0x20

    invoke-static {v0, v1, p1, p2, v2}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(JJI)J

    move-result-wide v0

    .line 406
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/af;->c()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(JJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/nianticproject/ingress/common/model/k;Ljava/util/Collection;)Ljava/util/List;
    .locals 14
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/model/k;",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/inventory/ui/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    const-string/jumbo v0, "IndistinguishableItems.fromItemsByPlayerInfo"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 123
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/a/c/hc;->a(I)Ljava/util/HashMap;

    move-result-object v8

    .line 128
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/a/c/hc;->a(I)Ljava/util/HashMap;

    move-result-object v9

    .line 132
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/a/c/hc;->a(I)Ljava/util/HashMap;

    move-result-object v10

    .line 136
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ad;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    move-object v7, v0

    .line 149
    :goto_0
    :try_start_1
    const-string/jumbo v0, "Separate"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 150
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nianticproject/ingress/gameentity/f;

    .line 151
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-interface {v4, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resource;

    .line 152
    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v3

    .line 154
    sget-object v1, Lcom/nianticproject/ingress/common/inventory/ui/r;->a:[I

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/af;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 172
    invoke-static {v10, v4, v0, v3}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(Ljava/util/HashMap;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/components/Resource;Lcom/nianticproject/ingress/shared/af;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 177
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 207
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 136
    :cond_1
    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_0

    .line 156
    :pswitch_1
    :try_start_3
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/StoryItem;

    invoke-interface {v4, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/StoryItem;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/StoryItem;->getPrimaryUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/inventory/ui/q;

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/StoryItem;->getReleaseDate()J

    move-result-wide v0

    sub-long v0, v5, v0

    const-wide/16 v5, 0x0

    const-wide v12, 0xffffffffffffffL

    and-long/2addr v0, v12

    const/16 v12, 0x38

    invoke-static {v5, v6, v0, v1, v12}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(JJI)J

    move-result-wide v0

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/af;->c()I

    move-result v5

    int-to-long v5, v5

    const/16 v12, 0x8

    invoke-static {v0, v1, v5, v6, v12}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(JJI)J

    move-result-wide v0

    new-instance v5, Lcom/nianticproject/ingress/common/inventory/ui/q;

    invoke-direct {v5, v3, v4, v0, v1}, Lcom/nianticproject/ingress/common/inventory/ui/q;-><init>(Lcom/nianticproject/ingress/shared/af;Lcom/nianticproject/ingress/gameentity/f;J)V

    invoke-interface {v9, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-direct {v1, v4}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(Lcom/nianticproject/ingress/gameentity/f;)V

    goto :goto_1

    .line 159
    :pswitch_2
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    invoke-interface {v4, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;->getPortalGuid()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/inventory/ui/q;

    if-nez v1, :cond_4

    if-eqz v7, :cond_3

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;->getPortalLocation()Lcom/google/a/d/u;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;)D

    move-result-wide v1

    :goto_2
    new-instance v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    const-wide/16 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/inventory/ui/q;-><init>(DLcom/nianticproject/ingress/shared/af;Lcom/nianticproject/ingress/gameentity/f;J)V

    invoke-interface {v8, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3
    const-wide/16 v1, 0x0

    goto :goto_2

    :cond_4
    invoke-direct {v1, v4}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(Lcom/nianticproject/ingress/gameentity/f;)V

    goto/16 :goto_1

    .line 163
    :pswitch_3
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/EmpWeapon;

    invoke-interface {v4, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v10, v4, v0, v3}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(Ljava/util/HashMap;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/components/Resource;Lcom/nianticproject/ingress/shared/af;)V

    goto/16 :goto_1

    :cond_5
    sget-object v0, Lcom/nianticproject/ingress/common/inventory/ui/q;->c:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Resource EMP_BURSTER or ULTRA_STRIKE guid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " missing EmpWeapon component"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 166
    :pswitch_4
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/FlipCard;

    invoke-interface {v4, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/FlipCard;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/FlipCard;->getFlipCardType()Lcom/nianticproject/ingress/gameentity/components/c;

    move-result-object v0

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/nianticproject/ingress/gameentity/components/c;->a()I

    move-result v0

    int-to-long v0, v0

    :goto_3
    const/16 v2, 0x8

    invoke-static {v5, v6, v0, v1, v2}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(JJI)J

    move-result-wide v0

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/af;->c()I

    move-result v2

    int-to-long v5, v2

    const/16 v2, 0x8

    invoke-static {v0, v1, v5, v6, v2}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(JJI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    if-nez v0, :cond_7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v5, Lcom/nianticproject/ingress/common/inventory/ui/q;

    invoke-direct {v5, v3, v4, v1, v2}, Lcom/nianticproject/ingress/common/inventory/ui/q;-><init>(Lcom/nianticproject/ingress/shared/af;Lcom/nianticproject/ingress/gameentity/f;J)V

    invoke-virtual {v10, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    const-wide/16 v0, 0x0

    goto :goto_3

    :cond_7
    invoke-direct {v0, v4}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(Lcom/nianticproject/ingress/gameentity/f;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 177
    :cond_8
    :try_start_4
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 182
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/eq;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    .line 183
    sget-object v0, Lcom/nianticproject/ingress/common/inventory/ui/q;->b:Lcom/nianticproject/ingress/common/inventory/ui/s;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 184
    const/4 v0, 0x1

    .line 185
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    .line 186
    add-int/lit8 v2, v1, 0x1

    int-to-long v5, v1

    iput-wide v5, v0, Lcom/nianticproject/ingress/common/inventory/ui/q;->j:J

    .line 187
    iget-object v1, v0, Lcom/nianticproject/ingress/common/inventory/ui/q;->d:Lcom/nianticproject/ingress/shared/af;

    iget-wide v5, v0, Lcom/nianticproject/ingress/common/inventory/ui/q;->j:J

    invoke-static {v1, v5, v6}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(Lcom/nianticproject/ingress/shared/af;J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/nianticproject/ingress/common/inventory/ui/q;->i:J

    move v1, v2

    goto :goto_4

    .line 191
    :cond_9
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 192
    invoke-static {v0}, Lcom/google/a/c/eq;->b(I)Ljava/util/ArrayList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 194
    :try_start_5
    const-string/jumbo v1, "Concatenate"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 196
    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 197
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 199
    :try_start_6
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 203
    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->d(Ljava/util/List;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 207
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    .line 199
    :catchall_2
    move-exception v0

    :try_start_7
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/inventory/ui/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(Lcom/nianticproject/ingress/common/model/k;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 6
    .parameter

    .prologue
    .line 375
    iget v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->k:I

    .line 376
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0

    iget v4, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->k:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 377
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->e:Lcom/nianticproject/ingress/gameentity/f;

    .line 379
    :cond_0
    return-void
.end method

.method private static a(Ljava/util/HashMap;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/components/Resource;Lcom/nianticproject/ingress/shared/af;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/nianticproject/ingress/common/inventory/ui/q;",
            ">;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            "Lcom/nianticproject/ingress/gameentity/components/Resource;",
            "Lcom/nianticproject/ingress/shared/af;",
            ")V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/16 v9, 0x8

    .line 269
    instance-of v0, p2, Lcom/nianticproject/ingress/gameentity/components/d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/d;

    .line 270
    :goto_0
    invoke-interface {p2}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getRarity()Lcom/nianticproject/ingress/gameentity/components/l;

    move-result-object v6

    invoke-virtual {p3}, Lcom/nianticproject/ingress/shared/af;->c()I

    move-result v1

    int-to-long v7, v1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/d;->getLevel()I

    move-result v0

    int-to-long v0, v0

    move-wide v4, v0

    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/nianticproject/ingress/gameentity/components/l;->b()I

    move-result v0

    int-to-long v0, v0

    :goto_2
    invoke-static {v2, v3, v0, v1, v9}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(JJI)J

    move-result-wide v0

    invoke-static {v0, v1, v4, v5, v9}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(JJI)J

    move-result-wide v0

    invoke-static {v0, v1, v7, v8, v9}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(JJI)J

    move-result-wide v1

    .line 271
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    .line 272
    if-nez v0, :cond_3

    .line 273
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/nianticproject/ingress/common/inventory/ui/q;

    invoke-direct {v3, p3, p1, v1, v2}, Lcom/nianticproject/ingress/common/inventory/ui/q;-><init>(Lcom/nianticproject/ingress/shared/af;Lcom/nianticproject/ingress/gameentity/f;J)V

    invoke-virtual {p0, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :goto_3
    return-void

    .line 269
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-wide v4, v2

    .line 270
    goto :goto_1

    :cond_2
    move-wide v0, v2

    goto :goto_2

    .line 275
    :cond_3
    invoke-direct {v0, p1}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(Lcom/nianticproject/ingress/gameentity/f;)V

    goto :goto_3
.end method

.method public static a(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/inventory/ui/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 226
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    .line 227
    iget-object v1, v0, Lcom/nianticproject/ingress/common/inventory/ui/q;->d:Lcom/nianticproject/ingress/shared/af;

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->i:Lcom/nianticproject/ingress/shared/af;

    if-ne v1, v2, :cond_0

    .line 228
    iget-object v6, v0, Lcom/nianticproject/ingress/common/inventory/ui/q;->d:Lcom/nianticproject/ingress/shared/af;

    iget-wide v1, v0, Lcom/nianticproject/ingress/common/inventory/ui/q;->h:D

    const-wide/16 v7, 0x0

    cmpg-double v7, v1, v7

    if-gez v7, :cond_1

    move-wide v1, v3

    :goto_1
    const/16 v7, 0x20

    invoke-static {v3, v4, v1, v2, v7}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(JJI)J

    move-result-wide v1

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/af;->c()I

    move-result v6

    int-to-long v6, v6

    const/16 v8, 0x8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(JJI)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/nianticproject/ingress/common/inventory/ui/q;->i:J

    goto :goto_0

    :cond_1
    double-to-long v1, v1

    goto :goto_1

    .line 233
    :cond_2
    invoke-static {p0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->d(Ljava/util/List;)V

    .line 234
    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/inventory/ui/q;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->e:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method public static b(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/inventory/ui/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    .line 242
    iget-object v2, v0, Lcom/nianticproject/ingress/common/inventory/ui/q;->d:Lcom/nianticproject/ingress/shared/af;

    sget-object v3, Lcom/nianticproject/ingress/shared/af;->i:Lcom/nianticproject/ingress/shared/af;

    if-ne v2, v3, :cond_0

    .line 243
    iget-object v2, v0, Lcom/nianticproject/ingress/common/inventory/ui/q;->d:Lcom/nianticproject/ingress/shared/af;

    iget-wide v3, v0, Lcom/nianticproject/ingress/common/inventory/ui/q;->j:J

    invoke-static {v2, v3, v4}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(Lcom/nianticproject/ingress/shared/af;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/nianticproject/ingress/common/inventory/ui/q;->i:J

    goto :goto_0

    .line 248
    :cond_1
    invoke-static {p0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->d(Ljava/util/List;)V

    .line 249
    return-void
.end method

.method public static c(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/inventory/ui/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    .line 257
    iget-object v0, v0, Lcom/nianticproject/ingress/common/inventory/ui/q;->d:Lcom/nianticproject/ingress/shared/af;

    sget-object v0, Lcom/nianticproject/ingress/shared/af;->g:Lcom/nianticproject/ingress/shared/af;

    goto :goto_0

    .line 263
    :cond_0
    invoke-static {p0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->d(Ljava/util/List;)V

    .line 264
    return-void
.end method

.method private static d(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/inventory/ui/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 587
    :try_start_0
    const-string/jumbo v0, "Sort"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 588
    sget-object v0, Lcom/nianticproject/ingress/common/inventory/ui/q;->a:Lcom/nianticproject/ingress/common/inventory/ui/t;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 591
    return-void

    .line 590
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/af;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->d:Lcom/nianticproject/ingress/shared/af;

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/inventory/ui/q;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 546
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->d:Lcom/nianticproject/ingress/shared/af;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/inventory/ui/q;->d:Lcom/nianticproject/ingress/shared/af;

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 581
    :goto_0
    return v0

    .line 553
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/inventory/ui/r;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->d:Lcom/nianticproject/ingress/shared/af;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/af;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 581
    :pswitch_0
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->i:J

    iget-wide v4, p1, Lcom/nianticproject/ingress/common/inventory/ui/q;->i:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    .line 556
    :pswitch_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->e:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/StoryItem;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/StoryItem;

    .line 557
    iget-object v1, p1, Lcom/nianticproject/ingress/common/inventory/ui/q;->e:Lcom/nianticproject/ingress/gameentity/f;

    const-class v4, Lcom/nianticproject/ingress/gameentity/components/StoryItem;

    invoke-interface {v1, v4}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/StoryItem;

    .line 558
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/StoryItem;->getPrimaryUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/StoryItem;->getPrimaryUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    .line 560
    goto :goto_0

    :cond_1
    move v0, v2

    .line 562
    goto :goto_0

    .line 566
    :pswitch_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->e:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    .line 567
    iget-object v1, p1, Lcom/nianticproject/ingress/common/inventory/ui/q;->e:Lcom/nianticproject/ingress/gameentity/f;

    const-class v4, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    invoke-interface {v1, v4}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    .line 568
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;->getPortalGuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;->getPortalGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    .line 570
    goto :goto_0

    :cond_2
    move v0, v2

    .line 572
    goto :goto_0

    :pswitch_3
    move v0, v2

    .line 575
    goto :goto_0

    :cond_3
    move v0, v2

    .line 581
    goto :goto_0

    .line 553
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->f:Lcom/nianticproject/ingress/gameentity/components/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->g:Lcom/nianticproject/ingress/gameentity/components/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Lcom/nianticproject/ingress/gameentity/components/l;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->g:Lcom/nianticproject/ingress/gameentity/components/l;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->f:Lcom/nianticproject/ingress/gameentity/components/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->f:Lcom/nianticproject/ingress/gameentity/components/d;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/d;->getLevel()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->f:Lcom/nianticproject/ingress/gameentity/components/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->f:Lcom/nianticproject/ingress/gameentity/components/d;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/d;->getLevelName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->k:I

    return v0
.end method

.method public final h()Lcom/nianticproject/ingress/gameentity/f;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->e:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->e:Lcom/nianticproject/ingress/gameentity/f;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/a;->a(Lcom/nianticproject/ingress/gameentity/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->f()Ljava/lang/String;

    move-result-object v0

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 531
    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->e:Lcom/nianticproject/ingress/gameentity/f;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/a;->a(Lcom/nianticproject/ingress/gameentity/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    iget v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/q;->k:I

    .line 536
    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 537
    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 539
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
