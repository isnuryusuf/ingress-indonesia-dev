.class public final Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/CachingRegionIndex;
.implements Lcom/nianticproject/ingress/gameentity/components/Edge;


# instance fields
.field private transient containingEntity:Lcom/nianticproject/ingress/gameentity/f;

.field private transient coveringCache:Lcom/google/a/c/dc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dc",
            "<",
            "Lcom/google/a/d/j;",
            ">;"
        }
    .end annotation
.end field

.field private final destinationPortalGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final destinationPortalLocation:Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final originPortalGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final originPortalLocation:Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->originPortalGuid:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->originPortalLocation:Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    .line 113
    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->destinationPortalGuid:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->destinationPortalLocation:Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/components/LocationE6;Lcom/nianticproject/ingress/gameentity/components/LocationE6;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Portal guids cannot be equal guid=%s"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 52
    iput-object p1, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->originPortalGuid:Ljava/lang/String;

    .line 53
    invoke-static {p3}, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->copyOf(Lcom/nianticproject/ingress/gameentity/components/LocationE6;)Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->originPortalLocation:Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    .line 54
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->destinationPortalGuid:Ljava/lang/String;

    .line 55
    invoke-static {p4}, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->copyOf(Lcom/nianticproject/ingress/gameentity/components/LocationE6;)Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->destinationPortalLocation:Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    .line 56
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final computeCovering()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->coveringCache:Lcom/google/a/c/dc;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/google/a/d/ae;

    invoke-direct {v0}, Lcom/google/a/d/ae;-><init>()V

    .line 127
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/google/a/d/ae;->a(I)V

    .line 128
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->getIndexRegion()Lcom/google/a/d/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/d/ae;->a(Lcom/google/a/d/ad;)Lcom/google/a/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/d/k;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/dc;->a(Ljava/util/Collection;)Lcom/google/a/c/dc;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->coveringCache:Lcom/google/a/c/dc;

    .line 130
    :cond_0
    return-void
.end method

.method public final computeMapAreaBoundM2()D
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->getIndexRegion()Lcom/google/a/d/ad;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/b/a;->a(Lcom/google/a/d/ad;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    if-ne p0, p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 90
    goto :goto_0

    .line 92
    :cond_2
    instance-of v2, p1, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;

    if-nez v2, :cond_3

    move v0, v1

    .line 93
    goto :goto_0

    .line 95
    :cond_3
    check-cast p1, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;

    .line 96
    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->originPortalGuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->originPortalGuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->originPortalLocation:Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    iget-object v3, p1, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->originPortalLocation:Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->destinationPortalGuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->destinationPortalGuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->destinationPortalLocation:Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    iget-object v3, p1, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->destinationPortalLocation:Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final getCovering()Lcom/google/a/c/dc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dc",
            "<",
            "Lcom/google/a/d/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->coveringCache:Lcom/google/a/c/dc;

    return-object v0
.end method

.method public final getDestinationPortalGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->destinationPortalGuid:Ljava/lang/String;

    return-object v0
.end method

.method public final getDestinationPortalLocation()Lcom/nianticproject/ingress/gameentity/components/LocationE6;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->destinationPortalLocation:Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    return-object v0
.end method

.method public final getEntity()Lcom/nianticproject/ingress/gameentity/f;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method public final getEntityGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIndexRegion()Lcom/google/a/d/ad;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->originPortalLocation:Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->destinationPortalLocation:Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/d/v;->a(Lcom/google/a/d/u;Lcom/google/a/d/u;)Lcom/google/a/d/v;

    move-result-object v0

    return-object v0
.end method

.method public final getOriginPortalGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->originPortalGuid:Ljava/lang/String;

    return-object v0
.end method

.method public final getOriginPortalLocation()Lcom/nianticproject/ingress/gameentity/components/LocationE6;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->originPortalLocation:Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->originPortalGuid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->destinationPortalGuid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->originPortalLocation:Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->destinationPortalLocation:Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final setEntity(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 2
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Edge;

    invoke-static {v0, p0, v1, p1}, Lcom/nianticproject/ingress/gameentity/e;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/a;Ljava/lang/Class;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    .line 145
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Origin: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->originPortalGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->originPortalLocation:Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Destination: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->destinationPortalGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableEdge;->destinationPortalLocation:Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
