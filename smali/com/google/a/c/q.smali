.class Lcom/google/a/c/q;
.super Lcom/google/a/c/o;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/f",
        "<TK;TV;>.com/google/a/c/o;",
        "Ljava/util/List",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic g:Lcom/google/a/c/f;


# direct methods
.method constructor <init>(Lcom/google/a/c/f;Ljava/lang/Object;Ljava/util/List;Lcom/google/a/c/o;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List",
            "<TV;>;",
            "Lcom/google/a/c/f",
            "<TK;TV;>.com/google/a/c/o;)V"
        }
    .end annotation

    .prologue
    .line 759
    iput-object p1, p0, Lcom/google/a/c/q;->g:Lcom/google/a/c/f;

    .line 760
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/a/c/o;-><init>(Lcom/google/a/c/f;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/a/c/o;)V

    .line 761
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/google/a/c/q;->a()V

    .line 799
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    .line 800
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 801
    iget-object v0, p0, Lcom/google/a/c/q;->g:Lcom/google/a/c/f;

    invoke-static {v0}, Lcom/google/a/c/f;->c(Lcom/google/a/c/f;)I

    .line 802
    if-eqz v1, :cond_0

    .line 803
    invoke-virtual {p0}, Lcom/google/a/c/q;->c()V

    .line 805
    :cond_0
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 769
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 770
    const/4 v0, 0x0

    .line 781
    :cond_0
    :goto_0
    return v0

    .line 772
    :cond_1
    invoke-virtual {p0}, Lcom/google/a/c/q;->size()I

    move-result v1

    .line 773
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 774
    if-eqz v0, :cond_0

    .line 775
    iget-object v2, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 776
    iget-object v3, p0, Lcom/google/a/c/q;->g:Lcom/google/a/c/f;

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, Lcom/google/a/c/f;->a(Lcom/google/a/c/f;I)I

    .line 777
    if-nez v1, :cond_0

    .line 778
    invoke-virtual {p0}, Lcom/google/a/c/q;->c()V

    goto :goto_0
.end method

.method final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 764
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/google/a/c/q;->a()V

    .line 787
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/google/a/c/q;->a()V

    .line 819
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 824
    invoke-virtual {p0}, Lcom/google/a/c/q;->a()V

    .line 825
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/google/a/c/q;->a()V

    .line 831
    new-instance v0, Lcom/google/a/c/r;

    invoke-direct {v0, p0}, Lcom/google/a/c/r;-><init>(Lcom/google/a/c/q;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/google/a/c/q;->a()V

    .line 837
    new-instance v0, Lcom/google/a/c/r;

    invoke-direct {v0, p0, p1}, Lcom/google/a/c/r;-><init>(Lcom/google/a/c/q;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/google/a/c/q;->a()V

    .line 810
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 811
    iget-object v1, p0, Lcom/google/a/c/q;->g:Lcom/google/a/c/f;

    invoke-static {v1}, Lcom/google/a/c/f;->b(Lcom/google/a/c/f;)I

    .line 812
    invoke-virtual {p0}, Lcom/google/a/c/q;->b()V

    .line 813
    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/google/a/c/q;->a()V

    .line 793
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 842
    invoke-virtual {p0}, Lcom/google/a/c/q;->a()V

    .line 843
    iget-object v1, p0, Lcom/google/a/c/q;->g:Lcom/google/a/c/f;

    iget-object v2, p0, Lcom/google/a/c/o;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/google/a/c/o;->d:Lcom/google/a/c/o;

    if-nez v3, :cond_0

    :goto_0
    invoke-static {v1, v2, v0, p0}, Lcom/google/a/c/f;->a(Lcom/google/a/c/f;Ljava/lang/Object;Ljava/util/List;Lcom/google/a/c/o;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/google/a/c/o;->d:Lcom/google/a/c/o;

    goto :goto_0
.end method
