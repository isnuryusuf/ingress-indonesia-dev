.class public final Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/portal/PortalV2;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->linkedEdges:Ljava/util/Set;

    .line 71
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->maxModCount()I

    move-result v0

    new-array v0, v0, [Lcom/nianticproject/ingress/shared/SimpleMod;

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->linkedModArray:[Lcom/nianticproject/ingress/shared/SimpleMod;

    .line 72
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->descriptiveText:Ljava/util/Map;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->dirty:Z

    .line 74
    return-void
.end method


# virtual methods
.method public final addLinkedEdgeData(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/model/c;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->linkedEdges:Ljava/util/Set;

    new-instance v1, Lcom/nianticproject/ingress/shared/PortalEdgeData;

    invoke-direct {v1, p1, p2, p3}, Lcom/nianticproject/ingress/shared/PortalEdgeData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/model/c;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->dirty:Z

    .line 167
    return-void
.end method

.method public final addOrUpdateDescriptiveText(Lcom/nianticproject/ingress/shared/m;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 233
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->descriptiveText:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->descriptiveText:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iput-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->dirty:Z

    .line 245
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->descriptiveText:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->descriptiveText:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iput-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->dirty:Z

    goto :goto_0

    .line 241
    :cond_3
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->descriptiveText:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iput-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->dirty:Z

    goto :goto_0
.end method

.method public final canTeamLinkMods(Lcom/nianticproject/ingress/shared/ai;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    if-nez v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    invoke-static {v1}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/ai;

    move-result-object v1

    .line 135
    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getDescriptiveText(Lcom/nianticproject/ingress/shared/m;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->descriptiveText:Ljava/util/Map;

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
    .line 224
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->descriptiveText:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 227
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->descriptiveText:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public final getEntity()Lcom/nianticproject/ingress/gameentity/f;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method public final getEntityGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLevel()I
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/gameentity/components/portal/a;->a(Lcom/nianticproject/ingress/gameentity/f;)I

    move-result v0

    return v0
.end method

.method public final getLevelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->getLevel()I

    move-result v0

    invoke-static {v0}, Lcom/nianticproject/ingress/gameentity/components/a;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLinkedEdgeGuids()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 84
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->linkedEdges:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/PortalEdgeData;

    .line 85
    invoke-interface {v0}, Lcom/nianticproject/ingress/shared/model/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_0
    return-object v1
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
    .line 78
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->linkedEdges:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/a/c/du;->a(Ljava/util/Collection;)Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getLinkedEdges()Ljava/util/Set;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->getLinkedEdges()Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method public final getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->linkedModArray:[Lcom/nianticproject/ingress/shared/SimpleMod;

    aget-object v0, v0, p1

    return-object v0
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
    .line 203
    invoke-static {}, Lcom/google/a/c/du;->h()Lcom/google/a/c/dv;

    move-result-object v1

    .line 204
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v2, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorArray;

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorArray;

    invoke-static {}, Lcom/google/a/c/du;->h()Lcom/google/a/c/dv;

    move-result-object v2

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;->getOwnerGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/a/c/dv;->a()Lcom/google/a/c/du;

    move-result-object v0

    .line 206
    invoke-virtual {v1, v0}, Lcom/google/a/c/dv;->b(Ljava/lang/Iterable;)Lcom/google/a/c/dv;

    .line 207
    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->linkedModArray:[Lcom/nianticproject/ingress/shared/SimpleMod;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 208
    if-eqz v4, :cond_1

    .line 209
    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/SimpleMod;->getInstallingUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    .line 207
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 212
    :cond_2
    invoke-virtual {v1}, Lcom/google/a/c/dv;->a()Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method public final isDirty()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->dirty:Z

    return v0
.end method

.method public final linkedModCount()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 120
    .line 121
    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->linkedModArray:[Lcom/nianticproject/ingress/shared/SimpleMod;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 122
    if-eqz v4, :cond_0

    .line 123
    add-int/lit8 v0, v0, 0x1

    .line 121
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_1
    return v0
.end method

.method public final maxModCount()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x4

    return v0
.end method

.method public final removeLinkedEdgeData(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 171
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->linkedEdges:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/PortalEdgeData;

    .line 172
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/PortalEdgeData;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->linkedEdges:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 174
    iput-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->dirty:Z

    move v0, v1

    .line 178
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final removeLinkedMod(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 107
    if-ltz p1, :cond_1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 108
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->linkedModArray:[Lcom/nianticproject/ingress/shared/SimpleMod;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Lcom/google/a/a/an;->a(Z)V

    .line 109
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->linkedModArray:[Lcom/nianticproject/ingress/shared/SimpleMod;

    const/4 v2, 0x0

    aput-object v2, v0, p1

    .line 110
    iput-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->dirty:Z

    .line 111
    return-void

    :cond_1
    move v0, v2

    .line 107
    goto :goto_0
.end method

.method public final setClean()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->dirty:Z

    .line 161
    return-void
.end method

.method public final setEntity(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/portal/PortalV2;

    invoke-static {v0, p0, v1, p1}, Lcom/nianticproject/ingress/gameentity/e;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/a;Ljava/lang/Class;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    .line 141
    return-void
.end method

.method public final setLinkedMod(Lcom/nianticproject/ingress/shared/Mod;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 97
    if-ltz p2, :cond_1

    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 98
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->linkedModArray:[Lcom/nianticproject/ingress/shared/SimpleMod;

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Lcom/google/a/a/an;->a(Z)V

    .line 100
    invoke-static {p1}, Lcom/nianticproject/ingress/shared/SimpleMod;->of(Lcom/nianticproject/ingress/shared/Mod;)Lcom/nianticproject/ingress/shared/SimpleMod;

    move-result-object v0

    .line 101
    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->linkedModArray:[Lcom/nianticproject/ingress/shared/SimpleMod;

    aput-object v0, v2, p2

    .line 102
    iput-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->dirty:Z

    .line 103
    return-void

    :cond_1
    move v0, v2

    .line 97
    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/ag;->a(Ljava/lang/Class;)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "descriptiveText"

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->descriptiveText:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "linkedEdges"

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->linkedEdges:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "linkedModArray"

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->linkedModArray:[Lcom/nianticproject/ingress/shared/SimpleMod;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "dirty"

    iget-boolean v2, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePortalV2;->dirty:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Z)Lcom/google/a/a/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
