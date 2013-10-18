.class abstract Lcom/google/a/c/af;
.super Lcom/google/a/c/aa;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/c/ka;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/aa",
        "<TE;>;",
        "Lcom/google/a/c/ka",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field

.field private transient b:Lcom/google/a/c/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/ka",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/a/c/aa;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/a/c/af;->a:Ljava/util/Comparator;

    .line 48
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/google/a/c/an;Ljava/lang/Object;Lcom/google/a/c/an;)Lcom/google/a/c/ka;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/a/c/an;",
            "TE;",
            "Lcom/google/a/c/an;",
            ")",
            "Lcom/google/a/c/ka",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/google/a/c/af;->b(Ljava/lang/Object;Lcom/google/a/c/an;)Lcom/google/a/c/ka;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/google/a/c/ka;->a(Ljava/lang/Object;Lcom/google/a/c/an;)Lcom/google/a/c/ka;

    move-result-object v0

    return-object v0
.end method

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
    .line 62
    iget-object v0, p0, Lcom/google/a/c/af;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method public final synthetic d()Ljava/util/Set;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/a/c/af;->f()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method final synthetic e()Ljava/util/Set;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/a/c/ke;

    invoke-direct {v0, p0}, Lcom/google/a/c/ke;-><init>(Lcom/google/a/c/ka;)V

    return-object v0
.end method

.method public f()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-super {p0}, Lcom/google/a/c/aa;->d()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method public g()Lcom/google/a/c/hu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/hu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/a/c/af;->b()Ljava/util/Iterator;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/hu;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lcom/google/a/c/hu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/hu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/a/c/af;->k()Ljava/util/Iterator;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/hu;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Lcom/google/a/c/hu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/hu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/a/c/af;->b()Ljava/util/Iterator;

    move-result-object v1

    .line 80
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/hu;

    .line 82
    invoke-interface {v0}, Lcom/google/a/c/hu;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/a/c/hu;->b()I

    move-result v0

    invoke-static {v2, v0}, Lcom/google/a/c/hv;->a(Ljava/lang/Object;I)Lcom/google/a/c/hu;

    move-result-object v0

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Lcom/google/a/c/hu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/hu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/a/c/af;->k()Ljava/util/Iterator;

    move-result-object v1

    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/hu;

    .line 94
    invoke-interface {v0}, Lcom/google/a/c/hu;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/a/c/hu;->b()I

    move-result v0

    invoke-static {v2, v0}, Lcom/google/a/c/hv;->a(Ljava/lang/Object;I)Lcom/google/a/c/hu;

    move-result-object v0

    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract k()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/a/c/hu",
            "<TE;>;>;"
        }
    .end annotation
.end method

.method final l()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/a/c/af;->m()Lcom/google/a/c/ka;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/hv;->a(Lcom/google/a/c/ht;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/google/a/c/ka;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/ka",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/a/c/af;->b:Lcom/google/a/c/ka;

    .line 121
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/a/c/ag;

    invoke-direct {v0, p0}, Lcom/google/a/c/ag;-><init>(Lcom/google/a/c/af;)V

    iput-object v0, p0, Lcom/google/a/c/af;->b:Lcom/google/a/c/ka;

    :cond_0
    return-object v0
.end method
