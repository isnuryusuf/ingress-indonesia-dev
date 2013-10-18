.class Lcom/google/a/c/jg;
.super Lcom/google/a/c/jf;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/jf",
        "<TE;>;",
        "Ljava/util/SortedSet",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/SortedSet;Lcom/google/a/a/ao;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Lcom/google/a/a/ao",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 996
    invoke-direct {p0, p1, p2}, Lcom/google/a/c/jf;-><init>(Ljava/util/Set;Lcom/google/a/a/ao;)V

    .line 997
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/google/a/c/jg;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1022
    invoke-virtual {p0}, Lcom/google/a/c/jg;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1012
    new-instance v1, Lcom/google/a/c/jg;

    iget-object v0, p0, Lcom/google/a/c/jg;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v2, p0, Lcom/google/a/c/jg;->b:Lcom/google/a/a/ao;

    invoke-direct {v1, v0, v2}, Lcom/google/a/c/jg;-><init>(Ljava/util/SortedSet;Lcom/google/a/a/ao;)V

    return-object v1
.end method

.method public last()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/google/a/c/jg;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    .line 1029
    :goto_0
    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v1

    .line 1030
    iget-object v2, p0, Lcom/google/a/c/jg;->b:Lcom/google/a/a/ao;

    invoke-interface {v2, v1}, Lcom/google/a/a/ao;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1031
    return-object v1

    .line 1033
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    goto :goto_0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1006
    new-instance v1, Lcom/google/a/c/jg;

    iget-object v0, p0, Lcom/google/a/c/jg;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v2, p0, Lcom/google/a/c/jg;->b:Lcom/google/a/a/ao;

    invoke-direct {v1, v0, v2}, Lcom/google/a/c/jg;-><init>(Ljava/util/SortedSet;Lcom/google/a/a/ao;)V

    return-object v1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1017
    new-instance v1, Lcom/google/a/c/jg;

    iget-object v0, p0, Lcom/google/a/c/jg;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v2, p0, Lcom/google/a/c/jg;->b:Lcom/google/a/a/ao;

    invoke-direct {v1, v0, v2}, Lcom/google/a/c/jg;-><init>(Ljava/util/SortedSet;Lcom/google/a/a/ao;)V

    return-object v1
.end method
