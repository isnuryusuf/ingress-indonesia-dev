.class final La/a/a/a/b/ay;
.super La/a/a/a/c/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/a/c/f",
        "<",
        "La/a/a/a/b/bj",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:La/a/a/a/b/ax;


# direct methods
.method constructor <init>(La/a/a/a/b/ax;)V
    .locals 0
    .parameter

    .prologue
    .line 1359
    iput-object p1, p0, La/a/a/a/b/ay;->a:La/a/a/a/b/ax;

    invoke-direct {p0}, La/a/a/a/c/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()La/a/a/a/c/l;
    .locals 1

    .prologue
    .line 1359
    invoke-virtual {p0}, La/a/a/a/b/ay;->b()La/a/a/a/c/i;

    move-result-object v0

    return-object v0
.end method

.method public final b()La/a/a/a/c/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/c/i",
            "<",
            "La/a/a/a/b/bj",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1361
    new-instance v0, La/a/a/a/b/bb;

    iget-object v1, p0, La/a/a/a/b/ay;->a:La/a/a/a/b/ax;

    invoke-direct {v0, v1}, La/a/a/a/b/bb;-><init>(La/a/a/a/b/ax;)V

    return-object v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, La/a/a/a/b/ay;->a:La/a/a/a/b/ax;

    invoke-virtual {v0}, La/a/a/a/b/ax;->clear()V

    .line 1392
    return-void
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-",
            "La/a/a/a/b/bj",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1366
    iget-object v0, p0, La/a/a/a/b/ay;->a:La/a/a/a/b/ax;

    iget-object v0, v0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    invoke-virtual {v0}, La/a/a/a/b/ap;->g()La/a/a/a/c/q;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/c/q;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1369
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    move v0, v1

    .line 1372
    :goto_0
    return v0

    .line 1370
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1371
    iget-object v0, p0, La/a/a/a/b/ay;->a:La/a/a/a/b/ax;

    iget-object v2, v0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, La/a/a/a/b/ap;->c(J)La/a/a/a/b/at;

    move-result-object v0

    .line 1372
    if-eqz v0, :cond_1

    iget-object v2, p0, La/a/a/a/b/ay;->a:La/a/a/a/b/ax;

    iget-wide v3, v0, La/a/a/a/b/at;->a:J

    invoke-virtual {v2, v3, v4}, La/a/a/a/b/ax;->c(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final synthetic first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, La/a/a/a/b/ay;->a:La/a/a/a/b/ax;

    invoke-virtual {v0}, La/a/a/a/b/ax;->m()La/a/a/a/b/at;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .parameter

    .prologue
    .line 1359
    check-cast p1, La/a/a/a/b/bj;

    iget-object v1, p0, La/a/a/a/b/ay;->a:La/a/a/a/b/ax;

    invoke-interface {p1}, La/a/a/a/b/bj;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, v0}, La/a/a/a/b/ax;->a(Ljava/lang/Long;)La/a/a/a/b/bv;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/b/bv;->j()La/a/a/a/c/q;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 1388
    new-instance v0, La/a/a/a/b/bc;

    iget-object v1, p0, La/a/a/a/b/ay;->a:La/a/a/a/b/ax;

    invoke-direct {v0, v1}, La/a/a/a/b/bc;-><init>(La/a/a/a/b/ax;)V

    invoke-virtual {v0}, La/a/a/a/b/bc;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1359
    invoke-virtual {p0}, La/a/a/a/b/ay;->b()La/a/a/a/c/i;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, La/a/a/a/b/ay;->a:La/a/a/a/b/ax;

    invoke-virtual {v0}, La/a/a/a/b/ax;->n()La/a/a/a/b/at;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1376
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    move v0, v1

    .line 1380
    :goto_0
    return v0

    .line 1377
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1378
    iget-object v0, p0, La/a/a/a/b/ay;->a:La/a/a/a/b/ax;

    iget-object v2, v0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, La/a/a/a/b/ap;->c(J)La/a/a/a/b/at;

    move-result-object v0

    .line 1379
    if-eqz v0, :cond_1

    iget-object v2, p0, La/a/a/a/b/ay;->a:La/a/a/a/b/ax;

    iget-wide v3, v0, La/a/a/a/b/at;->a:J

    invoke-virtual {v2, v3, v4}, La/a/a/a/b/ax;->c(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, La/a/a/a/b/ay;->a:La/a/a/a/b/ax;

    iget-wide v3, v0, La/a/a/a/b/at;->a:J

    invoke-virtual {v2, v3, v4}, La/a/a/a/b/ax;->a(J)Ljava/lang/Object;

    .line 1380
    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final size()I
    .locals 3

    .prologue
    .line 1383
    const/4 v0, 0x0

    .line 1384
    invoke-virtual {p0}, La/a/a/a/b/ay;->b()La/a/a/a/c/i;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 1385
    :cond_0
    return v0
.end method

.method public final synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1359
    check-cast p1, La/a/a/a/b/bj;

    check-cast p2, La/a/a/a/b/bj;

    iget-object v2, p0, La/a/a/a/b/ay;->a:La/a/a/a/b/ax;

    invoke-interface {p1}, La/a/a/a/b/bj;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {p2}, La/a/a/a/b/bj;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v2, v0, v1}, La/a/a/a/b/ax;->a(Ljava/lang/Long;Ljava/lang/Long;)La/a/a/a/b/bv;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/b/bv;->j()La/a/a/a/c/q;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .parameter

    .prologue
    .line 1359
    check-cast p1, La/a/a/a/b/bj;

    iget-object v1, p0, La/a/a/a/b/ay;->a:La/a/a/a/b/ax;

    invoke-interface {p1}, La/a/a/a/b/bj;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, v0}, La/a/a/a/b/ax;->b(Ljava/lang/Long;)La/a/a/a/b/bv;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/b/bv;->j()La/a/a/a/c/q;

    move-result-object v0

    return-object v0
.end method
