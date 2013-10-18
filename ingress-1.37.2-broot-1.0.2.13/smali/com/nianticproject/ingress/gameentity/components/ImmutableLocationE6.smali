.class public final Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/LocationE6;


# instance fields
.field private transient cellId:Lcom/google/a/d/j;

.field private final latE6:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final transient latLng:Lcom/google/a/d/u;

.field private final lngE6:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Due to their transient latLng, ImmutableLocationE6s should only be constructed through the ImmutableLocationE6s.GSON_DESERIALIZER type adapter which bypasses this interface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "latE6"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "lngE6"
        .end annotation
    .end parameter
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->latE6:I

    .line 51
    iput p2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->lngE6:I

    .line 52
    invoke-static {p1, p2}, Lcom/nianticproject/ingress/shared/b/b;->a(II)Lcom/google/a/d/u;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->latLng:Lcom/google/a/d/u;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/google/a/d/u;)V
    .locals 4
    .parameter

    .prologue
    const-wide v2, 0x412e848000000000L

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Lcom/google/a/d/u;->c()D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->latE6:I

    .line 57
    invoke-virtual {p1}, Lcom/google/a/d/u;->f()D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->lngE6:I

    .line 58
    iput-object p1, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->latLng:Lcom/google/a/d/u;

    .line 59
    return-void
.end method

.method public static copyOf(Lcom/nianticproject/ingress/gameentity/components/LocationE6;)Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;
    .locals 3
    .parameter

    .prologue
    .line 27
    instance-of v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    if-eqz v0, :cond_0

    .line 28
    check-cast p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    .line 30
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatE6()I

    move-result v1

    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLngE6()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;-><init>(II)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public final computeCovering()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->cellId:Lcom/google/a/d/j;

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->getIndexPoint()Lcom/google/a/d/u;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/b/b;->a(Lcom/google/a/d/u;)Lcom/google/a/d/j;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->cellId:Lcom/google/a/d/j;

    .line 130
    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    if-ne p0, p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    instance-of v2, p1, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    if-nez v2, :cond_2

    move v0, v1

    .line 91
    goto :goto_0

    .line 94
    :cond_2
    check-cast p1, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    .line 95
    iget v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->latE6:I

    iget v3, p1, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->latE6:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->lngE6:I

    iget v3, p1, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->lngE6:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final getIndexCell()Lcom/google/a/d/j;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->cellId:Lcom/google/a/d/j;

    return-object v0
.end method

.method public final getIndexPoint()Lcom/google/a/d/u;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->latLng:Lcom/google/a/d/u;

    return-object v0
.end method

.method public final getIndexRegion()Lcom/google/a/d/ad;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/google/a/d/i;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->getIndexPoint()Lcom/google/a/d/u;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/d/i;-><init>(Lcom/google/a/d/u;)V

    return-object v0
.end method

.method public final getLatE6()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->latE6:I

    return v0
.end method

.method public final getLatLng()Lcom/google/a/d/u;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->latLng:Lcom/google/a/d/u;

    return-object v0
.end method

.method public final getLngE6()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->lngE6:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->latE6:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->lngE6:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    const-wide v5, 0x412e848000000000L

    .line 100
    const-string/jumbo v0, "lat,lng E6: \'%s,%s\', http://maps.google.com?z=19&ll=%s,%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->latE6:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->lngE6:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->latE6:I

    int-to-double v3, v3

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->lngE6:I

    int-to-double v3, v3

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
