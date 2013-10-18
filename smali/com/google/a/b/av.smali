.class final enum Lcom/google/a/b/av;
.super Lcom/google/a/b/at;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 394
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/a/b/at;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/a/a/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/a/x",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    invoke-static {}, Lcom/google/a/a/x;->b()Lcom/google/a/a/x;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/google/a/b/aq;Lcom/google/a/b/ap;Ljava/lang/Object;I)Lcom/google/a/b/bd;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/b/aq",
            "<TK;TV;>;",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;TV;I)",
            "Lcom/google/a/b/bd",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 398
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    new-instance v0, Lcom/google/a/b/as;

    iget-object v1, p1, Lcom/google/a/b/aq;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2}, Lcom/google/a/b/as;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/a/b/ap;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/b/bk;

    iget-object v1, p1, Lcom/google/a/b/aq;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2, p4}, Lcom/google/a/b/bk;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/a/b/ap;I)V

    goto :goto_0
.end method
