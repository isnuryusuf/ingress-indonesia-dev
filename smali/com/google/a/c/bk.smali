.class final Lcom/google/a/c/bk;
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


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/a/c/dz;-><init>(Ljava/util/Comparator;)V

    .line 39
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 123
    const/4 v0, -0x1

    return v0
.end method

.method final a([Ljava/lang/Object;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    return p2
.end method

.method public final a()Lcom/google/a/c/dc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {}, Lcom/google/a/c/dc;->d()Lcom/google/a/c/dc;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/Object;Z)Lcom/google/a/c/dz;
    .locals 0
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
    .line 108
    return-object p0
.end method

.method final a(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/a/c/dz;
    .locals 0
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
    .line 114
    return-object p0
.end method

.method final b(Ljava/lang/Object;Z)Lcom/google/a/c/dz;
    .locals 0
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
    .line 119
    return-object p0
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
    .line 59
    invoke-static {}, Lcom/google/a/c/eg;->a()Lcom/google/a/c/lj;

    move-result-object v0

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
    .line 64
    invoke-static {}, Lcom/google/a/c/eg;->a()Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
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
    .line 55
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
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
    .line 128
    new-instance v0, Lcom/google/a/c/bk;

    iget-object v1, p0, Lcom/google/a/c/bk;->a:Ljava/util/Comparator;

    invoke-static {v1}, Lcom/google/a/c/ih;->a(Ljava/util/Comparator;)Lcom/google/a/c/ih;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/c/ih;->a()Lcom/google/a/c/ih;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/c/bk;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/google/a/c/eg;->a()Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 82
    check-cast p1, Ljava/util/Set;

    .line 83
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/google/a/c/eg;->a()Lcom/google/a/c/lj;

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
    .line 103
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string/jumbo v0, "[]"

    return-object v0
.end method
