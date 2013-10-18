.class final La/a/a/a/b/w;
.super La/a/a/a/b/z;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field final synthetic c:I

.field final synthetic d:La/a/a/a/b/v;


# direct methods
.method constructor <init>(La/a/a/a/b/v;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, La/a/a/a/b/w;->d:La/a/a/a/b/v;

    iput p2, p0, La/a/a/a/b/w;->c:I

    invoke-direct {p0}, La/a/a/a/b/z;-><init>()V

    .line 115
    iget v0, p0, La/a/a/a/b/w;->c:I

    iput v0, p0, La/a/a/a/b/w;->a:I

    const/4 v0, -0x1

    iput v0, p0, La/a/a/a/b/w;->b:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0}, La/a/a/a/b/w;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, La/a/a/a/b/w;->d:La/a/a/a/b/v;

    iget v1, p0, La/a/a/a/b/w;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/a/b/w;->a:I

    iput v1, p0, La/a/a/a/b/w;->b:I

    invoke-virtual {v0, v1}, La/a/a/a/b/v;->g(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(J)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 123
    iget v0, p0, La/a/a/a/b/w;->b:I

    if-ne v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, La/a/a/a/b/w;->d:La/a/a/a/b/v;

    iget v1, p0, La/a/a/a/b/w;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/a/b/w;->a:I

    invoke-virtual {v0, v1, p1, p2}, La/a/a/a/b/v;->a(IJ)V

    .line 125
    iput v3, p0, La/a/a/a/b/w;->b:I

    .line 126
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, La/a/a/a/b/w;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, La/a/a/a/b/w;->d:La/a/a/a/b/v;

    iget v1, p0, La/a/a/a/b/w;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, La/a/a/a/b/w;->a:I

    iput v1, p0, La/a/a/a/b/w;->b:I

    invoke-virtual {v0, v1}, La/a/a/a/b/v;->g(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(J)V
    .locals 2
    .parameter

    .prologue
    .line 128
    iget v0, p0, La/a/a/a/b/w;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 129
    :cond_0
    iget-object v0, p0, La/a/a/a/b/w;->d:La/a/a/a/b/v;

    iget v1, p0, La/a/a/a/b/w;->b:I

    invoke-virtual {v0, v1, p1, p2}, La/a/a/a/b/v;->b(IJ)J

    .line 130
    return-void
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 116
    iget v0, p0, La/a/a/a/b/w;->a:I

    iget-object v1, p0, La/a/a/a/b/w;->d:La/a/a/a/b/v;

    invoke-virtual {v1}, La/a/a/a/b/v;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPrevious()Z
    .locals 1

    .prologue
    .line 117
    iget v0, p0, La/a/a/a/b/w;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final nextIndex()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, La/a/a/a/b/w;->a:I

    return v0
.end method

.method public final previousIndex()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, La/a/a/a/b/w;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 132
    iget v0, p0, La/a/a/a/b/w;->b:I

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 133
    :cond_0
    iget-object v0, p0, La/a/a/a/b/w;->d:La/a/a/a/b/v;

    iget v1, p0, La/a/a/a/b/w;->b:I

    invoke-virtual {v0, v1}, La/a/a/a/b/v;->c(I)J

    .line 135
    iget v0, p0, La/a/a/a/b/w;->b:I

    iget v1, p0, La/a/a/a/b/w;->a:I

    if-ge v0, v1, :cond_1

    iget v0, p0, La/a/a/a/b/w;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/a/a/a/b/w;->a:I

    .line 136
    :cond_1
    iput v2, p0, La/a/a/a/b/w;->b:I

    .line 137
    return-void
.end method
