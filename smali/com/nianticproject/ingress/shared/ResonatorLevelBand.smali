.class public final Lcom/nianticproject/ingress/shared/ResonatorLevelBand;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final applicableLevels:Lcom/google/a/c/du;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/du",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final remaining:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->remaining:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->applicableLevels:Lcom/google/a/c/du;

    .line 55
    return-void
.end method

.method public constructor <init>(ILjava/lang/Integer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/google/a/c/jc;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;-><init>(ILjava/util/Set;)V

    .line 41
    return-void
.end method

.method private constructor <init>(ILjava/util/Set;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-ltz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 45
    const/16 v0, 0x8

    if-gt p1, v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    .line 46
    iput p1, p0, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->remaining:I

    .line 47
    invoke-static {}, Lcom/google/a/c/du;->h()Lcom/google/a/c/dv;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/a/c/dv;->b(Ljava/lang/Iterable;)Lcom/google/a/c/dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dv;->a()Lcom/google/a/c/du;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->applicableLevels:Lcom/google/a/c/du;

    .line 48
    return-void

    :cond_0
    move v0, v2

    .line 44
    goto :goto_0

    :cond_1
    move v1, v2

    .line 45
    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/ResonatorLevelBand;
    .locals 3

    .prologue
    .line 64
    iget v0, p0, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->remaining:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 65
    new-instance v0, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;

    iget v1, p0, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->remaining:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->applicableLevels:Lcom/google/a/c/du;

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;-><init>(ILjava/util/Set;)V

    return-object v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Integer;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->applicableLevels:Lcom/google/a/c/du;

    invoke-virtual {v0, p1}, Lcom/google/a/c/du;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final b()Lcom/google/a/c/du;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/du",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->applicableLevels:Lcom/google/a/c/du;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->remaining:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 90
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;

    if-nez v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;

    .line 94
    iget v1, p0, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->remaining:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->remaining:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->applicableLevels:Lcom/google/a/c/du;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->applicableLevels:Lcom/google/a/c/du;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->remaining:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->applicableLevels:Lcom/google/a/c/du;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Band remaining slots: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->remaining:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", levels: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->applicableLevels:Lcom/google/a/c/du;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
