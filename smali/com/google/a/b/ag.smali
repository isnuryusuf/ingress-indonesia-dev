.class final Lcom/google/a/b/ag;
.super Lcom/google/a/b/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/b/o",
        "<TK;TV;>.com/google/a/b/r<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/a/b/o;


# direct methods
.method constructor <init>(Lcom/google/a/b/o;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 4593
    iput-object p1, p0, Lcom/google/a/b/ag;->c:Lcom/google/a/b/o;

    .line 4594
    invoke-direct {p0, p1, p2}, Lcom/google/a/b/r;-><init>(Lcom/google/a/b/o;Ljava/util/concurrent/ConcurrentMap;)V

    .line 4595
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4604
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 4614
    :cond_0
    :goto_0
    return v0

    .line 4607
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 4608
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 4609
    if-eqz v1, :cond_0

    .line 4612
    iget-object v2, p0, Lcom/google/a/b/ag;->c:Lcom/google/a/b/o;

    invoke-virtual {v2, v1}, Lcom/google/a/b/o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4614
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/a/b/ag;->c:Lcom/google/a/b/o;

    iget-object v2, v2, Lcom/google/a/b/o;->h:Lcom/google/a/a/x;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 4599
    new-instance v0, Lcom/google/a/b/af;

    iget-object v1, p0, Lcom/google/a/b/ag;->c:Lcom/google/a/b/o;

    invoke-direct {v0, v1}, Lcom/google/a/b/af;-><init>(Lcom/google/a/b/o;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4619
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 4624
    :cond_0
    :goto_0
    return v0

    .line 4622
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 4623
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 4624
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/a/b/ag;->c:Lcom/google/a/b/o;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/a/b/o;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
