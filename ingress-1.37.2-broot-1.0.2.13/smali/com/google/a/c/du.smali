.class public abstract Lcom/google/a/c/du;
.super Lcom/google/a/c/ct;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/ct",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/google/a/c/ct;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 5
    .parameter

    .prologue
    const/high16 v1, 0x4000

    .line 249
    const v0, 0x2ccccccc

    if-ge p0, v0, :cond_0

    .line 251
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 252
    :goto_0
    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L

    mul-double/2addr v1, v3

    int-to-double v3, p0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 253
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_0
    if-ge p0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v2, "collection too large"

    invoke-static {v0, v2}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    move v0, v1

    .line 260
    :cond_1
    return v0

    .line 259
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(I[Ljava/lang/Object;)Lcom/google/a/c/du;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-static {p0, p1}, Lcom/google/a/c/du;->b(I[Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Lcom/google/a/c/du;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/a/c/du",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 300
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/a/c/as;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/du;->a(Ljava/util/Collection;)Lcom/google/a/c/du;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/google/a/c/bi;->a:Lcom/google/a/c/bi;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/google/a/c/du;->b(Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/google/a/c/dv;

    invoke-direct {v2}, Lcom/google/a/c/dv;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/a/c/dv;->b(Ljava/util/Iterator;)Lcom/google/a/c/dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dv;->a()Lcom/google/a/c/du;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/du;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lcom/google/a/c/du",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 105
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Lcom/google/a/c/du;->b(I[Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/du;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lcom/google/a/c/du",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 116
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v2, v0}, Lcom/google/a/c/du;->b(I[Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/du;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Lcom/google/a/c/du",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x5

    .line 138
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v2, v0}, Lcom/google/a/c/du;->b(I[Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/a/c/du;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lcom/google/a/c/du",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 151
    array-length v0, p6

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 153
    aput-object p0, v0, v3

    .line 154
    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 155
    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 156
    const/4 v1, 0x3

    aput-object p3, v0, v1

    .line 157
    const/4 v1, 0x4

    aput-object p4, v0, v1

    .line 158
    const/4 v1, 0x5

    aput-object p5, v0, v1

    .line 159
    const/4 v1, 0x6

    array-length v2, p6

    invoke-static {p6, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    array-length v1, v0

    invoke-static {v1, v0}, Lcom/google/a/c/du;->b(I[Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/a/c/du;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/a/c/du",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 364
    instance-of v0, p0, Lcom/google/a/c/du;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/google/a/c/dz;

    if-nez v0, :cond_0

    move-object v0, p0

    .line 367
    check-cast v0, Lcom/google/a/c/du;

    .line 368
    invoke-virtual {v0}, Lcom/google/a/c/du;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 379
    :goto_0
    return-object v0

    .line 371
    :cond_0
    instance-of v0, p0, Ljava/util/EnumSet;

    if-eqz v0, :cond_1

    .line 372
    check-cast p0, Ljava/util/EnumSet;

    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    .line 375
    invoke-static {v0}, Lcom/google/a/c/db;->a(Ljava/util/EnumSet;)Lcom/google/a/c/du;

    move-result-object v0

    goto :goto_0

    .line 378
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 379
    array-length v1, v0

    invoke-static {v1, v0}, Lcom/google/a/c/du;->b(I[Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([Ljava/lang/Object;)Lcom/google/a/c/du;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/a/c/du",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 272
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 278
    array-length v1, p0

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/a/c/du;->b(I[Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    :goto_0
    return-object v0

    .line 274
    :pswitch_0
    sget-object v0, Lcom/google/a/c/bi;->a:Lcom/google/a/c/bi;

    goto :goto_0

    .line 276
    :pswitch_1
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/google/a/c/du;->b(Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static varargs b(I[Ljava/lang/Object;)Lcom/google/a/c/du;
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/a/c/du",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 179
    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 189
    invoke-static {p0}, Lcom/google/a/c/du;->a(I)I

    move-result v5

    .line 190
    new-array v6, v5, [Ljava/lang/Object;

    .line 191
    add-int/lit8 v7, v5, -0x1

    move v3, v4

    move v1, v4

    move v2, v4

    .line 194
    :goto_1
    if-ge v3, p0, :cond_1

    .line 195
    aget-object v0, p1, v3

    invoke-static {v0, v3}, Lcom/google/a/c/ig;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 196
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 197
    invoke-static {v9}, Lcom/google/a/c/co;->a(I)I

    move-result v0

    .line 198
    :goto_2
    and-int v10, v0, v7

    .line 199
    aget-object v11, v6, v10

    .line 200
    if-nez v11, :cond_0

    .line 202
    add-int/lit8 v0, v1, 0x1

    aput-object v8, p1, v1

    .line 203
    aput-object v8, v6, v10

    .line 204
    add-int v1, v2, v9

    .line 194
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 181
    :pswitch_0
    sget-object v0, Lcom/google/a/c/bi;->a:Lcom/google/a/c/bi;

    .line 225
    :goto_4
    return-object v0

    .line 184
    :pswitch_1
    aget-object v0, p1, v4

    .line 185
    invoke-static {v0}, Lcom/google/a/c/du;->b(Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    goto :goto_4

    .line 206
    :cond_0
    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 211
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v1, p0, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 212
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 215
    aget-object v1, p1, v4

    .line 216
    new-instance v0, Lcom/google/a/c/jl;

    invoke-direct {v0, v1, v2}, Lcom/google/a/c/jl;-><init>(Ljava/lang/Object;I)V

    goto :goto_4

    .line 217
    :cond_2
    invoke-static {v1}, Lcom/google/a/c/du;->a(I)I

    move-result v0

    if-eq v5, v0, :cond_3

    move p0, v1

    .line 220
    goto :goto_0

    .line 222
    :cond_3
    array-length v0, p1

    if-ge v1, v0, :cond_4

    invoke-static {p1, v1}, Lcom/google/a/c/ig;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 225
    :cond_4
    new-instance v0, Lcom/google/a/c/ip;

    invoke-direct {v0, p1, v2, v6, v7}, Lcom/google/a/c/ip;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    goto :goto_4

    :cond_5
    move v0, v1

    move v1, v2

    goto :goto_3

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Ljava/lang/Object;)Lcom/google/a/c/du;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/a/c/du",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lcom/google/a/c/jl;

    invoke-direct {v0, p0}, Lcom/google/a/c/jl;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static g()Lcom/google/a/c/du;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/c/du",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lcom/google/a/c/bi;->a:Lcom/google/a/c/bi;

    return-object v0
.end method

.method public static h()Lcom/google/a/c/dv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/c/dv",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 436
    new-instance v0, Lcom/google/a/c/dv;

    invoke-direct {v0}, Lcom/google/a/c/dv;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lcom/google/a/c/lj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/lj",
            "<TE;>;"
        }
    .end annotation
.end method

.method c_()Z
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 390
    if-ne p1, p0, :cond_0

    .line 391
    const/4 v0, 0x1

    .line 398
    :goto_0
    return v0

    .line 392
    :cond_0
    instance-of v0, p1, Lcom/google/a/c/du;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/a/c/du;->c_()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/a/c/du;

    invoke-virtual {v0}, Lcom/google/a/c/du;->c_()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/a/c/du;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 396
    const/4 v0, 0x0

    goto :goto_0

    .line 398
    :cond_1
    invoke-static {p0, p1}, Lcom/google/a/c/jc;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 402
    invoke-static {p0}, Lcom/google/a/c/jc;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/a/c/du;->b()Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method
