.class final enum Lcom/google/a/b/y;
.super Lcom/google/a/b/w;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 451
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/a/b/w;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/a/b/aq;Lcom/google/a/b/ap;Lcom/google/a/b/ap;)Lcom/google/a/b/ap;
    .locals 1
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
            "<TK;TV;>;",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 461
    invoke-super {p0, p1, p2, p3}, Lcom/google/a/b/w;->a(Lcom/google/a/b/aq;Lcom/google/a/b/ap;Lcom/google/a/b/ap;)Lcom/google/a/b/ap;

    move-result-object v0

    .line 462
    invoke-static {p2, v0}, Lcom/google/a/b/y;->a(Lcom/google/a/b/ap;Lcom/google/a/b/ap;)V

    .line 463
    return-object v0
.end method

.method final a(Lcom/google/a/b/aq;Ljava/lang/Object;ILcom/google/a/b/ap;)Lcom/google/a/b/ap;
    .locals 1
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
            "<TK;TV;>;TK;I",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 455
    new-instance v0, Lcom/google/a/b/ax;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/a/b/ax;-><init>(Ljava/lang/Object;ILcom/google/a/b/ap;)V

    return-object v0
.end method
