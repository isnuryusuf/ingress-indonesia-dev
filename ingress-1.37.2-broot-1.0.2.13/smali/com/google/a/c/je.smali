.class final Lcom/google/a/c/je;
.super Lcom/google/a/c/jg;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/jg",
        "<TE;>;",
        "Ljava/util/NavigableSet",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/NavigableSet;Lcom/google/a/a/ao;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet",
            "<TE;>;",
            "Lcom/google/a/a/ao",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1089
    invoke-direct {p0, p1, p2}, Lcom/google/a/c/jg;-><init>(Ljava/util/SortedSet;Lcom/google/a/a/ao;)V

    .line 1090
    return-void
.end method


# virtual methods
.method public final ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 1110
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/a/c/je;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/ee;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/google/a/c/je;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/c/je;->b:Lcom/google/a/a/ao;

    invoke-static {v0, v1}, Lcom/google/a/c/eg;->b(Ljava/util/Iterator;Lcom/google/a/a/ao;)Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method

.method public final descendingSet()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/google/a/c/je;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/c/je;->b:Lcom/google/a/a/ao;

    invoke-static {v0, v1}, Lcom/google/a/c/jc;->a(Ljava/util/NavigableSet;Lcom/google/a/a/ao;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 1105
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/a/c/je;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/eg;->e(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/google/a/c/je;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/NavigableSet;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/c/je;->b:Lcom/google/a/a/ao;

    invoke-static {v0, v1}, Lcom/google/a/c/jc;->a(Ljava/util/NavigableSet;Lcom/google/a/a/ao;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 1115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/c/je;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/ee;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1140
    invoke-virtual {p0}, Lcom/google/a/c/je;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 1099
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/c/je;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/eg;->e(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/google/a/c/je;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/NavigableSet;

    iget-object v1, p0, Lcom/google/a/c/je;->b:Lcom/google/a/a/ao;

    invoke-static {v0, v1}, Lcom/google/a/c/ee;->b(Ljava/lang/Iterable;Lcom/google/a/a/ao;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/google/a/c/je;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/c/je;->b:Lcom/google/a/a/ao;

    invoke-static {v0, v1}, Lcom/google/a/c/ee;->b(Ljava/lang/Iterable;Lcom/google/a/a/ao;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/google/a/c/je;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/NavigableSet;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/c/je;->b:Lcom/google/a/a/ao;

    invoke-static {v0, v1}, Lcom/google/a/c/jc;->a(Ljava/util/NavigableSet;Lcom/google/a/a/ao;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/google/a/c/je;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/NavigableSet;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/c/je;->b:Lcom/google/a/a/ao;

    invoke-static {v0, v1}, Lcom/google/a/c/jc;->a(Ljava/util/NavigableSet;Lcom/google/a/a/ao;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
