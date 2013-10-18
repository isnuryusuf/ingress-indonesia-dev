.class final La/a/a/a/b/am;
.super La/a/a/a/c/e;
.source "SourceFile"

# interfaces
.implements La/a/a/a/b/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/a/c/e",
        "<",
        "La/a/a/a/b/ae;",
        ">;",
        "La/a/a/a/b/af;"
    }
.end annotation


# instance fields
.field final synthetic a:La/a/a/a/b/ag;


# direct methods
.method private constructor <init>(La/a/a/a/b/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, La/a/a/a/b/am;->a:La/a/a/a/b/ag;

    invoke-direct {p0}, La/a/a/a/c/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/a/a/a/b/ag;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 491
    invoke-direct {p0, p1}, La/a/a/a/b/am;-><init>(La/a/a/a/b/ag;)V

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
            "La/a/a/a/b/ae;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    new-instance v0, La/a/a/a/b/ai;

    iget-object v1, p0, La/a/a/a/b/am;->a:La/a/a/a/b/ag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/a/a/a/b/ai;-><init>(La/a/a/a/b/ag;B)V

    return-object v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, La/a/a/a/b/am;->a:La/a/a/a/b/ag;

    invoke-virtual {v0}, La/a/a/a/b/ag;->clear()V

    .line 534
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 500
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    move v0, v1

    .line 510
    :goto_0
    return v0

    .line 501
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 502
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 504
    invoke-static {v2, v3}, La/a/a/a/e;->a(J)J

    move-result-wide v4

    long-to-int v0, v4

    iget-object v4, p0, La/a/a/a/b/am;->a:La/a/a/a/b/ag;

    iget v4, v4, La/a/a/a/b/ag;->h:I

    and-int/2addr v0, v4

    .line 506
    :goto_1
    iget-object v4, p0, La/a/a/a/b/am;->a:La/a/a/a/b/ag;

    iget-object v4, v4, La/a/a/a/b/ag;->d:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_3

    .line 507
    iget-object v4, p0, La/a/a/a/b/am;->a:La/a/a/a/b/ag;

    iget-object v4, v4, La/a/a/a/b/ag;->b:[J

    aget-wide v4, v4, v0

    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    iget-object v2, p0, La/a/a/a/b/am;->a:La/a/a/a/b/ag;

    iget-object v2, v2, La/a/a/a/b/ag;->c:[J

    aget-wide v2, v2, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 508
    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, La/a/a/a/b/am;->a:La/a/a/a/b/ag;

    iget v4, v4, La/a/a/a/b/ag;->h:I

    and-int/2addr v0, v4

    goto :goto_1

    :cond_3
    move v0, v1

    .line 510
    goto :goto_0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 491
    invoke-virtual {p0}, La/a/a/a/b/am;->a()La/a/a/a/c/l;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 514
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    move v0, v1

    .line 527
    :goto_0
    return v0

    .line 515
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 516
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 518
    invoke-static {v2, v3}, La/a/a/a/e;->a(J)J

    move-result-wide v4

    long-to-int v0, v4

    iget-object v4, p0, La/a/a/a/b/am;->a:La/a/a/a/b/ag;

    iget v4, v4, La/a/a/a/b/ag;->h:I

    and-int/2addr v0, v4

    .line 520
    :goto_1
    iget-object v4, p0, La/a/a/a/b/am;->a:La/a/a/a/b/ag;

    iget-object v4, v4, La/a/a/a/b/ag;->d:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_2

    .line 521
    iget-object v4, p0, La/a/a/a/b/am;->a:La/a/a/a/b/ag;

    iget-object v4, v4, La/a/a/a/b/ag;->b:[J

    aget-wide v4, v4, v0

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    .line 522
    iget-object v0, p0, La/a/a/a/b/am;->a:La/a/a/a/b/ag;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/a/a/b/ag;->a(Ljava/lang/Object;)Ljava/lang/Long;

    .line 523
    const/4 v0, 0x1

    goto :goto_0

    .line 525
    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, La/a/a/a/b/am;->a:La/a/a/a/b/ag;

    iget v4, v4, La/a/a/a/b/ag;->h:I

    and-int/2addr v0, v4

    goto :goto_1

    :cond_2
    move v0, v1

    .line 527
    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, La/a/a/a/b/am;->a:La/a/a/a/b/ag;

    iget v0, v0, La/a/a/a/b/ag;->i:I

    return v0
.end method
