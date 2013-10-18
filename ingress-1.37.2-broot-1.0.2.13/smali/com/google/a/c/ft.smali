.class final enum Lcom/google/a/c/ft;
.super Lcom/google/a/c/fm;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 428
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/a/c/fm;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/a/c/gi;Lcom/google/a/c/gh;Lcom/google/a/c/gh;)Lcom/google/a/c/gh;
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
            "Lcom/google/a/c/gi",
            "<TK;TV;>;",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 438
    invoke-super {p0, p1, p2, p3}, Lcom/google/a/c/fm;->a(Lcom/google/a/c/gi;Lcom/google/a/c/gh;Lcom/google/a/c/gh;)Lcom/google/a/c/gh;

    move-result-object v0

    .line 439
    invoke-static {p2, v0}, Lcom/google/a/c/ft;->b(Lcom/google/a/c/gh;Lcom/google/a/c/gh;)V

    .line 440
    return-object v0
.end method

.method final a(Lcom/google/a/c/gi;Ljava/lang/Object;ILcom/google/a/c/gh;)Lcom/google/a/c/gh;
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
            "Lcom/google/a/c/gi",
            "<TK;TV;>;TK;I",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 432
    new-instance v0, Lcom/google/a/c/gx;

    iget-object v1, p1, Lcom/google/a/c/gi;->g:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/a/c/gx;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/a/c/gh;)V

    return-object v0
.end method
