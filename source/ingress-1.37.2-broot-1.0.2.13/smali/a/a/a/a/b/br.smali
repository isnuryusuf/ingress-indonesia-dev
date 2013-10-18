.class final La/a/a/a/b/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/a/a/b/bj;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/a/a/b/bj",
        "<TV;>;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Long;",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:La/a/a/a/b/bl;

.field private b:I


# direct methods
.method constructor <init>(La/a/a/a/b/bl;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, La/a/a/a/b/br;->a:La/a/a/a/b/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput p2, p0, La/a/a/a/b/br;->b:I

    .line 365
    return-void
.end method

.method static synthetic a(La/a/a/a/b/br;)I
    .locals 1
    .parameter

    .prologue
    .line 360
    const/4 v0, -0x1

    iput v0, p0, La/a/a/a/b/br;->b:I

    return v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, La/a/a/a/b/br;->a:La/a/a/a/b/bl;

    iget-object v0, v0, La/a/a/a/b/bl;->b:[J

    iget v1, p0, La/a/a/a/b/br;->b:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 382
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    move v0, v1

    .line 384
    :goto_0
    return v0

    .line 383
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 384
    iget-object v0, p0, La/a/a/a/b/br;->a:La/a/a/a/b/bl;

    iget-object v0, v0, La/a/a/a/b/bl;->b:[J

    iget v2, p0, La/a/a/a/b/br;->b:I

    aget-wide v2, v0, v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    iget-object v0, p0, La/a/a/a/b/br;->a:La/a/a/a/b/bl;

    iget-object v0, v0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    iget v2, p0, La/a/a/a/b/br;->b:I

    aget-object v0, v0, v2

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, La/a/a/a/b/br;->a:La/a/a/a/b/bl;

    iget-object v0, v0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    iget v2, p0, La/a/a/a/b/br;->b:I

    aget-object v0, v0, v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final synthetic getKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, La/a/a/a/b/br;->a:La/a/a/a/b/bl;

    iget-object v0, v0, La/a/a/a/b/bl;->b:[J

    iget v1, p0, La/a/a/a/b/br;->b:I

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, La/a/a/a/b/br;->a:La/a/a/a/b/bl;

    iget-object v0, v0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    iget v1, p0, La/a/a/a/b/br;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, La/a/a/a/b/br;->a:La/a/a/a/b/bl;

    iget-object v0, v0, La/a/a/a/b/bl;->b:[J

    iget v1, p0, La/a/a/a/b/br;->b:I

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, La/a/a/a/e;->b(J)I

    move-result v1

    iget-object v0, p0, La/a/a/a/b/br;->a:La/a/a/a/b/bl;

    iget-object v0, v0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    iget v2, p0, La/a/a/a/b/br;->b:I

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, La/a/a/a/b/br;->a:La/a/a/a/b/bl;

    iget-object v0, v0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    iget v2, p0, La/a/a/a/b/br;->b:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, La/a/a/a/b/br;->a:La/a/a/a/b/bl;

    iget-object v0, v0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    iget v1, p0, La/a/a/a/b/br;->b:I

    aget-object v0, v0, v1

    .line 377
    iget-object v1, p0, La/a/a/a/b/br;->a:La/a/a/a/b/bl;

    iget-object v1, v1, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    iget v2, p0, La/a/a/a/b/br;->b:I

    aput-object p1, v1, v2

    .line 378
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/a/a/a/b/br;->a:La/a/a/a/b/bl;

    iget-object v1, v1, La/a/a/a/b/bl;->b:[J

    iget v2, p0, La/a/a/a/b/br;->b:I

    aget-wide v1, v1, v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/b/br;->a:La/a/a/a/b/bl;

    iget-object v1, v1, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    iget v2, p0, La/a/a/a/b/br;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
