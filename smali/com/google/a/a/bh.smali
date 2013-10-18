.class abstract Lcom/google/a/a/bh;
.super Lcom/google/a/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/a/b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final b:Ljava/lang/CharSequence;

.field final c:Lcom/google/a/a/f;

.field final d:Z

.field e:I

.field f:I


# direct methods
.method protected constructor <init>(Lcom/google/a/a/bb;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/google/a/a/b;-><init>()V

    .line 540
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/a/bh;->e:I

    .line 544
    invoke-static {p1}, Lcom/google/a/a/bb;->a(Lcom/google/a/a/bb;)Lcom/google/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/bh;->c:Lcom/google/a/a/f;

    .line 545
    invoke-static {p1}, Lcom/google/a/a/bb;->b(Lcom/google/a/a/bb;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/a/a/bh;->d:Z

    .line 546
    invoke-static {p1}, Lcom/google/a/a/bb;->c(Lcom/google/a/a/bb;)I

    move-result v0

    iput v0, p0, Lcom/google/a/a/bh;->f:I

    .line 547
    iput-object p2, p0, Lcom/google/a/a/bh;->b:Ljava/lang/CharSequence;

    .line 548
    return-void
.end method


# virtual methods
.method abstract a(I)I
.end method

.method protected final synthetic a()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 522
    iget v0, p0, Lcom/google/a/a/bh;->e:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/a/a/bh;->e:I

    if-eq v1, v5, :cond_6

    iget v1, p0, Lcom/google/a/a/bh;->e:I

    invoke-virtual {p0, v1}, Lcom/google/a/a/bh;->a(I)I

    move-result v1

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/google/a/a/bh;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v5, p0, Lcom/google/a/a/bh;->e:I

    :goto_1
    iget v2, p0, Lcom/google/a/a/bh;->e:I

    if-ne v2, v0, :cond_8

    iget v1, p0, Lcom/google/a/a/bh;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/a/a/bh;->e:I

    iget v1, p0, Lcom/google/a/a/bh;->e:I

    iget-object v2, p0, Lcom/google/a/a/bh;->b:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    iput v5, p0, Lcom/google/a/a/bh;->e:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/a/a/bh;->b(I)I

    move-result v2

    iput v2, p0, Lcom/google/a/a/bh;->e:I

    goto :goto_1

    :goto_2
    if-ge v2, v1, :cond_7

    iget-object v0, p0, Lcom/google/a/a/bh;->c:Lcom/google/a/a/f;

    iget-object v3, p0, Lcom/google/a/a/bh;->b:Ljava/lang/CharSequence;

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/a/a/f;->b(C)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :goto_3
    if-le v0, v2, :cond_2

    iget-object v1, p0, Lcom/google/a/a/bh;->c:Lcom/google/a/a/f;

    iget-object v3, p0, Lcom/google/a/a/bh;->b:Ljava/lang/CharSequence;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/a/a/f;->b(C)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, v0, -0x1

    move v0, v1

    goto :goto_3

    :cond_2
    iget-boolean v1, p0, Lcom/google/a/a/bh;->d:Z

    if-eqz v1, :cond_3

    if-ne v2, v0, :cond_3

    iget v0, p0, Lcom/google/a/a/bh;->e:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/google/a/a/bh;->f:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    iget-object v0, p0, Lcom/google/a/a/bh;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v5, p0, Lcom/google/a/a/bh;->e:I

    :goto_4
    if-le v0, v2, :cond_5

    iget-object v1, p0, Lcom/google/a/a/bh;->c:Lcom/google/a/a/f;

    iget-object v3, p0, Lcom/google/a/a/bh;->b:Ljava/lang/CharSequence;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/a/a/f;->b(C)Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_4
    iget v1, p0, Lcom/google/a/a/bh;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/a/a/bh;->f:I

    :cond_5
    iget-object v1, p0, Lcom/google/a/a/bh;->b:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/a/a/bh;->b()Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v2, v0

    goto :goto_2
.end method

.method abstract b(I)I
.end method
