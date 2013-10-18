.class final Lcom/google/a/a/bf;
.super Lcom/google/a/a/bh;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/a/a/be;


# direct methods
.method constructor <init>(Lcom/google/a/a/be;Lcom/google/a/a/bb;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/a/a/bf;->a:Lcom/google/a/a/be;

    invoke-direct {p0, p2, p3}, Lcom/google/a/a/bh;-><init>(Lcom/google/a/a/bb;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 6
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/a/a/bf;->a:Lcom/google/a/a/be;

    iget-object v0, v0, Lcom/google/a/a/be;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 182
    iget-object v0, p0, Lcom/google/a/a/bf;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int v3, v0, v2

    move v0, p1

    .line 183
    :goto_0
    if-gt v0, v3, :cond_1

    .line 184
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 185
    iget-object v4, p0, Lcom/google/a/a/bf;->b:Ljava/lang/CharSequence;

    add-int v5, v1, v0

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lcom/google/a/a/bf;->a:Lcom/google/a/a/be;

    iget-object v5, v5, Lcom/google/a/a/be;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_1
    const/4 v0, -0x1

    :cond_2
    return v0
.end method

.method public final b(I)I
    .locals 1
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/a/a/bf;->a:Lcom/google/a/a/be;

    iget-object v0, v0, Lcom/google/a/a/be;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method
