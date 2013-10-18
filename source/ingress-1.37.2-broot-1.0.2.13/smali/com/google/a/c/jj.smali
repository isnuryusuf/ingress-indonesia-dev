.class final Lcom/google/a/c/jj;
.super Lcom/google/a/c/cq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/cq",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final transient a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final transient b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field transient c:Lcom/google/a/c/cq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/cq",
            "<TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/a/c/cq;-><init>()V

    .line 37
    invoke-static {p1, p2}, Lcom/google/a/c/jj;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    iput-object p1, p0, Lcom/google/a/c/jj;->a:Ljava/lang/Object;

    .line 39
    iput-object p2, p0, Lcom/google/a/c/jj;->b:Ljava/lang/Object;

    .line 40
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/c/cq;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/a/c/cq",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/a/c/cq;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/a/c/jj;->a:Ljava/lang/Object;

    .line 45
    iput-object p2, p0, Lcom/google/a/c/jj;->b:Ljava/lang/Object;

    .line 46
    iput-object p3, p0, Lcom/google/a/c/jj;->c:Lcom/google/a/c/cq;

    .line 47
    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/google/a/c/am;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/a/c/jj;->e()Lcom/google/a/c/cq;

    move-result-object v0

    return-object v0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method final c()Lcom/google/a/c/du;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/du",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/a/c/jj;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/a/c/du;->b(Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/a/c/jj;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/a/c/jj;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final d()Lcom/google/a/c/du;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/du",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/a/c/jj;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/a/c/jj;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/a/c/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/du;->b(Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/google/a/c/cq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/cq",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/a/c/jj;->c:Lcom/google/a/c/cq;

    .line 90
    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/google/a/c/jj;

    iget-object v1, p0, Lcom/google/a/c/jj;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/a/c/jj;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/a/c/jj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/c/cq;)V

    iput-object v0, p0, Lcom/google/a/c/jj;->c:Lcom/google/a/c/cq;

    .line 94
    :cond_0
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/a/c/jj;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/c/jj;->b:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method
