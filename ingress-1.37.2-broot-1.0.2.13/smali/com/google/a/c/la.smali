.class final Lcom/google/a/c/la;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/a/c/hu",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/a/c/lg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/lg",
            "<TE;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/a/c/hu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/hu",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/a/c/ky;


# direct methods
.method constructor <init>(Lcom/google/a/c/ky;)V
    .locals 1
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/google/a/c/la;->c:Lcom/google/a/c/ky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iget-object v0, p0, Lcom/google/a/c/la;->c:Lcom/google/a/c/ky;

    invoke-static {v0}, Lcom/google/a/c/ky;->a(Lcom/google/a/c/ky;)Lcom/google/a/c/lg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/la;->a:Lcom/google/a/c/lg;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 406
    iget-object v1, p0, Lcom/google/a/c/la;->a:Lcom/google/a/c/lg;

    if-nez v1, :cond_0

    .line 412
    :goto_0
    return v0

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/google/a/c/la;->c:Lcom/google/a/c/ky;

    invoke-static {v1}, Lcom/google/a/c/ky;->b(Lcom/google/a/c/ky;)Lcom/google/a/c/bt;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/c/la;->a:Lcom/google/a/c/lg;

    invoke-virtual {v2}, Lcom/google/a/c/lg;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/a/c/bt;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/a/c/la;->a:Lcom/google/a/c/lg;

    goto :goto_0

    .line 412
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/google/a/c/la;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/c/la;->c:Lcom/google/a/c/ky;

    iget-object v1, p0, Lcom/google/a/c/la;->a:Lcom/google/a/c/lg;

    invoke-static {v0, v1}, Lcom/google/a/c/ky;->a(Lcom/google/a/c/ky;Lcom/google/a/c/lg;)Lcom/google/a/c/hu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/la;->b:Lcom/google/a/c/hu;

    iget-object v1, p0, Lcom/google/a/c/la;->a:Lcom/google/a/c/lg;

    invoke-static {v1}, Lcom/google/a/c/lg;->g(Lcom/google/a/c/lg;)Lcom/google/a/c/lg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/c/la;->c:Lcom/google/a/c/ky;

    invoke-static {v2}, Lcom/google/a/c/ky;->c(Lcom/google/a/c/ky;)Lcom/google/a/c/lg;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/a/c/la;->a:Lcom/google/a/c/lg;

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/a/c/la;->a:Lcom/google/a/c/lg;

    invoke-static {v1}, Lcom/google/a/c/lg;->g(Lcom/google/a/c/lg;)Lcom/google/a/c/lg;

    move-result-object v1

    iput-object v1, p0, Lcom/google/a/c/la;->a:Lcom/google/a/c/lg;

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 433
    iget-object v0, p0, Lcom/google/a/c/la;->b:Lcom/google/a/c/hu;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 434
    iget-object v0, p0, Lcom/google/a/c/la;->c:Lcom/google/a/c/ky;

    iget-object v2, p0, Lcom/google/a/c/la;->b:Lcom/google/a/c/hu;

    invoke-interface {v2}, Lcom/google/a/c/hu;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/a/c/ky;->c(Ljava/lang/Object;I)I

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/c/la;->b:Lcom/google/a/c/hu;

    .line 436
    return-void

    :cond_0
    move v0, v1

    .line 433
    goto :goto_0
.end method
