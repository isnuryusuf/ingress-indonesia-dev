.class final Lcom/google/a/c/t;
.super Lcom/google/a/c/o;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/f",
        "<TK;TV;>.com/google/a/c/o;",
        "Ljava/util/SortedSet",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/f;


# direct methods
.method constructor <init>(Lcom/google/a/c/f;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/a/c/o;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/SortedSet",
            "<TV;>;",
            "Lcom/google/a/c/f",
            "<TK;TV;>.com/google/a/c/o;)V"
        }
    .end annotation

    .prologue
    .line 631
    iput-object p1, p0, Lcom/google/a/c/t;->a:Lcom/google/a/c/f;

    .line 632
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/a/c/o;-><init>(Lcom/google/a/c/f;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/a/c/o;)V

    .line 633
    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/google/a/c/t;->a()V

    .line 647
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/google/a/c/t;->a()V

    .line 659
    new-instance v1, Lcom/google/a/c/t;

    iget-object v2, p0, Lcom/google/a/c/t;->a:Lcom/google/a/c/f;

    iget-object v3, p0, Lcom/google/a/c/o;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v4, p0, Lcom/google/a/c/o;->d:Lcom/google/a/c/o;

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v1, v2, v3, v0, p0}, Lcom/google/a/c/t;-><init>(Lcom/google/a/c/f;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/a/c/o;)V

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/google/a/c/o;->d:Lcom/google/a/c/o;

    goto :goto_0
.end method

.method public final last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/google/a/c/t;->a()V

    .line 653
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/google/a/c/t;->a()V

    .line 667
    new-instance v1, Lcom/google/a/c/t;

    iget-object v2, p0, Lcom/google/a/c/t;->a:Lcom/google/a/c/f;

    iget-object v3, p0, Lcom/google/a/c/o;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v4, p0, Lcom/google/a/c/o;->d:Lcom/google/a/c/o;

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v1, v2, v3, v0, p0}, Lcom/google/a/c/t;-><init>(Lcom/google/a/c/f;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/a/c/o;)V

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/google/a/c/o;->d:Lcom/google/a/c/o;

    goto :goto_0
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/google/a/c/t;->a()V

    .line 675
    new-instance v1, Lcom/google/a/c/t;

    iget-object v2, p0, Lcom/google/a/c/t;->a:Lcom/google/a/c/f;

    iget-object v3, p0, Lcom/google/a/c/o;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v4, p0, Lcom/google/a/c/o;->d:Lcom/google/a/c/o;

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v1, v2, v3, v0, p0}, Lcom/google/a/c/t;-><init>(Lcom/google/a/c/f;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/a/c/o;)V

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/google/a/c/o;->d:Lcom/google/a/c/o;

    goto :goto_0
.end method
