.class final Lcom/google/a/c/r;
.super Lcom/google/a/c/p;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/f",
        "<TK;TV;>.com/google/a/c/o.com/google/a/c/p;",
        "Ljava/util/ListIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/google/a/c/q;


# direct methods
.method constructor <init>(Lcom/google/a/c/q;)V
    .locals 0
    .parameter

    .prologue
    .line 851
    iput-object p1, p0, Lcom/google/a/c/r;->d:Lcom/google/a/c/q;

    invoke-direct {p0, p1}, Lcom/google/a/c/p;-><init>(Lcom/google/a/c/o;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/a/c/q;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 853
    iput-object p1, p0, Lcom/google/a/c/r;->d:Lcom/google/a/c/q;

    .line 854
    invoke-virtual {p1}, Lcom/google/a/c/q;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/a/c/p;-><init>(Lcom/google/a/c/o;Ljava/util/Iterator;)V

    .line 855
    return-void
.end method

.method private b()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 858
    invoke-virtual {p0}, Lcom/google/a/c/p;->a()V

    iget-object v0, p0, Lcom/google/a/c/p;->a:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 888
    iget-object v0, p0, Lcom/google/a/c/r;->d:Lcom/google/a/c/q;

    invoke-virtual {v0}, Lcom/google/a/c/q;->isEmpty()Z

    move-result v0

    .line 889
    invoke-direct {p0}, Lcom/google/a/c/r;->b()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 890
    iget-object v1, p0, Lcom/google/a/c/r;->d:Lcom/google/a/c/q;

    iget-object v1, v1, Lcom/google/a/c/q;->g:Lcom/google/a/c/f;

    invoke-static {v1}, Lcom/google/a/c/f;->c(Lcom/google/a/c/f;)I

    .line 891
    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/google/a/c/r;->d:Lcom/google/a/c/q;

    invoke-virtual {v0}, Lcom/google/a/c/q;->c()V

    .line 894
    :cond_0
    return-void
.end method

.method public final hasPrevious()Z
    .locals 1

    .prologue
    .line 863
    invoke-direct {p0}, Lcom/google/a/c/r;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    .prologue
    .line 873
    invoke-direct {p0}, Lcom/google/a/c/r;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/google/a/c/r;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    .prologue
    .line 878
    invoke-direct {p0}, Lcom/google/a/c/r;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 883
    invoke-direct {p0}, Lcom/google/a/c/r;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 884
    return-void
.end method
