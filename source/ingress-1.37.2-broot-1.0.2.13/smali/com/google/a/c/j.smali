.class Lcom/google/a/c/j;
.super Lcom/google/a/c/hl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/hl",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/f;


# direct methods
.method constructor <init>(Lcom/google/a/c/f;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 919
    iput-object p1, p0, Lcom/google/a/c/j;->a:Lcom/google/a/c/f;

    .line 920
    invoke-direct {p0, p2}, Lcom/google/a/c/hl;-><init>(Ljava/util/Map;)V

    .line 921
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 964
    invoke-virtual {p0}, Lcom/google/a/c/j;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/eg;->f(Ljava/util/Iterator;)V

    .line 965
    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 968
    iget-object v0, p0, Lcom/google/a/c/hl;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 972
    if-eq p0, p1, :cond_0

    iget-object v0, p0, Lcom/google/a/c/hl;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/google/a/c/hl;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 924
    iget-object v0, p0, Lcom/google/a/c/hl;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 926
    new-instance v1, Lcom/google/a/c/k;

    invoke-direct {v1, p0, v0}, Lcom/google/a/c/k;-><init>(Lcom/google/a/c/j;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 952
    .line 953
    iget-object v0, p0, Lcom/google/a/c/hl;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 954
    if-eqz v0, :cond_1

    .line 955
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    .line 956
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 957
    iget-object v0, p0, Lcom/google/a/c/j;->a:Lcom/google/a/c/f;

    invoke-static {v0, v2}, Lcom/google/a/c/f;->b(Lcom/google/a/c/f;I)I

    move v0, v2

    .line 959
    :goto_0
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method
