.class final Lcom/google/a/c/be;
.super Lcom/google/a/c/dz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/dz",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final c:Lcom/google/a/c/dz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dz",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/a/c/dz;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/dz",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/google/a/c/dz;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/ih;->a(Ljava/util/Comparator;)Lcom/google/a/c/ih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/ih;->a()Lcom/google/a/c/ih;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/c/dz;-><init>(Ljava/util/Comparator;)V

    .line 33
    iput-object p1, p0, Lcom/google/a/c/be;->c:Lcom/google/a/c/dz;

    .line 34
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/a/c/be;->c:Lcom/google/a/c/dz;

    invoke-virtual {v0, p1}, Lcom/google/a/c/dz;->a(Ljava/lang/Object;)I

    move-result v0

    .line 103
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 106
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/a/c/be;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method final a(Ljava/lang/Object;Z)Lcom/google/a/c/dz;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/a/c/dz",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/a/c/be;->c:Lcom/google/a/c/dz;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/c/dz;->d(Ljava/lang/Object;Z)Lcom/google/a/c/dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dz;->b_()Lcom/google/a/c/dz;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/a/c/dz;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/google/a/c/dz",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/a/c/be;->c:Lcom/google/a/c/dz;

    invoke-virtual {v0, p3, p4, p1, p2}, Lcom/google/a/c/dz;->b(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/a/c/dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dz;->b_()Lcom/google/a/c/dz;

    move-result-object v0

    return-object v0
.end method

.method final b(Ljava/lang/Object;Z)Lcom/google/a/c/dz;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/a/c/dz",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/a/c/be;->c:Lcom/google/a/c/dz;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/c/dz;->c(Ljava/lang/Object;Z)Lcom/google/a/c/dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dz;->b_()Lcom/google/a/c/dz;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/a/c/lj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/lj",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/a/c/be;->c:Lcom/google/a/c/dz;

    invoke-virtual {v0}, Lcom/google/a/c/dz;->c()Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method

.method public final b_()Lcom/google/a/c/dz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dz",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/a/c/be;->c:Lcom/google/a/c/dz;

    return-object v0
.end method

.method public final c()Lcom/google/a/c/lj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/lj",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/a/c/be;->c:Lcom/google/a/c/dz;

    invoke-virtual {v0}, Lcom/google/a/c/dz;->b()Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method

.method public final ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/a/c/be;->c:Lcom/google/a/c/dz;

    invoke-virtual {v0, p1}, Lcom/google/a/c/dz;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final d()Lcom/google/a/c/dz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dz",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/a/c/be;->c:Lcom/google/a/c/dz;

    invoke-virtual {v0}, Lcom/google/a/c/dz;->b()Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic descendingSet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/a/c/be;->c:Lcom/google/a/c/dz;

    return-object v0
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/a/c/be;->c:Lcom/google/a/c/dz;

    invoke-virtual {v0}, Lcom/google/a/c/dz;->e()Z

    move-result v0

    return v0
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
    .line 87
    iget-object v0, p0, Lcom/google/a/c/be;->c:Lcom/google/a/c/dz;

    invoke-virtual {v0, p1}, Lcom/google/a/c/dz;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 97
    iget-object v0, p0, Lcom/google/a/c/be;->c:Lcom/google/a/c/dz;

    invoke-virtual {v0, p1}, Lcom/google/a/c/dz;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/a/c/be;->c:Lcom/google/a/c/dz;

    invoke-virtual {v0}, Lcom/google/a/c/dz;->c()Lcom/google/a/c/lj;

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
    .line 82
    iget-object v0, p0, Lcom/google/a/c/be;->c:Lcom/google/a/c/dz;

    invoke-virtual {v0, p1}, Lcom/google/a/c/dz;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/a/c/be;->c:Lcom/google/a/c/dz;

    invoke-virtual {v0}, Lcom/google/a/c/dz;->size()I

    move-result v0

    return v0
.end method
