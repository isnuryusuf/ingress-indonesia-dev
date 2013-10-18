.class final La/a/a/a/b/bs;
.super La/a/a/a/c/e;
.source "SourceFile"

# interfaces
.implements La/a/a/a/b/bk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/a/c/e",
        "<",
        "La/a/a/a/b/bj",
        "<TV;>;>;",
        "La/a/a/a/b/bk",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:La/a/a/a/b/bl;


# direct methods
.method private constructor <init>(La/a/a/a/b/bl;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, La/a/a/a/b/bs;->a:La/a/a/a/b/bl;

    invoke-direct {p0}, La/a/a/a/c/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/a/a/a/b/bl;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 456
    invoke-direct {p0, p1}, La/a/a/a/b/bs;-><init>(La/a/a/a/b/bl;)V

    return-void
.end method


# virtual methods
.method public final a()La/a/a/a/c/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/c/l",
            "<",
            "La/a/a/a/b/bj",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 458
    new-instance v0, La/a/a/a/b/bn;

    iget-object v1, p0, La/a/a/a/b/bs;->a:La/a/a/a/b/bl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/a/a/a/b/bn;-><init>(La/a/a/a/b/bl;B)V

    return-object v0
.end method

.method public final b()La/a/a/a/c/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/c/l",
            "<",
            "La/a/a/a/b/bj",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 461
    new-instance v0, La/a/a/a/b/bo;

    iget-object v1, p0, La/a/a/a/b/bs;->a:La/a/a/a/b/bl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/a/a/a/b/bo;-><init>(La/a/a/a/b/bl;B)V

    return-object v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, La/a/a/a/b/bs;->a:La/a/a/a/b/bl;

    invoke-virtual {v0}, La/a/a/a/b/bl;->clear()V

    .line 499
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 465
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    move v0, v1

    .line 475
    :goto_0
    return v0

    .line 466
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 467
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 469
    invoke-static {v2, v3}, La/a/a/a/e;->a(J)J

    move-result-wide v4

    long-to-int v0, v4

    iget-object v4, p0, La/a/a/a/b/bs;->a:La/a/a/a/b/bl;

    iget v4, v4, La/a/a/a/b/bl;->h:I

    and-int/2addr v0, v4

    .line 471
    :goto_1
    iget-object v4, p0, La/a/a/a/b/bs;->a:La/a/a/a/b/bl;

    iget-object v4, v4, La/a/a/a/b/bl;->d:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_4

    .line 472
    iget-object v4, p0, La/a/a/a/b/bs;->a:La/a/a/a/b/bl;

    iget-object v4, v4, La/a/a/a/b/bl;->b:[J

    aget-wide v4, v4, v0

    cmp-long v4, v4, v2

    if-nez v4, :cond_3

    iget-object v2, p0, La/a/a/a/b/bs;->a:La/a/a/a/b/bl;

    iget-object v2, v2, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, La/a/a/a/b/bs;->a:La/a/a/a/b/bl;

    iget-object v1, v1, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 473
    :cond_3
    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, La/a/a/a/b/bs;->a:La/a/a/a/b/bl;

    iget v4, v4, La/a/a/a/b/bl;->h:I

    and-int/2addr v0, v4

    goto :goto_1

    :cond_4
    move v0, v1

    .line 475
    goto :goto_0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, La/a/a/a/b/bs;->a()La/a/a/a/c/l;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 479
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    move v0, v1

    .line 492
    :goto_0
    return v0

    .line 480
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 481
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 483
    invoke-static {v2, v3}, La/a/a/a/e;->a(J)J

    move-result-wide v4

    long-to-int v0, v4

    iget-object v4, p0, La/a/a/a/b/bs;->a:La/a/a/a/b/bl;

    iget v4, v4, La/a/a/a/b/bl;->h:I

    and-int/2addr v0, v4

    .line 485
    :goto_1
    iget-object v4, p0, La/a/a/a/b/bs;->a:La/a/a/a/b/bl;

    iget-object v4, v4, La/a/a/a/b/bl;->d:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_2

    .line 486
    iget-object v4, p0, La/a/a/a/b/bs;->a:La/a/a/a/b/bl;

    iget-object v4, v4, La/a/a/a/b/bl;->b:[J

    aget-wide v4, v4, v0

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    .line 487
    iget-object v0, p0, La/a/a/a/b/bs;->a:La/a/a/a/b/bl;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/a/a/b/bl;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const/4 v0, 0x1

    goto :goto_0

    .line 490
    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, La/a/a/a/b/bs;->a:La/a/a/a/b/bl;

    iget v4, v4, La/a/a/a/b/bl;->h:I

    and-int/2addr v0, v4

    goto :goto_1

    :cond_2
    move v0, v1

    .line 492
    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, La/a/a/a/b/bs;->a:La/a/a/a/b/bl;

    iget v0, v0, La/a/a/a/b/bl;->i:I

    return v0
.end method
