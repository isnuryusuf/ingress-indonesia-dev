.class public abstract Lcom/google/a/c/cv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    return-void
.end method

.method static a(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 219
    if-gez p1, :cond_0

    .line 220
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "cannot store more than MAX_VALUE elements"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 223
    :cond_0
    shr-int/lit8 v0, p0, 0x1

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    .line 224
    if-ge v0, p1, :cond_1

    .line 225
    add-int/lit8 v0, p1, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 227
    :cond_1
    if-gez v0, :cond_2

    .line 228
    const v0, 0x7fffffff

    .line 231
    :cond_2
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)Lcom/google/a/c/cv;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/a/c/cv",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 281
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 282
    invoke-virtual {p0, v1}, Lcom/google/a/c/cv;->b(Ljava/lang/Object;)Lcom/google/a/c/cv;

    goto :goto_0

    .line 284
    :cond_0
    return-object p0
.end method

.method public a(Ljava/util/Iterator;)Lcom/google/a/c/cv;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/a/c/cv",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 300
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/c/cv;->b(Ljava/lang/Object;)Lcom/google/a/c/cv;

    goto :goto_0

    .line 303
    :cond_0
    return-object p0
.end method

.method public varargs a([Ljava/lang/Object;)Lcom/google/a/c/cv;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/a/c/cv",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 262
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 263
    invoke-virtual {p0, v2}, Lcom/google/a/c/cv;->b(Ljava/lang/Object;)Lcom/google/a/c/cv;

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_0
    return-object p0
.end method

.method public abstract b(Ljava/lang/Object;)Lcom/google/a/c/cv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/a/c/cv",
            "<TE;>;"
        }
    .end annotation
.end method
