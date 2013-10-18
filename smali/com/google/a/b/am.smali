.class final Lcom/google/a/b/am;
.super Lcom/google/a/b/an;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/b/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/b/an",
        "<TK;TV;>;",
        "Lcom/google/a/b/n",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/a/b/e;Lcom/google/a/b/k;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/e",
            "<-TK;-TV;>;",
            "Lcom/google/a/b/k",
            "<-TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4897
    new-instance v1, Lcom/google/a/b/o;

    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/k;

    invoke-direct {v1, p1, v0}, Lcom/google/a/b/o;-><init>(Lcom/google/a/b/e;Lcom/google/a/b/k;)V

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/a/b/an;-><init>(Lcom/google/a/b/o;B)V

    .line 4898
    return-void
.end method

.method private e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 4910
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/a/b/am;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 4911
    :catch_0
    move-exception v0

    .line 4912
    new-instance v1, Lcom/google/a/i/a/w;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/a/i/a/w;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 4928
    invoke-direct {p0, p1}, Lcom/google/a/b/am;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 4904
    iget-object v0, p0, Lcom/google/a/b/am;->a:Lcom/google/a/b/o;

    invoke-virtual {v0, p1}, Lcom/google/a/b/o;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
