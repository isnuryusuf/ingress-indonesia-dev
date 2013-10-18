.class final Lcom/google/a/c/cc;
.super Lcom/google/a/c/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/y",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/a/c/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/bz",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/a/c/cb;


# direct methods
.method constructor <init>(Lcom/google/a/c/cb;Lcom/google/a/c/bz;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/bz",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 446
    iput-object p1, p0, Lcom/google/a/c/cc;->b:Lcom/google/a/c/cb;

    invoke-direct {p0}, Lcom/google/a/c/y;-><init>()V

    .line 447
    iput-object p2, p0, Lcom/google/a/c/cc;->a:Lcom/google/a/c/bz;

    .line 448
    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/a/c/cc;->a:Lcom/google/a/c/bz;

    iget-object v0, v0, Lcom/google/a/c/bz;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/a/c/cc;->a:Lcom/google/a/c/bz;

    iget-object v0, v0, Lcom/google/a/c/bz;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 459
    iget-object v0, p0, Lcom/google/a/c/cc;->a:Lcom/google/a/c/bz;

    iget-object v3, v0, Lcom/google/a/c/bz;->c:Ljava/lang/Object;

    .line 460
    invoke-static {p1}, Lcom/google/a/c/by;->a(Ljava/lang/Object;)I

    move-result v4

    .line 461
    iget-object v0, p0, Lcom/google/a/c/cc;->a:Lcom/google/a/c/bz;

    iget v0, v0, Lcom/google/a/c/bz;->d:I

    if-ne v4, v0, :cond_0

    invoke-static {p1, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    :goto_0
    return-object p1

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/google/a/c/cc;->b:Lcom/google/a/c/cb;

    iget-object v0, v0, Lcom/google/a/c/cb;->a:Lcom/google/a/c/ca;

    iget-object v0, v0, Lcom/google/a/c/ca;->a:Lcom/google/a/c/by;

    invoke-static {v0, p1, v4}, Lcom/google/a/c/by;->b(Lcom/google/a/c/by;Ljava/lang/Object;I)Lcom/google/a/c/bz;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    const-string/jumbo v5, "value already present: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v5, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 466
    iget-object v0, p0, Lcom/google/a/c/cc;->b:Lcom/google/a/c/cb;

    iget-object v0, v0, Lcom/google/a/c/cb;->a:Lcom/google/a/c/ca;

    iget-object v0, v0, Lcom/google/a/c/ca;->a:Lcom/google/a/c/by;

    iget-object v1, p0, Lcom/google/a/c/cc;->a:Lcom/google/a/c/bz;

    invoke-static {v0, v1}, Lcom/google/a/c/by;->a(Lcom/google/a/c/by;Lcom/google/a/c/bz;)V

    .line 467
    new-instance v0, Lcom/google/a/c/bz;

    iget-object v1, p0, Lcom/google/a/c/cc;->a:Lcom/google/a/c/bz;

    iget-object v1, v1, Lcom/google/a/c/bz;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/a/c/cc;->a:Lcom/google/a/c/bz;

    iget v2, v2, Lcom/google/a/c/bz;->b:I

    invoke-direct {v0, v1, v2, p1, v4}, Lcom/google/a/c/bz;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 469
    iget-object v1, p0, Lcom/google/a/c/cc;->b:Lcom/google/a/c/cb;

    iget-object v1, v1, Lcom/google/a/c/cb;->a:Lcom/google/a/c/ca;

    iget-object v1, v1, Lcom/google/a/c/ca;->a:Lcom/google/a/c/by;

    invoke-static {v1, v0}, Lcom/google/a/c/by;->b(Lcom/google/a/c/by;Lcom/google/a/c/bz;)V

    .line 470
    iget-object v1, p0, Lcom/google/a/c/cc;->b:Lcom/google/a/c/cb;

    iget-object v2, p0, Lcom/google/a/c/cc;->b:Lcom/google/a/c/cb;

    iget-object v2, v2, Lcom/google/a/c/cb;->a:Lcom/google/a/c/ca;

    iget-object v2, v2, Lcom/google/a/c/ca;->a:Lcom/google/a/c/by;

    invoke-static {v2}, Lcom/google/a/c/by;->a(Lcom/google/a/c/by;)I

    move-result v2

    iput v2, v1, Lcom/google/a/c/cb;->e:I

    .line 471
    iget-object v1, p0, Lcom/google/a/c/cc;->b:Lcom/google/a/c/cb;

    iget-object v1, v1, Lcom/google/a/c/cb;->d:Lcom/google/a/c/bz;

    iget-object v2, p0, Lcom/google/a/c/cc;->a:Lcom/google/a/c/bz;

    if-ne v1, v2, :cond_1

    .line 472
    iget-object v1, p0, Lcom/google/a/c/cc;->b:Lcom/google/a/c/cb;

    iput-object v0, v1, Lcom/google/a/c/cb;->d:Lcom/google/a/c/bz;

    .line 474
    :cond_1
    iput-object v0, p0, Lcom/google/a/c/cc;->a:Lcom/google/a/c/bz;

    move-object p1, v3

    .line 475
    goto :goto_0

    :cond_2
    move v0, v2

    .line 464
    goto :goto_1
.end method
