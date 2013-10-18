.class final Lcom/google/a/c/ko;
.super Lcom/google/a/c/kq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/kh",
        "<TR;TC;TV;>.com/google/a/c/kq<",
        "Ljava/util/Map$Entry",
        "<TR;",
        "Ljava/util/Map",
        "<TC;TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/kn;


# direct methods
.method constructor <init>(Lcom/google/a/c/kn;)V
    .locals 2
    .parameter

    .prologue
    .line 720
    iput-object p1, p0, Lcom/google/a/c/ko;->a:Lcom/google/a/c/kn;

    iget-object v0, p1, Lcom/google/a/c/kn;->a:Lcom/google/a/c/kh;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/a/c/kq;-><init>(Lcom/google/a/c/kh;B)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 735
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 736
    check-cast p1, Ljava/util/Map$Entry;

    .line 737
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/a/c/ko;->a:Lcom/google/a/c/kn;

    iget-object v1, v1, Lcom/google/a/c/kn;->a:Lcom/google/a/c/kh;

    iget-object v1, v1, Lcom/google/a/c/kh;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/a/c/as;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 741
    :cond_0
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/a/c/ko;->a:Lcom/google/a/c/kn;

    iget-object v0, v0, Lcom/google/a/c/kn;->a:Lcom/google/a/c/kh;

    iget-object v0, v0, Lcom/google/a/c/kh;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/a/c/kp;

    invoke-direct {v1, p0}, Lcom/google/a/c/kp;-><init>(Lcom/google/a/c/ko;)V

    invoke-static {v0, v1}, Lcom/google/a/c/hc;->a(Ljava/util/Set;Lcom/google/a/a/aa;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 745
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 746
    check-cast p1, Ljava/util/Map$Entry;

    .line 747
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/a/c/ko;->a:Lcom/google/a/c/kn;

    iget-object v1, v1, Lcom/google/a/c/kn;->a:Lcom/google/a/c/kh;

    iget-object v1, v1, Lcom/google/a/c/kh;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 751
    :cond_0
    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/google/a/c/ko;->a:Lcom/google/a/c/kn;

    iget-object v0, v0, Lcom/google/a/c/kn;->a:Lcom/google/a/c/kh;

    iget-object v0, v0, Lcom/google/a/c/kh;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
