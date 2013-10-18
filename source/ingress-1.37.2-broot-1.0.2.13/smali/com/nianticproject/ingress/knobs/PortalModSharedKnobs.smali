.class public Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/knobs/g;


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lcom/google/a/c/du;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/du",
            "<",
            "Lcom/nianticproject/ingress/gameentity/components/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;


# instance fields
.field private final diminishingValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/gameentity/components/m;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final multiForceAmpDiminishingValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final multiLinkAmpDiminishingValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final multiTurretFreqDiminishingValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x1f4

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x4e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x55f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x5dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->a:Ljava/util/List;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x4e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x55f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x5dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->b:Ljava/util/List;

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x4e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x55f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x5dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->c:Ljava/util/List;

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->d:Ljava/util/List;

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->e:Ljava/util/List;

    .line 66
    invoke-static {}, Lcom/google/a/c/du;->h()Lcom/google/a/c/dv;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/m;->d:Lcom/nianticproject/ingress/gameentity/components/m;

    invoke-virtual {v0, v1}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/m;->i:Lcom/nianticproject/ingress/gameentity/components/m;

    invoke-virtual {v0, v1}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/m;->k:Lcom/nianticproject/ingress/gameentity/components/m;

    invoke-virtual {v0, v1}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/m;->g:Lcom/nianticproject/ingress/gameentity/components/m;

    invoke-virtual {v0, v1}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/m;->h:Lcom/nianticproject/ingress/gameentity/components/m;

    invoke-virtual {v0, v1}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dv;->a()Lcom/google/a/c/du;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->f:Lcom/google/a/c/du;

    .line 76
    new-instance v0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->g:Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->diminishingValues:Ljava/util/Map;

    .line 116
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->diminishingValues:Ljava/util/Map;

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/m;->d:Lcom/nianticproject/ingress/gameentity/components/m;

    sget-object v2, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->diminishingValues:Ljava/util/Map;

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/m;->i:Lcom/nianticproject/ingress/gameentity/components/m;

    sget-object v2, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->b:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->diminishingValues:Ljava/util/Map;

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/m;->k:Lcom/nianticproject/ingress/gameentity/components/m;

    sget-object v2, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->c:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->diminishingValues:Ljava/util/Map;

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/m;->h:Lcom/nianticproject/ingress/gameentity/components/m;

    sget-object v2, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->e:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->diminishingValues:Ljava/util/Map;

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/m;->g:Lcom/nianticproject/ingress/gameentity/components/m;

    sget-object v2, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->d:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->diminishingValues:Ljava/util/Map;

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/m;->d:Lcom/nianticproject/ingress/gameentity/components/m;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->multiLinkAmpDiminishingValues:Ljava/util/List;

    .line 131
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->diminishingValues:Ljava/util/Map;

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/m;->i:Lcom/nianticproject/ingress/gameentity/components/m;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->multiForceAmpDiminishingValues:Ljava/util/List;

    .line 132
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->diminishingValues:Ljava/util/Map;

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/m;->k:Lcom/nianticproject/ingress/gameentity/components/m;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->multiTurretFreqDiminishingValues:Ljava/util/List;

    .line 134
    invoke-direct {p0}, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->a()V

    .line 135
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 155
    sget-object v0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->f:Lcom/google/a/c/du;

    invoke-virtual {v0}, Lcom/google/a/c/du;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/m;

    .line 156
    iget-object v4, p0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->diminishingValues:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->diminishingValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/m;

    .line 162
    iget-object v1, p0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->diminishingValues:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 163
    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x4

    if-ne v1, v5, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/a/a/an;->b(Z)V

    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 167
    if-ltz v0, :cond_3

    move v0, v2

    :goto_3
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    goto :goto_2

    :cond_2
    move v1, v3

    .line 164
    goto :goto_1

    :cond_3
    move v0, v3

    .line 167
    goto :goto_3

    .line 170
    :cond_4
    return-void
.end method


# virtual methods
.method public final a(ILcom/nianticproject/ingress/gameentity/components/m;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    if-lez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 139
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->diminishingValues:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 140
    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gt p1, v3, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    .line 144
    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 138
    goto :goto_0

    :cond_1
    move v1, v2

    .line 141
    goto :goto_1
.end method
