.class final Lcom/google/a/c/dg;
.super Lcom/google/a/c/dc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/dc",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final transient a:I

.field final transient b:I

.field final synthetic c:Lcom/google/a/c/dc;


# direct methods
.method constructor <init>(Lcom/google/a/c/dc;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/google/a/c/dg;->c:Lcom/google/a/c/dc;

    invoke-direct {p0}, Lcom/google/a/c/dc;-><init>()V

    .line 407
    iput p2, p0, Lcom/google/a/c/dg;->a:I

    .line 408
    iput p3, p0, Lcom/google/a/c/dg;->b:I

    .line 409
    return-void
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
    .line 424
    iget v0, p0, Lcom/google/a/c/dg;->b:I

    invoke-static {p1, p2, v0}, Lcom/google/a/a/an;->a(III)V

    .line 425
    iget-object v0, p0, Lcom/google/a/c/dg;->c:Lcom/google/a/c/dc;

    iget v1, p0, Lcom/google/a/c/dg;->a:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/a/c/dg;->a:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/dc;->a(II)Lcom/google/a/c/dc;

    move-result-object v0

    return-object v0
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x1

    return v0
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
    .line 418
    iget v0, p0, Lcom/google/a/c/dg;->b:I

    invoke-static {p1, v0}, Lcom/google/a/a/an;->a(II)I

    .line 419
    iget-object v0, p0, Lcom/google/a/c/dg;->c:Lcom/google/a/c/dc;

    iget v1, p0, Lcom/google/a/c/dg;->a:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 402
    invoke-super {p0}, Lcom/google/a/c/dc;->b()Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/a/c/dc;->a(I)Lcom/google/a/c/lk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter

    .prologue
    .line 402
    invoke-super {p0, p1}, Lcom/google/a/c/dc;->a(I)Lcom/google/a/c/lk;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/google/a/c/dg;->b:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 402
    invoke-virtual {p0, p1, p2}, Lcom/google/a/c/dg;->a(II)Lcom/google/a/c/dc;

    move-result-object v0

    return-object v0
.end method
