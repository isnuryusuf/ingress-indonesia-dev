.class abstract Lcom/google/a/c/bf;
.super Lcom/google/a/c/br;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/c/ka;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/br",
        "<TE;>;",
        "Lcom/google/a/c/ka",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private transient a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field

.field private transient b:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation
.end field

.field private transient c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/a/c/hu",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/a/c/br;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/a/c/an;)Lcom/google/a/c/ka;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/a/c/an;",
            ")",
            "Lcom/google/a/c/ka",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/a/c/bf;->b()Lcom/google/a/c/ka;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/a/c/ka;->b(Ljava/lang/Object;Lcom/google/a/c/an;)Lcom/google/a/c/ka;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/c/ka;->m()Lcom/google/a/c/ka;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/a/c/an;Ljava/lang/Object;Lcom/google/a/c/an;)Lcom/google/a/c/ka;
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
    .line 74
    invoke-virtual {p0}, Lcom/google/a/c/bf;->b()Lcom/google/a/c/ka;

    move-result-object v0

    invoke-interface {v0, p3, p4, p1, p2}, Lcom/google/a/c/ka;->a(Ljava/lang/Object;Lcom/google/a/c/an;Ljava/lang/Object;Lcom/google/a/c/an;)Lcom/google/a/c/ka;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/c/ka;->m()Lcom/google/a/c/ka;

    move-result-object v0

    return-object v0
.end method

.method abstract b()Lcom/google/a/c/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/ka",
            "<TE;>;"
        }
    .end annotation
.end method

.method public final b(Ljava/lang/Object;Lcom/google/a/c/an;)Lcom/google/a/c/ka;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/a/c/an;",
            ")",
            "Lcom/google/a/c/ka",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/a/c/bf;->b()Lcom/google/a/c/ka;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/a/c/ka;->a(Ljava/lang/Object;Lcom/google/a/c/an;)Lcom/google/a/c/ka;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/c/ka;->m()Lcom/google/a/c/ka;

    move-result-object v0

    return-object v0
.end method

.method abstract c()Ljava/util/Iterator;
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
    .line 40
    iget-object v0, p0, Lcom/google/a/c/bf;->a:Ljava/util/Comparator;

    .line 41
    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/google/a/c/bf;->b()Lcom/google/a/c/ka;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/c/ka;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/ih;->a(Ljava/util/Comparator;)Lcom/google/a/c/ih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/ih;->a()Lcom/google/a/c/ih;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/bf;->a:Ljava/util/Comparator;

    .line 45
    :cond_0
    return-object v0
.end method

.method public final synthetic d()Ljava/util/Set;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/a/c/bf;->f()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected final e()Lcom/google/a/c/ht;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/ht",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/a/c/bf;->b()Lcom/google/a/c/ka;

    move-result-object v0

    return-object v0
.end method

.method public final e_()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/a/c/hu",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/a/c/bf;->c:Ljava/util/Set;

    .line 106
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/a/c/bg;

    invoke-direct {v0, p0}, Lcom/google/a/c/bg;-><init>(Lcom/google/a/c/bf;)V

    iput-object v0, p0, Lcom/google/a/c/bf;->c:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final f()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/a/c/bf;->b:Ljava/util/NavigableSet;

    .line 52
    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/google/a/c/ke;

    invoke-direct {v0, p0}, Lcom/google/a/c/ke;-><init>(Lcom/google/a/c/ka;)V

    iput-object v0, p0, Lcom/google/a/c/bf;->b:Ljava/util/NavigableSet;

    .line 55
    :cond_0
    return-object v0
.end method

.method public final g()Lcom/google/a/c/hu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/hu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/a/c/bf;->b()Lcom/google/a/c/ka;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/c/ka;->h()Lcom/google/a/c/hu;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/google/a/c/hu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/hu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/a/c/bf;->b()Lcom/google/a/c/ka;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/c/ka;->g()Lcom/google/a/c/hu;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/google/a/c/hu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/hu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/a/c/bf;->b()Lcom/google/a/c/ka;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/c/ka;->j()Lcom/google/a/c/hu;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {p0}, Lcom/google/a/c/hv;->a(Lcom/google/a/c/ht;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/google/a/c/hu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/hu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/a/c/bf;->b()Lcom/google/a/c/ka;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/c/ka;->i()Lcom/google/a/c/hu;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic k()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/a/c/bf;->b()Lcom/google/a/c/ka;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic l()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/a/c/bf;->b()Lcom/google/a/c/ka;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lcom/google/a/c/ka;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/ka",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/a/c/bf;->b()Lcom/google/a/c/ka;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/google/a/c/bf;->n()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {p0, p1}, Lcom/google/a/c/ig;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/google/a/c/bf;->e_()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
