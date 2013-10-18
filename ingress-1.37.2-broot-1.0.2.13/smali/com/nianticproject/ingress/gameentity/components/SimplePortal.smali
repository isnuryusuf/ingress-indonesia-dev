.class public final Lcom/nianticproject/ingress/gameentity/components/SimplePortal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/Portal;
.implements Lcom/nianticproject/ingress/shared/s;


# instance fields
.field private transient containingEntity:Lcom/nianticproject/ingress/gameentity/f;

.field private final descriptiveText:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/shared/m;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private transient dirty:Z

.field private final linkedEdges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/shared/PortalEdgeData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final linkedModArray:[Lcom/nianticproject/ingress/shared/SimpleMod;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final linkedResonatorGuids:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/shared/r;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final linkedResonatorOwnerGuids:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/shared/r;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final resonatorLevels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/shared/r;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/nianticproject/ingress/shared/r;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedResonatorGuids:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/nianticproject/ingress/shared/r;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedResonatorOwnerGuids:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/nianticproject/ingress/shared/r;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->resonatorLevels:Ljava/util/Map;

    .line 95
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedEdges:Ljava/util/Set;

    .line 96
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->maxModCount()I

    move-result v0

    new-array v0, v0, [Lcom/nianticproject/ingress/shared/SimpleMod;

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedModArray:[Lcom/nianticproject/ingress/shared/SimpleMod;

    .line 97
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->descriptiveText:Ljava/util/Map;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->dirty:Z

    .line 99
    return-void
.end method

.method private doRemove(Lcom/nianticproject/ingress/shared/r;)Lcom/nianticproject/ingress/shared/r;
    .locals 1
    .parameter

    .prologue
    .line 291
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedResonatorGuids:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedResonatorOwnerGuids:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->resonatorLevels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->dirty:Z

    .line 295
    return-object p1
.end method

.method private findOctantByResonatorGuid(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/r;
    .locals 3
    .parameter

    .prologue
    .line 299
    invoke-static {p0, p1}, Lcom/nianticproject/ingress/gameentity/components/k;->a(Lcom/nianticproject/ingress/gameentity/components/Portal;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/r;

    move-result-object v0

    .line 300
    if-nez v0, :cond_0

    .line 301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Portal does not have linked resonatorGuid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final addLinkedEdgeData(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/model/c;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedEdges:Ljava/util/Set;

    new-instance v1, Lcom/nianticproject/ingress/shared/PortalEdgeData;

    invoke-direct {v1, p1, p2, p3}, Lcom/nianticproject/ingress/shared/PortalEdgeData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/model/c;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->dirty:Z

    .line 260
    return-void
.end method

.method public final addLinkedResonator(Ljava/lang/String;ILcom/nianticproject/ingress/shared/r;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 144
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedResonatorGuids:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v4, "Portal (%s) octant \'%s\' must be empty."

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    if-nez v3, :cond_1

    const-string/jumbo v3, "no entity"

    :goto_1
    aput-object v3, v5, v2

    aput-object p3, v5, v1

    invoke-static {v0, v4, v5}, Lcom/google/a/a/an;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedResonatorGuids:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    const-string/jumbo v4, "Portal (%s) already has a resonator with guid \'%s\'."

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    if-nez v3, :cond_3

    const-string/jumbo v3, "no entity"

    :goto_3
    aput-object v3, v5, v2

    aput-object p1, v5, v1

    invoke-static {v0, v4, v5}, Lcom/google/a/a/an;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Resonator "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " has no owner"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedResonatorGuids:Ljava/util/Map;

    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedResonatorOwnerGuids:Ljava/util/Map;

    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->resonatorLevels:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iput-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->dirty:Z

    .line 157
    return-void

    :cond_0
    move v0, v2

    .line 144
    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v3}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move v0, v2

    .line 148
    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v3}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method public final addOrUpdateDescriptiveText(Lcom/nianticproject/ingress/shared/m;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 380
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->descriptiveText:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 381
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->descriptiveText:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iput-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->dirty:Z

    .line 392
    :cond_1
    :goto_0
    return-void

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->descriptiveText:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->descriptiveText:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iput-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->dirty:Z

    goto :goto_0

    .line 388
    :cond_3
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->descriptiveText:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iput-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->dirty:Z

    goto :goto_0
.end method

.method public final canTeamLinkMods(Lcom/nianticproject/ingress/shared/ai;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 219
    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    if-nez v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    invoke-static {v1}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/ai;

    move-result-object v1

    .line 223
    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getDescriptiveText(Lcom/nianticproject/ingress/shared/m;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 364
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->descriptiveText:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDescriptiveTextLabels()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/nianticproject/ingress/shared/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->descriptiveText:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 372
    const/4 v0, 0x0

    .line 374
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->descriptiveText:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public final getEntity()Lcom/nianticproject/ingress/gameentity/f;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method public final getEntityGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFreeSlots()Lcom/google/a/c/du;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/du",
            "<",
            "Lcom/nianticproject/ingress/shared/r;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    const-class v0, Lcom/nianticproject/ingress/shared/r;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedResonatorGuids:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    .line 125
    invoke-static {v0}, Lcom/google/a/c/du;->a(Ljava/util/Collection;)Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method public final getLevel()I
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->resonatorLevels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/gameentity/components/k;->a(Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public final getLevelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->getLevel()I

    move-result v0

    invoke-static {v0}, Lcom/nianticproject/ingress/gameentity/components/a;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLinkedEdges()Lcom/google/a/c/du;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/du",
            "<",
            "Lcom/nianticproject/ingress/shared/model/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedEdges:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/a/c/du;->a(Ljava/util/Collection;)Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getLinkedEdges()Ljava/util/Set;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->getLinkedEdges()Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method public final getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedModArray:[Lcom/nianticproject/ingress/shared/SimpleMod;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getLinkedResonatorGuids()Lcom/google/a/c/dh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dh",
            "<",
            "Lcom/nianticproject/ingress/shared/r;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedResonatorGuids:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/a/c/dh;->a(Ljava/util/Map;)Lcom/google/a/c/dh;

    move-result-object v0

    return-object v0
.end method

.method public final getLinkedResonatorLevels()Lcom/google/a/c/dh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dh",
            "<",
            "Lcom/nianticproject/ingress/shared/r;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->resonatorLevels:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/a/c/dh;->a(Ljava/util/Map;)Lcom/google/a/c/dh;

    move-result-object v0

    return-object v0
.end method

.method public final getOccupiedSlots()Lcom/google/a/c/du;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/du",
            "<",
            "Lcom/nianticproject/ingress/shared/r;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedResonatorGuids:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/google/a/c/du;->g()Lcom/google/a/c/du;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedResonatorGuids:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/du;->a(Ljava/util/Collection;)Lcom/google/a/c/du;

    move-result-object v0

    goto :goto_0
.end method

.method public final getOwnerIds()Lcom/google/a/c/du;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/du",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    invoke-static {}, Lcom/google/a/c/du;->h()Lcom/google/a/c/dv;

    move-result-object v1

    .line 310
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedResonatorOwnerGuids:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 311
    invoke-virtual {v1, v0}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    goto :goto_0

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedModArray:[Lcom/nianticproject/ingress/shared/SimpleMod;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 314
    if-eqz v4, :cond_1

    .line 315
    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/SimpleMod;->getInstallingUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    .line 313
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 318
    :cond_2
    invoke-virtual {v1}, Lcom/google/a/c/dv;->a()Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method public final getResonatorAtOctant(Lcom/nianticproject/ingress/shared/r;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedResonatorGuids:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getResonatorCount()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedResonatorGuids:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final isDirty()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->dirty:Z

    return v0
.end method

.method public final linkedModCount()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 208
    .line 209
    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedModArray:[Lcom/nianticproject/ingress/shared/SimpleMod;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 210
    if-eqz v4, :cond_0

    .line 211
    add-int/lit8 v0, v0, 0x1

    .line 209
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    :cond_1
    return v0
.end method

.method public final maxLinkRange()J
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->resonatorLevels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/nianticproject/ingress/gameentity/components/k;->a(Ljava/lang/Iterable;Lcom/nianticproject/ingress/gameentity/components/Modable;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final maxModCount()I
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x4

    return v0
.end method

.method public final removeLinkedEdgeData(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedEdges:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/PortalEdgeData;

    .line 265
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/PortalEdgeData;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedEdges:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->dirty:Z

    .line 271
    :cond_1
    return-void
.end method

.method public final removeLinkedMod(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 195
    if-ltz p1, :cond_1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 196
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedModArray:[Lcom/nianticproject/ingress/shared/SimpleMod;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Lcom/google/a/a/an;->a(Z)V

    .line 197
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedModArray:[Lcom/nianticproject/ingress/shared/SimpleMod;

    const/4 v2, 0x0

    aput-object v2, v0, p1

    .line 198
    iput-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->dirty:Z

    .line 199
    return-void

    :cond_1
    move v0, v2

    .line 195
    goto :goto_0
.end method

.method public final removeLinkedResonatorByGuid(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/r;
    .locals 1
    .parameter

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->findOctantByResonatorGuid(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/r;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->doRemove(Lcom/nianticproject/ingress/shared/r;)Lcom/nianticproject/ingress/shared/r;

    move-result-object v0

    return-object v0
.end method

.method public final resonatorCountForOwner(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 323
    invoke-static {p1}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    :goto_0
    return v0

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedResonatorOwnerGuids:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 332
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public final resonatorLevelsForOwner(Ljava/lang/String;)Lcom/google/a/c/ht;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/a/c/ht",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    invoke-static {p1}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    invoke-static {}, Lcom/google/a/c/cn;->f()Lcom/google/a/c/cn;

    move-result-object v0

    .line 346
    :cond_0
    return-object v0

    .line 340
    :cond_1
    invoke-static {}, Lcom/google/a/c/cn;->f()Lcom/google/a/c/cn;

    move-result-object v0

    .line 341
    invoke-static {}, Lcom/nianticproject/ingress/shared/r;->values()[Lcom/nianticproject/ingress/shared/r;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 342
    iget-object v5, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedResonatorOwnerGuids:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 343
    iget-object v5, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->resonatorLevels:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/a/c/ht;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final resonatorOwner(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 351
    if-nez p1, :cond_0

    move-object v0, v1

    .line 359
    :goto_0
    return-object v0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedResonatorGuids:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/r;

    .line 355
    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedResonatorGuids:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 356
    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedResonatorOwnerGuids:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 359
    goto :goto_0
.end method

.method public final setClean()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->dirty:Z

    .line 254
    return-void
.end method

.method public final setEntity(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 2
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-static {v0, p0, v1, p1}, Lcom/nianticproject/ingress/gameentity/e;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/a;Ljava/lang/Class;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    .line 234
    return-void
.end method

.method public final setLinkedMod(Lcom/nianticproject/ingress/shared/Mod;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 185
    if-ltz p2, :cond_0

    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedModArray:[Lcom/nianticproject/ingress/shared/SimpleMod;

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 188
    invoke-static {p1}, Lcom/nianticproject/ingress/shared/SimpleMod;->of(Lcom/nianticproject/ingress/shared/Mod;)Lcom/nianticproject/ingress/shared/SimpleMod;

    move-result-object v0

    .line 189
    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedModArray:[Lcom/nianticproject/ingress/shared/SimpleMod;

    aput-object v0, v2, p2

    .line 190
    iput-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->dirty:Z

    .line 191
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Resonators: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedResonatorGuids:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ResonatorOwners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedResonatorOwnerGuids:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Edges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedEdges:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Mods: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->dirty:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[dirty], "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedModArray:[Lcom/nianticproject/ingress/shared/SimpleMod;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final upgradeLinkedResonator(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/nianticproject/ingress/shared/r;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->findOctantByResonatorGuid(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/r;

    move-result-object v2

    .line 168
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->resonatorLevels:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 169
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->linkedResonatorOwnerGuids:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    if-le p3, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v3, "Can only upgrade to a greater level"

    invoke-static {v1, v3}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "The resonator "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " has no owner - this is not acceptable."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-direct {p0, v2}, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->doRemove(Lcom/nianticproject/ingress/shared/r;)Lcom/nianticproject/ingress/shared/r;

    .line 174
    invoke-virtual {p0, p2, p3, v2, p4}, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;->addLinkedResonator(Ljava/lang/String;ILcom/nianticproject/ingress/shared/r;Ljava/lang/String;)V

    .line 175
    return-object v2

    .line 170
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
