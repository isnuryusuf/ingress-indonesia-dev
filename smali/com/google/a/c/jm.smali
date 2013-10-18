.class final Lcom/google/a/c/jm;
.super Lcom/google/a/c/ec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/ec",
        "<TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/a/c/ks;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/ks",
            "<TR;TC;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-interface {p1}, Lcom/google/a/c/ks;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/a/c/ks;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/a/c/ks;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/a/c/jm;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/a/c/ec;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/jm;->a:Ljava/lang/Object;

    .line 38
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/jm;->b:Ljava/lang/Object;

    .line 39
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/jm;->c:Ljava/lang/Object;

    .line 40
    return-void
.end method


# virtual methods
.method final synthetic e()Ljava/util/Set;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/a/c/jm;->p()Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method final synthetic h()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/a/c/jm;->c:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/a/c/du;->b(Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/google/a/c/dh;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dh",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/a/c/jm;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/a/c/jm;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/a/c/jm;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/a/c/dh;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/dh;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/c/dh;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/dh;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/google/a/c/dh;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dh",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/a/c/jm;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/a/c/jm;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/a/c/jm;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/a/c/dh;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/dh;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/c/dh;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/dh;

    move-result-object v0

    return-object v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic m()Ljava/util/Map;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/a/c/jm;->k()Lcom/google/a/c/dh;

    move-result-object v0

    return-object v0
.end method

.method final p()Lcom/google/a/c/du;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/du",
            "<",
            "Lcom/google/a/c/ks",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/a/c/jm;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/a/c/jm;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/a/c/jm;->c:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/a/c/jm;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ks;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/du;->b(Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method final q()Lcom/google/a/c/ct;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/ct",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/a/c/jm;->c:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/a/c/du;->b(Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method
