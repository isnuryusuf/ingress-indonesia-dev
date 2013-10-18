.class public final Lcom/google/a/c/di;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:[Lcom/google/a/c/dk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/a/c/dk",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/c/di;-><init>(B)V

    .line 192
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1
    .parameter

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/a/c/dk;

    iput-object v0, p0, Lcom/google/a/c/di;->a:[Lcom/google/a/c/dk;

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/c/di;->b:I

    .line 198
    return-void
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/a/c/di;->a:[Lcom/google/a/c/dk;

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/google/a/c/di;->a:[Lcom/google/a/c/dk;

    iget-object v1, p0, Lcom/google/a/c/di;->a:[Lcom/google/a/c/dk;

    array-length v1, v1

    invoke-static {v1, p1}, Lcom/google/a/c/cv;->a(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/a/c/ig;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/c/dk;

    iput-object v0, p0, Lcom/google/a/c/di;->a:[Lcom/google/a/c/dk;

    .line 205
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/a/c/dh;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 256
    iget v0, p0, Lcom/google/a/c/di;->b:I

    packed-switch v0, :pswitch_data_0

    .line 262
    new-instance v0, Lcom/google/a/c/il;

    iget v1, p0, Lcom/google/a/c/di;->b:I

    iget-object v2, p0, Lcom/google/a/c/di;->a:[Lcom/google/a/c/dk;

    invoke-direct {v0, v1, v2}, Lcom/google/a/c/il;-><init>(I[Lcom/google/a/c/dk;)V

    :goto_0
    return-object v0

    .line 258
    :pswitch_0
    invoke-static {}, Lcom/google/a/c/dh;->i()Lcom/google/a/c/dh;

    move-result-object v0

    goto :goto_0

    .line 260
    :pswitch_1
    iget-object v0, p0, Lcom/google/a/c/di;->a:[Lcom/google/a/c/dk;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/google/a/c/dk;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/c/di;->a:[Lcom/google/a/c/dk;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/a/c/dk;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/c/dh;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/dh;

    move-result-object v0

    goto :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/a/c/di",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 212
    iget v0, p0, Lcom/google/a/c/di;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/a/c/di;->a(I)V

    .line 213
    invoke-static {p1, p2}, Lcom/google/a/c/dh;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/dk;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/google/a/c/di;->a:[Lcom/google/a/c/dk;

    iget v2, p0, Lcom/google/a/c/di;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/a/c/di;->b:I

    aput-object v0, v1, v2

    .line 216
    return-object p0
.end method

.method public final a(Ljava/util/Map$Entry;)Lcom/google/a/c/di;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;)",
            "Lcom/google/a/c/di",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 227
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    .line 228
    return-object p0
.end method

.method public final a(Ljava/util/Map;)Lcom/google/a/c/di;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lcom/google/a/c/di",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 238
    iget v0, p0, Lcom/google/a/c/di;->b:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/a/c/di;->a(I)V

    .line 239
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 240
    invoke-virtual {p0, v0}, Lcom/google/a/c/di;->a(Ljava/util/Map$Entry;)Lcom/google/a/c/di;

    goto :goto_0

    .line 242
    :cond_0
    return-object p0
.end method
