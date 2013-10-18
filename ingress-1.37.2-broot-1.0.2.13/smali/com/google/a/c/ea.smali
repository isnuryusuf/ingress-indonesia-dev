.class public final Lcom/google/a/c/ea;
.super Lcom/google/a/c/dv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/dv",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 497
    invoke-direct {p0}, Lcom/google/a/c/dv;-><init>()V

    .line 498
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/a/c/ea;->c:Ljava/util/Comparator;

    .line 499
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/google/a/c/cu;
    .locals 0
    .parameter

    .prologue
    .line 490
    invoke-super {p0, p1}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    return-object p0
.end method

.method public final synthetic a(Ljava/lang/Iterable;)Lcom/google/a/c/cv;
    .locals 0
    .parameter

    .prologue
    .line 490
    invoke-super {p0, p1}, Lcom/google/a/c/dv;->b(Ljava/lang/Iterable;)Lcom/google/a/c/dv;

    return-object p0
.end method

.method public final synthetic a(Ljava/util/Iterator;)Lcom/google/a/c/cv;
    .locals 0
    .parameter

    .prologue
    .line 490
    invoke-super {p0, p1}, Lcom/google/a/c/dv;->b(Ljava/util/Iterator;)Lcom/google/a/c/dv;

    return-object p0
.end method

.method public final synthetic a([Ljava/lang/Object;)Lcom/google/a/c/cv;
    .locals 0
    .parameter

    .prologue
    .line 490
    invoke-super {p0, p1}, Lcom/google/a/c/dv;->b([Ljava/lang/Object;)Lcom/google/a/c/dv;

    return-object p0
.end method

.method public final synthetic a()Lcom/google/a/c/du;
    .locals 1

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/google/a/c/ea;->b()Lcom/google/a/c/dz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;)Lcom/google/a/c/cv;
    .locals 0
    .parameter

    .prologue
    .line 490
    invoke-super {p0, p1}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    return-object p0
.end method

.method public final bridge synthetic b(Ljava/lang/Iterable;)Lcom/google/a/c/dv;
    .locals 0
    .parameter

    .prologue
    .line 490
    invoke-super {p0, p1}, Lcom/google/a/c/dv;->b(Ljava/lang/Iterable;)Lcom/google/a/c/dv;

    return-object p0
.end method

.method public final bridge synthetic b(Ljava/util/Iterator;)Lcom/google/a/c/dv;
    .locals 0
    .parameter

    .prologue
    .line 490
    invoke-super {p0, p1}, Lcom/google/a/c/dv;->b(Ljava/util/Iterator;)Lcom/google/a/c/dv;

    return-object p0
.end method

.method public final bridge synthetic b([Ljava/lang/Object;)Lcom/google/a/c/dv;
    .locals 0
    .parameter

    .prologue
    .line 490
    invoke-super {p0, p1}, Lcom/google/a/c/dv;->b([Ljava/lang/Object;)Lcom/google/a/c/dv;

    return-object p0
.end method

.method public final b()Lcom/google/a/c/dz;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dz",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/a/c/ea;->a:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 562
    iget-object v1, p0, Lcom/google/a/c/ea;->c:Ljava/util/Comparator;

    iget v2, p0, Lcom/google/a/c/ea;->b:I

    invoke-static {v1, v2, v0}, Lcom/google/a/c/dz;->a(Ljava/util/Comparator;I[Ljava/lang/Object;)Lcom/google/a/c/dz;

    move-result-object v0

    .line 563
    invoke-virtual {v0}, Lcom/google/a/c/dz;->size()I

    move-result v1

    iput v1, p0, Lcom/google/a/c/ea;->b:I

    .line 564
    return-object v0
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)Lcom/google/a/c/dv;
    .locals 0
    .parameter

    .prologue
    .line 490
    invoke-super {p0, p1}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    return-object p0
.end method

.method public final d(Ljava/lang/Object;)Lcom/google/a/c/ea;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/a/c/ea",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 512
    invoke-super {p0, p1}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    .line 513
    return-object p0
.end method
