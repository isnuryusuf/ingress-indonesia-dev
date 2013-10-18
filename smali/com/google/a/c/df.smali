.class final Lcom/google/a/c/df;
.super Lcom/google/a/c/dc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/dc",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/google/a/c/dc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dc",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final transient b:I


# direct methods
.method constructor <init>(Lcom/google/a/c/dc;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/dc",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/google/a/c/dc;-><init>()V

    .line 518
    iput-object p1, p0, Lcom/google/a/c/df;->a:Lcom/google/a/c/dc;

    .line 519
    invoke-virtual {p1}, Lcom/google/a/c/dc;->size()I

    move-result v0

    iput v0, p0, Lcom/google/a/c/df;->b:I

    .line 520
    return-void
.end method

.method private b(I)I
    .locals 1
    .parameter

    .prologue
    .line 523
    iget v0, p0, Lcom/google/a/c/df;->b:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public final a(II)Lcom/google/a/c/dc;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/a/c/dc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 549
    iget v0, p0, Lcom/google/a/c/df;->b:I

    invoke-static {p1, p2, v0}, Lcom/google/a/a/an;->a(III)V

    .line 550
    iget-object v0, p0, Lcom/google/a/c/df;->a:Lcom/google/a/c/dc;

    iget v1, p0, Lcom/google/a/c/df;->b:I

    sub-int/2addr v1, p2

    iget v2, p0, Lcom/google/a/c/df;->b:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/dc;->a(II)Lcom/google/a/c/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dc;->g()Lcom/google/a/c/dc;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/a/c/df;->a:Lcom/google/a/c/dc;

    invoke-virtual {v0, p1}, Lcom/google/a/c/dc;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/a/c/df;->a:Lcom/google/a/c/dc;

    invoke-virtual {v0}, Lcom/google/a/c/dc;->e()Z

    move-result v0

    return v0
.end method

.method public final g()Lcom/google/a/c/dc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/a/c/df;->a:Lcom/google/a/c/dc;

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 555
    iget v0, p0, Lcom/google/a/c/df;->b:I

    invoke-static {p1, v0}, Lcom/google/a/a/an;->a(II)I

    .line 556
    iget-object v0, p0, Lcom/google/a/c/df;->a:Lcom/google/a/c/dc;

    invoke-direct {p0, p1}, Lcom/google/a/c/df;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/a/c/df;->a:Lcom/google/a/c/dc;

    invoke-virtual {v0, p1}, Lcom/google/a/c/dc;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 540
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/a/c/df;->b(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 513
    invoke-super {p0}, Lcom/google/a/c/dc;->b()Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/a/c/df;->a:Lcom/google/a/c/dc;

    invoke-virtual {v0, p1}, Lcom/google/a/c/dc;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 545
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/a/c/df;->b(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/a/c/dc;->a(I)Lcom/google/a/c/lk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter

    .prologue
    .line 513
    invoke-super {p0, p1}, Lcom/google/a/c/dc;->a(I)Lcom/google/a/c/lk;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/google/a/c/df;->b:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 513
    invoke-virtual {p0, p1, p2}, Lcom/google/a/c/df;->a(II)Lcom/google/a/c/dc;

    move-result-object v0

    return-object v0
.end method
