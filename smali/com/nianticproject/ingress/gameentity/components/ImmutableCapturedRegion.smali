.class public final Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/CachingRegionIndex;
.implements Lcom/nianticproject/ingress/gameentity/components/CapturedRegion;


# instance fields
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

.field private final vertexA:Lcom/nianticproject/ingress/shared/RegionPoint;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final vertexB:Lcom/nianticproject/ingress/shared/RegionPoint;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final vertexC:Lcom/nianticproject/ingress/shared/RegionPoint;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexA:Lcom/nianticproject/ingress/shared/RegionPoint;

    .line 135
    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexB:Lcom/nianticproject/ingress/shared/RegionPoint;

    .line 136
    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexC:Lcom/nianticproject/ingress/shared/RegionPoint;

    .line 137
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/shared/RegionPoint;Lcom/nianticproject/ingress/shared/RegionPoint;Lcom/nianticproject/ingress/shared/RegionPoint;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1, p2}, Lcom/nianticproject/ingress/shared/RegionPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string/jumbo v3, "Duplicate points: A, B"

    invoke-static {v0, v3}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 59
    invoke-virtual {p1, p3}, Lcom/nianticproject/ingress/shared/RegionPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    const-string/jumbo v3, "Duplicate points: A, C"

    invoke-static {v0, v3}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 60
    invoke-virtual {p2, p3}, Lcom/nianticproject/ingress/shared/RegionPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    const-string/jumbo v3, "Duplicate points: B, C"

    invoke-static {v0, v3}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 63
    const/4 v0, 0x3

    new-array v3, v0, [Lcom/nianticproject/ingress/shared/RegionPoint;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    aput-object p3, v3, v6

    .line 64
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 70
    aget-object v0, v3, v2

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/RegionPoint;->b()Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/d/u;->g()Lcom/google/a/d/y;

    move-result-object v0

    .line 71
    aget-object v4, v3, v1

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/RegionPoint;->b()Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    move-result-object v4

    invoke-interface {v4}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/a/d/u;->g()Lcom/google/a/d/y;

    move-result-object v4

    .line 72
    aget-object v5, v3, v6

    invoke-virtual {v5}, Lcom/nianticproject/ingress/shared/RegionPoint;->b()Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    move-result-object v5

    invoke-interface {v5}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/a/d/u;->g()Lcom/google/a/d/y;

    move-result-object v5

    .line 74
    invoke-static {v0, v4, v5}, Lcom/google/a/d/f;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)I

    move-result v4

    .line 75
    if-eqz v4, :cond_4

    move v0, v1

    :goto_3
    const-string/jumbo v5, "Duplicate vertex in region or degenerate region"

    invoke-static {v0, v5}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 76
    if-gez v4, :cond_0

    .line 78
    aget-object v0, v3, v6

    .line 79
    aget-object v4, v3, v1

    aput-object v4, v3, v6

    .line 80
    aput-object v0, v3, v1

    .line 83
    :cond_0
    aget-object v0, v3, v2

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexA:Lcom/nianticproject/ingress/shared/RegionPoint;

    .line 84
    aget-object v0, v3, v1

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexB:Lcom/nianticproject/ingress/shared/RegionPoint;

    .line 85
    aget-object v0, v3, v6

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexC:Lcom/nianticproject/ingress/shared/RegionPoint;

    .line 86
    return-void

    :cond_1
    move v0, v2

    .line 58
    goto :goto_0

    :cond_2
    move v0, v2

    .line 59
    goto :goto_1

    :cond_3
    move v0, v2

    .line 60
    goto :goto_2

    :cond_4
    move v0, v2

    .line 75
    goto :goto_3
.end method

.method public static fromEntities(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;

    invoke-static {p0}, Lcom/nianticproject/ingress/shared/RegionPoint;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/RegionPoint;

    move-result-object v1

    invoke-static {p1}, Lcom/nianticproject/ingress/shared/RegionPoint;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/RegionPoint;

    move-result-object v2

    invoke-static {p2}, Lcom/nianticproject/ingress/shared/RegionPoint;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/RegionPoint;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;-><init>(Lcom/nianticproject/ingress/shared/RegionPoint;Lcom/nianticproject/ingress/shared/RegionPoint;Lcom/nianticproject/ingress/shared/RegionPoint;)V

    return-object v0
.end method


# virtual methods
.method public final computeActualAreaOfRegion()D
    .locals 13

    .prologue
    const-wide/high16 v11, 0x3fe0

    .line 176
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexA:Lcom/nianticproject/ingress/shared/RegionPoint;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/RegionPoint;->b()Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/d/u;->g()Lcom/google/a/d/y;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexB:Lcom/nianticproject/ingress/shared/RegionPoint;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/RegionPoint;->b()Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/d/u;->g()Lcom/google/a/d/y;

    move-result-object v1

    .line 178
    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexC:Lcom/nianticproject/ingress/shared/RegionPoint;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/RegionPoint;->b()Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    move-result-object v2

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/d/u;->g()Lcom/google/a/d/y;

    move-result-object v2

    .line 180
    invoke-virtual {v1, v2}, Lcom/google/a/d/y;->e(Lcom/google/a/d/y;)D

    move-result-wide v3

    .line 181
    invoke-virtual {v2, v0}, Lcom/google/a/d/y;->e(Lcom/google/a/d/y;)D

    move-result-wide v5

    .line 182
    invoke-virtual {v0, v1}, Lcom/google/a/d/y;->e(Lcom/google/a/d/y;)D

    move-result-wide v0

    .line 183
    add-double v7, v3, v5

    add-double/2addr v7, v0

    mul-double/2addr v7, v11

    .line 185
    mul-double v9, v11, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->tan(D)D

    move-result-wide v9

    .line 186
    sub-double v2, v7, v3

    mul-double/2addr v2, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    .line 187
    sub-double v4, v7, v5

    mul-double/2addr v4, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    .line 188
    sub-double v0, v7, v0

    mul-double/2addr v0, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    .line 190
    const-wide/high16 v6, 0x4010

    const-wide/16 v11, 0x0

    mul-double/2addr v2, v9

    mul-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    .line 191
    const-wide v2, 0x42c275455d358200L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public final computeCovering()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->coveringCache:Lcom/google/a/c/dc;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lcom/google/a/d/ae;

    invoke-direct {v0}, Lcom/google/a/d/ae;-><init>()V

    .line 151
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/google/a/d/ae;->a(I)V

    .line 152
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->getIndexRegion()Lcom/google/a/d/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/d/ae;->a(Lcom/google/a/d/ad;)Lcom/google/a/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/d/k;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/dc;->a(Ljava/util/Collection;)Lcom/google/a/c/dc;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->coveringCache:Lcom/google/a/c/dc;

    .line 154
    :cond_0
    return-void
.end method

.method public final computeMapAreaBoundM2()D
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->getIndexRegion()Lcom/google/a/d/w;

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

    .line 110
    if-ne p0, p1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 114
    goto :goto_0

    .line 116
    :cond_2
    instance-of v2, p1, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;

    if-nez v2, :cond_3

    move v0, v1

    .line 117
    goto :goto_0

    .line 119
    :cond_3
    check-cast p1, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;

    .line 120
    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexA:Lcom/nianticproject/ingress/shared/RegionPoint;

    iget-object v3, p1, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexA:Lcom/nianticproject/ingress/shared/RegionPoint;

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/shared/RegionPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexB:Lcom/nianticproject/ingress/shared/RegionPoint;

    iget-object v3, p1, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexB:Lcom/nianticproject/ingress/shared/RegionPoint;

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/shared/RegionPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexC:Lcom/nianticproject/ingress/shared/RegionPoint;

    iget-object v3, p1, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexC:Lcom/nianticproject/ingress/shared/RegionPoint;

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/shared/RegionPoint;->equals(Ljava/lang/Object;)Z

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
    .line 158
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->coveringCache:Lcom/google/a/c/dc;

    return-object v0
.end method

.method public final bridge synthetic getIndexRegion()Lcom/google/a/d/ad;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->getIndexRegion()Lcom/google/a/d/w;

    move-result-object v0

    return-object v0
.end method

.method public final getIndexRegion()Lcom/google/a/d/w;
    .locals 4

    .prologue
    .line 142
    new-instance v0, Lcom/google/a/d/w;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/a/d/y;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexA:Lcom/nianticproject/ingress/shared/RegionPoint;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/RegionPoint;->b()Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    move-result-object v3

    invoke-interface {v3}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/a/d/u;->g()Lcom/google/a/d/y;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexB:Lcom/nianticproject/ingress/shared/RegionPoint;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/RegionPoint;->b()Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    move-result-object v3

    invoke-interface {v3}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/a/d/u;->g()Lcom/google/a/d/y;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexC:Lcom/nianticproject/ingress/shared/RegionPoint;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/RegionPoint;->b()Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    move-result-object v3

    invoke-interface {v3}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/a/d/u;->g()Lcom/google/a/d/y;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/d/w;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getVertexA()Lcom/nianticproject/ingress/shared/RegionPoint;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexA:Lcom/nianticproject/ingress/shared/RegionPoint;

    return-object v0
.end method

.method public final getVertexB()Lcom/nianticproject/ingress/shared/RegionPoint;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexB:Lcom/nianticproject/ingress/shared/RegionPoint;

    return-object v0
.end method

.method public final getVertexC()Lcom/nianticproject/ingress/shared/RegionPoint;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexC:Lcom/nianticproject/ingress/shared/RegionPoint;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexA:Lcom/nianticproject/ingress/shared/RegionPoint;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexB:Lcom/nianticproject/ingress/shared/RegionPoint;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexC:Lcom/nianticproject/ingress/shared/RegionPoint;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 127
    const-string/jumbo v0, "Region: %s -> %s -> %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexA:Lcom/nianticproject/ingress/shared/RegionPoint;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/RegionPoint;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexB:Lcom/nianticproject/ingress/shared/RegionPoint;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/RegionPoint;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableCapturedRegion;->vertexC:Lcom/nianticproject/ingress/shared/RegionPoint;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/RegionPoint;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
