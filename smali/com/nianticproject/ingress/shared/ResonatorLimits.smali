.class public final Lcom/nianticproject/ingress/shared/ResonatorLimits;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bands:Lcom/google/a/c/du;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/du",
            "<",
            "Lcom/nianticproject/ingress/shared/ResonatorLevelBand;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/ResonatorLimits;->bands:Lcom/google/a/c/du;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/shared/ResonatorLevelBand;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/nianticproject/ingress/shared/ResonatorLimits;->a(Ljava/util/Set;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 50
    invoke-static {}, Lcom/google/a/c/du;->h()Lcom/google/a/c/dv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/a/c/dv;->b(Ljava/lang/Iterable;)Lcom/google/a/c/dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dv;->a()Lcom/google/a/c/du;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/ResonatorLimits;->bands:Lcom/google/a/c/du;

    .line 51
    return-void
.end method

.method private static a(Ljava/util/Set;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/shared/ResonatorLevelBand;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v2

    .line 80
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;

    .line 81
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->b()Lcom/google/a/c/du;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/du;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 82
    invoke-static {v0}, Lcom/nianticproject/ingress/gameentity/components/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v0, v1

    .line 88
    :goto_1
    return v0

    .line 85
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(I)I
    .locals 3
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/ResonatorLimits;->bands:Lcom/google/a/c/du;

    invoke-virtual {v0}, Lcom/google/a/c/du;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->a(Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->c()I

    move-result v0

    return v0

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "All Levels are required to be present in ResonatorLimits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/ResonatorLimits;->bands:Lcom/google/a/c/du;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/ResonatorLimits;->a(Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/a/c/ht;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/ht",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 97
    invoke-interface {p1}, Lcom/google/a/c/ht;->size()I

    move-result v0

    const/16 v3, 0x8

    if-le v0, v3, :cond_0

    move v0, v1

    .line 109
    :goto_0
    return v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/ResonatorLimits;->bands:Lcom/google/a/c/du;

    invoke-static {v0}, Lcom/google/a/c/jc;->a(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v3

    .line 104
    invoke-interface {p1}, Lcom/google/a/c/ht;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 105
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->a(Ljava/lang/Integer;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->c()I

    move-result v5

    if-lez v5, :cond_3

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;->a()Lcom/nianticproject/ingress/shared/ResonatorLevelBand;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v2

    :goto_1
    if-nez v0, :cond_1

    move v0, v1

    .line 106
    goto :goto_0

    :cond_3
    move v0, v1

    .line 105
    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "All Levels are required to be present in ResonatorLimits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v2

    .line 109
    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 66
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/nianticproject/ingress/shared/ResonatorLimits;

    if-nez v0, :cond_1

    .line 67
    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    .line 69
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/shared/ResonatorLimits;

    .line 70
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/ResonatorLimits;->bands:Lcom/google/a/c/du;

    iget-object v1, p1, Lcom/nianticproject/ingress/shared/ResonatorLimits;->bands:Lcom/google/a/c/du;

    invoke-static {v0, v1}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/ResonatorLimits;->bands:Lcom/google/a/c/du;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ResonatorLimits("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/ResonatorLimits;->bands:Lcom/google/a/c/du;

    invoke-virtual {v1}, Lcom/google/a/c/du;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
