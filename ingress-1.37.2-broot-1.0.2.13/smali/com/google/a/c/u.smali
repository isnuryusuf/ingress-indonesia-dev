.class abstract Lcom/google/a/c/u;
.super Lcom/google/a/c/aa;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/aa",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TE;",
            "Lcom/google/a/c/av;",
            ">;"
        }
    .end annotation
.end field

.field private transient b:J


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;",
            "Lcom/google/a/c/av;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/a/c/aa;-><init>()V

    .line 62
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/a/c/u;->a:Ljava/util/Map;

    .line 63
    invoke-super {p0}, Lcom/google/a/c/aa;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/a/c/u;->b:J

    .line 64
    return-void
.end method

.method private static a(Lcom/google/a/c/av;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 286
    if-nez p0, :cond_0

    .line 287
    const/4 v0, 0x0

    .line 290
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/a/c/av;->c(I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/a/c/u;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/google/a/c/u;->b:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/a/c/u;->b:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/a/c/u;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/a/c/u;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/google/a/c/u;)J
    .locals 4
    .parameter

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/google/a/c/u;->b:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/a/c/u;->b:J

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/a/c/u;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/a/c/hc;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/av;

    .line 203
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/a/c/av;->a()I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;I)I
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    if-nez p2, :cond_0

    .line 217
    invoke-virtual {p0, p1}, Lcom/google/a/c/u;->a(Ljava/lang/Object;)I

    move-result v2

    .line 234
    :goto_0
    return v2

    .line 219
    :cond_0
    if-lez p2, :cond_1

    move v0, v1

    :goto_1
    const-string/jumbo v3, "occurrences cannot be negative: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/a/a/an;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/google/a/c/u;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/av;

    .line 223
    if-nez v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/google/a/c/u;->a:Ljava/util/Map;

    new-instance v1, Lcom/google/a/c/av;

    invoke-direct {v1, p2}, Lcom/google/a/c/av;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :goto_2
    iget-wide v0, p0, Lcom/google/a/c/u;->b:J

    int-to-long v3, p2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/a/c/u;->b:J

    goto :goto_0

    :cond_1
    move v0, v2

    .line 219
    goto :goto_1

    .line 227
    :cond_2
    invoke-virtual {v0}, Lcom/google/a/c/av;->a()I

    move-result v4

    .line 228
    int-to-long v5, v4

    int-to-long v7, p2

    add-long/2addr v5, v7

    .line 229
    const-wide/32 v7, 0x7fffffff

    cmp-long v3, v5, v7

    if-gtz v3, :cond_3

    move v3, v1

    :goto_3
    const-string/jumbo v7, "too many occurrences: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v3, v7, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 231
    invoke-virtual {v0, p2}, Lcom/google/a/c/av;->a(I)I

    move v2, v4

    goto :goto_2

    :cond_3
    move v3, v2

    .line 229
    goto :goto_3
.end method

.method public b(Ljava/lang/Object;I)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 238
    if-nez p2, :cond_1

    .line 239
    invoke-virtual {p0, p1}, Lcom/google/a/c/u;->a(Ljava/lang/Object;)I

    move-result v2

    .line 260
    :cond_0
    :goto_0
    return v2

    .line 241
    :cond_1
    if-lez p2, :cond_2

    move v0, v1

    :goto_1
    const-string/jumbo v3, "occurrences cannot be negative: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/google/a/c/u;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/av;

    .line 244
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Lcom/google/a/c/av;->a()I

    move-result v1

    .line 251
    if-le v1, p2, :cond_3

    .line 258
    :goto_2
    neg-int v2, p2

    invoke-virtual {v0, v2}, Lcom/google/a/c/av;->b(I)I

    .line 259
    iget-wide v2, p0, Lcom/google/a/c/u;->b:J

    int-to-long v4, p2

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/a/c/u;->b:J

    move v2, v1

    .line 260
    goto :goto_0

    :cond_2
    move v0, v2

    .line 241
    goto :goto_1

    .line 255
    :cond_3
    iget-object v2, p0, Lcom/google/a/c/u;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move p2, v1

    goto :goto_2
.end method

.method final b()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/a/c/hu",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/a/c/u;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/google/a/c/v;

    invoke-direct {v1, p0, v0}, Lcom/google/a/c/v;-><init>(Lcom/google/a/c/u;Ljava/util/Iterator;)V

    return-object v1
.end method

.method final c()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/a/c/u;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Object;I)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 265
    const-string/jumbo v0, "count"

    invoke-static {p2, v0}, Lcom/google/a/c/hv;->a(ILjava/lang/String;)V

    .line 269
    if-nez p2, :cond_0

    .line 270
    iget-object v0, p0, Lcom/google/a/c/u;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/av;

    .line 271
    invoke-static {v0, p2}, Lcom/google/a/c/u;->a(Lcom/google/a/c/av;I)I

    move-result v0

    .line 281
    :goto_0
    iget-wide v1, p0, Lcom/google/a/c/u;->b:J

    sub-int v3, p2, v0

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/a/c/u;->b:J

    .line 282
    return v0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/google/a/c/u;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/av;

    .line 274
    invoke-static {v0, p2}, Lcom/google/a/c/u;->a(Lcom/google/a/c/av;I)I

    move-result v1

    .line 276
    if-nez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/google/a/c/u;->a:Ljava/util/Map;

    new-instance v2, Lcom/google/a/c/av;

    invoke-direct {v2, p2}, Lcom/google/a/c/av;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/a/c/u;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/av;

    .line 133
    invoke-virtual {v0}, Lcom/google/a/c/av;->b()V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/a/c/u;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/a/c/u;->b:J

    .line 137
    return-void
.end method

.method public e_()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/a/c/hu",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-super {p0}, Lcom/google/a/c/aa;->e_()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lcom/google/a/c/x;

    invoke-direct {v0, p0}, Lcom/google/a/c/x;-><init>(Lcom/google/a/c/u;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/google/a/c/u;->b:J

    invoke-static {v0, v1}, Lcom/google/a/h/a;->a(J)I

    move-result v0

    return v0
.end method
