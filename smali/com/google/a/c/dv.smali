.class public Lcom/google/a/c/dv;
.super Lcom/google/a/c/cu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/cu",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/c/dv;-><init>(B)V

    .line 463
    return-void
.end method

.method private constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/google/a/c/cu;-><init>()V

    .line 467
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Lcom/google/a/c/cu;
    .locals 1
    .parameter

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Iterable;)Lcom/google/a/c/cv;
    .locals 1
    .parameter

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Lcom/google/a/c/dv;->b(Ljava/lang/Iterable;)Lcom/google/a/c/dv;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/util/Iterator;)Lcom/google/a/c/cv;
    .locals 1
    .parameter

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Lcom/google/a/c/dv;->b(Ljava/util/Iterator;)Lcom/google/a/c/dv;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a([Ljava/lang/Object;)Lcom/google/a/c/cv;
    .locals 1
    .parameter

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Lcom/google/a/c/dv;->b([Ljava/lang/Object;)Lcom/google/a/c/dv;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/google/a/c/du;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/du",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 530
    iget v0, p0, Lcom/google/a/c/dv;->b:I

    iget-object v1, p0, Lcom/google/a/c/dv;->a:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/a/c/du;->a(I[Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Lcom/google/a/c/du;->size()I

    move-result v1

    iput v1, p0, Lcom/google/a/c/dv;->b:I

    .line 534
    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/google/a/c/cv;
    .locals 1
    .parameter

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Iterable;)Lcom/google/a/c/dv;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/a/c/dv",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 507
    invoke-super {p0, p1}, Lcom/google/a/c/cu;->a(Ljava/lang/Iterable;)Lcom/google/a/c/cv;

    .line 508
    return-object p0
.end method

.method public b(Ljava/util/Iterator;)Lcom/google/a/c/dv;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/a/c/dv",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 521
    invoke-super {p0, p1}, Lcom/google/a/c/cu;->a(Ljava/util/Iterator;)Lcom/google/a/c/cv;

    .line 522
    return-object p0
.end method

.method public varargs b([Ljava/lang/Object;)Lcom/google/a/c/dv;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/a/c/dv",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 493
    invoke-super {p0, p1}, Lcom/google/a/c/cu;->a([Ljava/lang/Object;)Lcom/google/a/c/cv;

    .line 494
    return-object p0
.end method

.method public c(Ljava/lang/Object;)Lcom/google/a/c/dv;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/a/c/dv",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 479
    invoke-super {p0, p1}, Lcom/google/a/c/cu;->a(Ljava/lang/Object;)Lcom/google/a/c/cu;

    .line 480
    return-object p0
.end method
