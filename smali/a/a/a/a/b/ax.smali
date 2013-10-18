.class final La/a/a/a/b/ax;
.super La/a/a/a/b/n;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/a/b/n",
        "<TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field b:J

.field c:J

.field d:Z

.field e:Z

.field protected volatile transient f:La/a/a/a/c/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/c/q",
            "<",
            "La/a/a/a/b/bj",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field protected volatile transient g:La/a/a/a/b/cm;

.field protected volatile transient h:La/a/a/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/c/j",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic i:La/a/a/a/b/ap;


# direct methods
.method public constructor <init>(La/a/a/a/b/ap;JZJZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1335
    iput-object p1, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    invoke-direct {p0}, La/a/a/a/b/n;-><init>()V

    .line 1336
    if-nez p4, :cond_0

    if-nez p7, :cond_0

    invoke-virtual {p1, p2, p3, p5, p6}, La/a/a/a/b/ap;->a(JJ)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Start key ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is larger than end key ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1337
    :cond_0
    iput-wide p2, p0, La/a/a/a/b/ax;->b:J

    .line 1338
    iput-boolean p4, p0, La/a/a/a/b/ax;->d:Z

    .line 1339
    iput-wide p5, p0, La/a/a/a/b/ax;->c:J

    .line 1340
    iput-boolean p7, p0, La/a/a/a/b/ax;->e:Z

    .line 1341
    iget-object v0, p1, La/a/a/a/b/ap;->b_:Ljava/lang/Object;

    iput-object v0, p0, La/a/a/a/b/ax;->b_:Ljava/lang/Object;

    .line 1342
    return-void
.end method


# virtual methods
.method public final synthetic a()La/a/a/a/b/cl;
    .locals 1

    .prologue
    .line 1309
    invoke-virtual {p0}, La/a/a/a/b/ax;->f()La/a/a/a/b/cm;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .line 1457
    iget-object v0, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    const/4 v1, 0x0

    iput-boolean v1, v0, La/a/a/a/b/ap;->i:Z

    .line 1458
    invoke-virtual {p0, p1, p2}, La/a/a/a/b/ax;->c(J)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, La/a/a/a/b/ax;->b_:Ljava/lang/Object;

    .line 1460
    :cond_0
    :goto_0
    return-object v0

    .line 1459
    :cond_1
    iget-object v0, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    invoke-virtual {v0, p1, p2}, La/a/a/a/b/ap;->a(J)Ljava/lang/Object;

    move-result-object v0

    .line 1460
    iget-object v1, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-boolean v1, v1, La/a/a/a/b/ap;->i:Z

    if-nez v1, :cond_0

    iget-object v0, p0, La/a/a/a/b/ax;->b_:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .prologue
    .line 1446
    iget-object v0, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    const/4 v1, 0x0

    iput-boolean v1, v0, La/a/a/a/b/ap;->i:Z

    .line 1447
    invoke-virtual {p0, p1, p2}, La/a/a/a/b/ax;->c(J)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Key ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") out of range ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, La/a/a/a/b/ax;->d:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "-"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, La/a/a/a/b/ax;->e:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "-"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-wide v3, p0, La/a/a/a/b/ax;->b:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-wide v3, p0, La/a/a/a/b/ax;->c:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1448
    :cond_2
    iget-object v0, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    invoke-virtual {v0, p1, p2, p3}, La/a/a/a/b/ap;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1449
    iget-object v1, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-boolean v1, v1, La/a/a/a/b/ap;->i:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, La/a/a/a/b/ax;->b_:Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method public final a(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1452
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, La/a/a/a/b/ax;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1453
    iget-object v1, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-boolean v1, v1, La/a/a/a/b/ap;->i:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, La/a/a/a/b/ax;->b_:Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final b(JJ)La/a/a/a/b/bv;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "La/a/a/a/b/bv",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1490
    iget-boolean v0, p0, La/a/a/a/b/ax;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, La/a/a/a/b/ax;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, La/a/a/a/b/ax;

    iget-object v1, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    move-wide v2, p1

    move-wide v5, p3

    move v7, v4

    invoke-direct/range {v0 .. v7}, La/a/a/a/b/ax;-><init>(La/a/a/a/b/ap;JZJZ)V

    .line 1494
    :goto_0
    return-object v0

    .line 1491
    :cond_0
    iget-boolean v0, p0, La/a/a/a/b/ax;->e:Z

    if-nez v0, :cond_5

    iget-object v0, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-wide v1, p0, La/a/a/a/b/ax;->c:J

    invoke-virtual {v0, p3, p4, v1, v2}, La/a/a/a/b/ap;->a(JJ)I

    move-result v0

    if-gez v0, :cond_1

    :goto_1
    move-wide v5, p3

    .line 1492
    :goto_2
    iget-boolean v0, p0, La/a/a/a/b/ax;->d:Z

    if-nez v0, :cond_4

    iget-object v0, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-wide v1, p0, La/a/a/a/b/ax;->b:J

    invoke-virtual {v0, p1, p2, v1, v2}, La/a/a/a/b/ap;->a(JJ)I

    move-result v0

    if-lez v0, :cond_2

    :goto_3
    move-wide v2, p1

    .line 1493
    :goto_4
    iget-boolean v0, p0, La/a/a/a/b/ax;->e:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, La/a/a/a/b/ax;->d:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, La/a/a/a/b/ax;->b:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    iget-wide v0, p0, La/a/a/a/b/ax;->c:J

    cmp-long v0, v5, v0

    if-nez v0, :cond_3

    move-object v0, p0

    goto :goto_0

    .line 1491
    :cond_1
    iget-wide p3, p0, La/a/a/a/b/ax;->c:J

    goto :goto_1

    .line 1492
    :cond_2
    iget-wide p1, p0, La/a/a/a/b/ax;->b:J

    goto :goto_3

    .line 1494
    :cond_3
    new-instance v0, La/a/a/a/b/ax;

    iget-object v1, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    move v7, v4

    invoke-direct/range {v0 .. v7}, La/a/a/a/b/ax;-><init>(La/a/a/a/b/ap;JZJZ)V

    goto :goto_0

    :cond_4
    move-wide v2, p1

    goto :goto_4

    :cond_5
    move-wide v5, p3

    goto :goto_2
.end method

.method public final b()La/a/a/a/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/c/j",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1410
    iget-object v0, p0, La/a/a/a/b/ax;->h:La/a/a/a/c/j;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/a/b/az;

    invoke-direct {v0, p0}, La/a/a/a/b/az;-><init>(La/a/a/a/b/ax;)V

    iput-object v0, p0, La/a/a/a/b/ax;->h:La/a/a/a/c/j;

    .line 1424
    :cond_0
    iget-object v0, p0, La/a/a/a/b/ax;->h:La/a/a/a/c/j;

    return-object v0
.end method

.method public final b(J)Z
    .locals 1
    .parameter

    .prologue
    .line 1428
    invoke-virtual {p0, p1, p2}, La/a/a/a/b/ax;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    invoke-virtual {v0, p1, p2}, La/a/a/a/b/ap;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c(J)Z
    .locals 3
    .parameter

    .prologue
    .line 1355
    iget-boolean v0, p0, La/a/a/a/b/ax;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-wide v1, p0, La/a/a/a/b/ax;->b:J

    invoke-virtual {v0, p1, p2, v1, v2}, La/a/a/a/b/ap;->a(JJ)I

    move-result v0

    if-ltz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, La/a/a/a/b/ax;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-wide v1, p0, La/a/a/a/b/ax;->c:J

    invoke-virtual {v0, p1, p2, v1, v2}, La/a/a/a/b/ap;->a(JJ)I

    move-result v0

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final clear()V
    .locals 2

    .prologue
    .line 1344
    new-instance v0, La/a/a/a/b/bc;

    invoke-direct {v0, p0}, La/a/a/a/b/bc;-><init>(La/a/a/a/b/ax;)V

    .line 1345
    :goto_0
    invoke-virtual {v0}, La/a/a/a/b/bc;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1346
    invoke-virtual {v0}, La/a/a/a/b/bc;->e()La/a/a/a/b/at;

    .line 1347
    invoke-virtual {v0}, La/a/a/a/b/bc;->remove()V

    goto :goto_0

    .line 1349
    :cond_0
    return-void
.end method

.method public final bridge synthetic comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 1309
    iget-object v0, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-object v0, v0, La/a/a/a/b/ap;->k:La/a/a/a/b/cc;

    return-object v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 1431
    new-instance v0, La/a/a/a/b/bc;

    invoke-direct {v0, p0}, La/a/a/a/b/bc;-><init>(La/a/a/a/b/ax;)V

    .line 1433
    :cond_0
    invoke-virtual {v0}, La/a/a/a/b/bc;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1434
    invoke-virtual {v0}, La/a/a/a/b/bc;->e()La/a/a/a/b/at;

    move-result-object v1

    iget-object v1, v1, La/a/a/a/b/at;->b:Ljava/lang/Object;

    .line 1435
    if-nez v1, :cond_1

    if-nez p1, :cond_0

    :goto_0
    const/4 v0, 0x1

    .line 1437
    :goto_1
    return v0

    .line 1435
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1437
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final d()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1543
    invoke-virtual {p0}, La/a/a/a/b/ax;->m()La/a/a/a/b/at;

    move-result-object v0

    .line 1544
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1545
    :cond_0
    invoke-virtual {v0}, La/a/a/a/b/at;->k()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, La/a/a/a/b/ax;->n()La/a/a/a/b/at;

    move-result-object v0

    .line 1549
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1550
    :cond_0
    invoke-virtual {v0}, La/a/a/a/b/at;->k()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final e(J)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .line 1442
    invoke-virtual {p0, p1, p2}, La/a/a/a/b/ax;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    invoke-virtual {v0, p1, p2}, La/a/a/a/b/ap;->c(J)La/a/a/a/b/at;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, La/a/a/a/b/at;->b:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a/a/a/b/ax;->b_:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final f(J)La/a/a/a/b/bv;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "La/a/a/a/b/bv",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1482
    iget-boolean v0, p0, La/a/a/a/b/ax;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, La/a/a/a/b/ax;

    iget-object v1, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-wide v2, p0, La/a/a/a/b/ax;->b:J

    iget-boolean v4, p0, La/a/a/a/b/ax;->d:Z

    move-wide v5, p1

    invoke-direct/range {v0 .. v7}, La/a/a/a/b/ax;-><init>(La/a/a/a/b/ap;JZJZ)V

    .line 1483
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-wide v1, p0, La/a/a/a/b/ax;->c:J

    invoke-virtual {v0, p1, p2, v1, v2}, La/a/a/a/b/ap;->a(JJ)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v0, La/a/a/a/b/ax;

    iget-object v1, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-wide v2, p0, La/a/a/a/b/ax;->b:J

    iget-boolean v4, p0, La/a/a/a/b/ax;->d:Z

    move-wide v5, p1

    invoke-direct/range {v0 .. v7}, La/a/a/a/b/ax;-><init>(La/a/a/a/b/ap;JZJZ)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public final f()La/a/a/a/b/cm;
    .locals 2

    .prologue
    .line 1406
    iget-object v0, p0, La/a/a/a/b/ax;->g:La/a/a/a/b/cm;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/a/b/ba;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/a/a/a/b/ba;-><init>(La/a/a/a/b/ax;B)V

    iput-object v0, p0, La/a/a/a/b/ax;->g:La/a/a/a/b/cm;

    .line 1407
    :cond_0
    iget-object v0, p0, La/a/a/a/b/ax;->g:La/a/a/a/b/cm;

    return-object v0
.end method

.method public final synthetic firstKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1309
    invoke-virtual {p0}, La/a/a/a/b/ax;->d()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final g(J)La/a/a/a/b/bv;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "La/a/a/a/b/bv",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1486
    iget-boolean v0, p0, La/a/a/a/b/ax;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, La/a/a/a/b/ax;

    iget-object v1, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-wide v5, p0, La/a/a/a/b/ax;->c:J

    iget-boolean v7, p0, La/a/a/a/b/ax;->e:Z

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, La/a/a/a/b/ax;-><init>(La/a/a/a/b/ap;JZJZ)V

    .line 1487
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-wide v1, p0, La/a/a/a/b/ax;->b:J

    invoke-virtual {v0, p1, p2, v1, v2}, La/a/a/a/b/ap;->a(JJ)I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, La/a/a/a/b/ax;

    iget-object v1, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-wide v5, p0, La/a/a/a/b/ax;->c:J

    iget-boolean v7, p0, La/a/a/a/b/ax;->e:Z

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, La/a/a/a/b/ax;-><init>(La/a/a/a/b/ap;JZJZ)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 1533
    invoke-virtual {p0}, La/a/a/a/b/ax;->m()La/a/a/a/b/at;

    move-result-object v0

    .line 1534
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1535
    :cond_0
    iget-wide v0, v0, La/a/a/a/b/at;->a:J

    return-wide v0
.end method

.method public final i()J
    .locals 2

    .prologue
    .line 1538
    invoke-virtual {p0}, La/a/a/a/b/ax;->n()La/a/a/a/b/at;

    move-result-object v0

    .line 1539
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1540
    :cond_0
    iget-wide v0, v0, La/a/a/a/b/at;->a:J

    return-wide v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 1476
    new-instance v0, La/a/a/a/b/bc;

    invoke-direct {v0, p0}, La/a/a/a/b/bc;-><init>(La/a/a/a/b/ax;)V

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

.method public final j()La/a/a/a/c/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/c/q",
            "<",
            "La/a/a/a/b/bj",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1359
    iget-object v0, p0, La/a/a/a/b/ax;->f:La/a/a/a/c/q;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/a/b/ay;

    invoke-direct {v0, p0}, La/a/a/a/b/ay;-><init>(La/a/a/a/b/ax;)V

    iput-object v0, p0, La/a/a/a/b/ax;->f:La/a/a/a/c/q;

    .line 1399
    :cond_0
    iget-object v0, p0, La/a/a/a/b/ax;->f:La/a/a/a/c/q;

    return-object v0
.end method

.method public final k()La/a/a/a/b/cc;
    .locals 1

    .prologue
    .line 1479
    iget-object v0, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-object v0, v0, La/a/a/a/b/ap;->k:La/a/a/a/b/cc;

    return-object v0
.end method

.method public final synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1309
    invoke-virtual {p0}, La/a/a/a/b/ax;->f()La/a/a/a/b/cm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic l()La/a/a/a/c/p;
    .locals 1

    .prologue
    .line 1309
    invoke-virtual {p0}, La/a/a/a/b/ax;->j()La/a/a/a/c/q;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic lastKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1309
    invoke-virtual {p0}, La/a/a/a/b/ax;->e()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final m()La/a/a/a/b/at;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/b/at",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1501
    iget-object v1, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-object v1, v1, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    if-nez v1, :cond_1

    .line 1512
    :cond_0
    :goto_0
    return-object v0

    .line 1504
    :cond_1
    iget-boolean v1, p0, La/a/a/a/b/ax;->d:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-object v1, v1, La/a/a/a/b/ap;->d:La/a/a/a/b/at;

    .line 1511
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v2, p0, La/a/a/a/b/ax;->e:Z

    if-nez v2, :cond_3

    iget-object v2, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-wide v3, v1, La/a/a/a/b/at;->a:J

    iget-wide v5, p0, La/a/a/a/b/ax;->c:J

    invoke-virtual {v2, v3, v4, v5, v6}, La/a/a/a/b/ap;->a(JJ)I

    move-result v2

    if-gez v2, :cond_0

    :cond_3
    move-object v0, v1

    .line 1512
    goto :goto_0

    .line 1506
    :cond_4
    iget-object v1, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-wide v2, p0, La/a/a/a/b/ax;->b:J

    invoke-virtual {v1, v2, v3}, La/a/a/a/b/ap;->d(J)La/a/a/a/b/at;

    move-result-object v1

    .line 1508
    iget-object v2, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-wide v3, v1, La/a/a/a/b/at;->a:J

    iget-wide v5, p0, La/a/a/a/b/ax;->b:J

    invoke-virtual {v2, v3, v4, v5, v6}, La/a/a/a/b/ap;->a(JJ)I

    move-result v2

    if-gez v2, :cond_2

    invoke-virtual {v1}, La/a/a/a/b/at;->i()La/a/a/a/b/at;

    move-result-object v1

    goto :goto_1
.end method

.method public final n()La/a/a/a/b/at;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/b/at",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1519
    iget-object v1, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-object v1, v1, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    if-nez v1, :cond_1

    .line 1530
    :cond_0
    :goto_0
    return-object v0

    .line 1522
    :cond_1
    iget-boolean v1, p0, La/a/a/a/b/ax;->e:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-object v1, v1, La/a/a/a/b/ap;->e:La/a/a/a/b/at;

    .line 1529
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v2, p0, La/a/a/a/b/ax;->d:Z

    if-nez v2, :cond_3

    iget-object v2, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-wide v3, v1, La/a/a/a/b/at;->a:J

    iget-wide v5, p0, La/a/a/a/b/ax;->b:J

    invoke-virtual {v2, v3, v4, v5, v6}, La/a/a/a/b/ap;->a(JJ)I

    move-result v2

    if-ltz v2, :cond_0

    :cond_3
    move-object v0, v1

    .line 1530
    goto :goto_0

    .line 1524
    :cond_4
    iget-object v1, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-wide v2, p0, La/a/a/a/b/ax;->c:J

    invoke-virtual {v1, v2, v3}, La/a/a/a/b/ap;->d(J)La/a/a/a/b/at;

    move-result-object v1

    .line 1526
    iget-object v2, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-wide v3, v1, La/a/a/a/b/at;->a:J

    iget-wide v5, p0, La/a/a/a/b/ax;->c:J

    invoke-virtual {v2, v3, v4, v5, v6}, La/a/a/a/b/ap;->a(JJ)I

    move-result v2

    if-ltz v2, :cond_2

    invoke-virtual {v1}, La/a/a/a/b/at;->j()La/a/a/a/b/at;

    move-result-object v1

    goto :goto_1
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1309
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, La/a/a/a/b/ax;->a(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1463
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La/a/a/a/b/ax;->a(J)Ljava/lang/Object;

    move-result-object v0

    .line 1464
    iget-object v1, p0, La/a/a/a/b/ax;->i:La/a/a/a/b/ap;

    iget-boolean v1, v1, La/a/a/a/b/ap;->i:Z

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a/a/a/b/ax;->b_:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final size()I
    .locals 3

    .prologue
    .line 1467
    new-instance v1, La/a/a/a/b/bc;

    invoke-direct {v1, p0}, La/a/a/a/b/bc;-><init>(La/a/a/a/b/ax;)V

    .line 1468
    const/4 v0, 0x0

    .line 1469
    :goto_0
    invoke-virtual {v1}, La/a/a/a/b/bc;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1470
    add-int/lit8 v0, v0, 0x1

    .line 1471
    invoke-virtual {v1}, La/a/a/a/b/bc;->e()La/a/a/a/b/at;

    goto :goto_0

    .line 1473
    :cond_0
    return v0
.end method

.method public final synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1309
    invoke-virtual {p0}, La/a/a/a/b/ax;->b()La/a/a/a/c/j;

    move-result-object v0

    return-object v0
.end method
