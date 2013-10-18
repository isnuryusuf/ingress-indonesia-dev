.class public final Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorArray;
.implements Lcom/nianticproject/ingress/shared/s;


# instance fields
.field private transient containingEntity:Lcom/nianticproject/ingress/gameentity/f;

.field private transient dirty:Z

.field private transient levelIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final resonators:[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/portal/c;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/gameentity/components/portal/c;-><init>(Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->levelIterable:Ljava/lang/Iterable;

    .line 100
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->resonators:[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->dirty:Z

    .line 102
    return-void
.end method

.method static synthetic access$100(Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;)[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->resonators:[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    return-object v0
.end method


# virtual methods
.method public final addResonator(Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;Lcom/nianticproject/ingress/shared/r;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 106
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->resonators:[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/shared/r;->a()I

    move-result v2

    aget-object v0, v0, v2

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 108
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->resonators:[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/shared/r;->a()I

    move-result v2

    aput-object p1, v0, v2

    .line 109
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {p1, v0, p2}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;->setEntity(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/shared/r;)V

    .line 112
    :cond_0
    iput-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->dirty:Z

    .line 113
    return-void

    .line 107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getEntity()Lcom/nianticproject/ingress/gameentity/f;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method public final getEntityGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getResonator(Lcom/nianticproject/ingress/shared/r;)Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;
    .locals 2
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->resonators:[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/r;->a()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getResonatorLevels()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->levelIterable:Ljava/lang/Iterable;

    return-object v0
.end method

.method public final isDirty()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 172
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->dirty:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 180
    :goto_0
    return v0

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    .line 176
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 177
    goto :goto_0

    .line 180
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/portal/e;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/gameentity/components/portal/e;-><init>(Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;)V

    return-object v0
.end method

.method public final removeResonator(Lcom/nianticproject/ingress/shared/r;)V
    .locals 3
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->resonators:[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/r;->a()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->resonators:[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/r;->a()I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->dirty:Z

    .line 121
    :cond_0
    return-void
.end method

.method public final setClean()V
    .locals 2

    .prologue
    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->dirty:Z

    .line 186
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    .line 187
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;->setClean()V

    goto :goto_0

    .line 189
    :cond_0
    return-void
.end method

.method public final setEntity(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 3
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorArray;

    invoke-static {v0, p0, v1, p1}, Lcom/nianticproject/ingress/gameentity/e;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/a;Ljava/lang/Class;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    .line 153
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->resonators:[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->resonators:[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->resonators:[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    aget-object v1, v1, v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/r;->a(I)Lcom/nianticproject/ingress/shared/r;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;->setEntity(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/shared/r;)V

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    return-void
.end method

.method public final size()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 202
    move v0, v1

    move v2, v1

    .line 203
    :goto_0
    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->resonators:[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 204
    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->resonators:[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    add-int/2addr v2, v3

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    .line 204
    goto :goto_1

    .line 206
    :cond_1
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/ag;->a(Ljava/lang/Class;)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "slots"

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->resonators:[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "dirty"

    iget-boolean v2, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->dirty:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Z)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "any_dirty"

    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->isDirty()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Z)Lcom/google/a/a/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateResonator(Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;Lcom/nianticproject/ingress/shared/r;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 125
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {p2}, Lcom/nianticproject/ingress/shared/r;->a()I

    move-result v3

    .line 127
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->resonators:[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 128
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;->getLevel()I

    move-result v0

    iget-object v4, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->resonators:[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;->getLevel()I

    move-result v4

    if-le v0, v4, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 129
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Lcom/google/a/a/an;->b(Z)V

    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->resonators:[Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    aput-object p1, v0, v3

    .line 131
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {p1, v0, p2}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;->setEntity(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/shared/r;)V

    .line 132
    iput-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorArray;->dirty:Z

    .line 133
    return-void

    :cond_1
    move v0, v2

    .line 127
    goto :goto_0

    :cond_2
    move v0, v2

    .line 128
    goto :goto_1
.end method
