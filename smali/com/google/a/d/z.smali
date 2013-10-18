.class public final Lcom/google/a/d/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/d/ad;


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private final b:I

.field private final c:[Lcom/google/a/d/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/google/a/d/z;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/a/d/z;->a:Ljava/util/logging/Logger;

    return-void
.end method


# virtual methods
.method public final strictfp a(Lcom/google/a/d/i;)Z
    .locals 2
    .parameter

    .prologue
    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "\'containment\' is not numerically well-defined except at the polyline vertices"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final strictfp b(Lcom/google/a/d/i;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 189
    iget v0, p0, Lcom/google/a/d/z;->b:I

    if-nez v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 196
    :goto_1
    iget v3, p0, Lcom/google/a/d/z;->b:I

    if-ge v0, v3, :cond_3

    .line 197
    iget-object v3, p0, Lcom/google/a/d/z;->c:[Lcom/google/a/d/y;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Lcom/google/a/d/i;->a(Lcom/google/a/d/y;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 198
    goto :goto_0

    .line 196
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    :cond_3
    new-array v4, v8, [Lcom/google/a/d/y;

    move v0, v1

    .line 202
    :goto_2
    if-ge v0, v8, :cond_4

    .line 203
    invoke-virtual {p1, v0}, Lcom/google/a/d/i;->b(I)Lcom/google/a/d/y;

    move-result-object v3

    aput-object v3, v4, v0

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v3, v1

    .line 205
    :goto_3
    if-ge v3, v8, :cond_0

    .line 206
    new-instance v5, Lcom/google/a/d/p;

    aget-object v0, v4, v3

    add-int/lit8 v6, v3, 0x1

    and-int/lit8 v6, v6, 0x3

    aget-object v6, v4, v6

    iget-object v7, p0, Lcom/google/a/d/z;->c:[Lcom/google/a/d/y;

    aget-object v7, v7, v1

    invoke-direct {v5, v0, v6, v7}, Lcom/google/a/d/p;-><init>(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)V

    move v0, v2

    .line 208
    :goto_4
    iget v6, p0, Lcom/google/a/d/z;->b:I

    if-ge v0, v6, :cond_6

    .line 209
    iget-object v6, p0, Lcom/google/a/d/z;->c:[Lcom/google/a/d/y;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Lcom/google/a/d/p;->b(Lcom/google/a/d/y;)I

    move-result v6

    if-ltz v6, :cond_5

    move v1, v2

    .line 211
    goto :goto_0

    .line 208
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 205
    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3
.end method

.method public final strictfp equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 262
    instance-of v0, p1, Lcom/google/a/d/z;

    if-nez v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v1

    .line 266
    :cond_1
    check-cast p1, Lcom/google/a/d/z;

    .line 267
    iget v0, p0, Lcom/google/a/d/z;->b:I

    iget v2, p1, Lcom/google/a/d/z;->b:I

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 271
    :goto_1
    iget-object v2, p0, Lcom/google/a/d/z;->c:[Lcom/google/a/d/y;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 272
    iget-object v2, p0, Lcom/google/a/d/z;->c:[Lcom/google/a/d/y;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/google/a/d/z;->c:[Lcom/google/a/d/y;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/google/a/d/y;->f(Lcom/google/a/d/y;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 276
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final strictfp f()Lcom/google/a/d/h;
    .locals 3

    .prologue
    .line 157
    new-instance v1, Lcom/google/a/d/q;

    invoke-direct {v1}, Lcom/google/a/d/q;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/a/d/z;->b:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/a/d/z;->c:[Lcom/google/a/d/y;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/a/d/q;->a(Lcom/google/a/d/y;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/a/d/q;->a()Lcom/google/a/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/d/v;->f()Lcom/google/a/d/h;

    move-result-object v0

    return-object v0
.end method

.method public final strictfp hashCode()I
    .locals 3

    .prologue
    .line 281
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/a/d/z;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/d/z;->c:[Lcom/google/a/d/y;

    invoke-static {v2}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final strictfp toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "S2Polyline, "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/google/a/d/z;->c:[Lcom/google/a/d/y;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " points. ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget-object v2, p0, Lcom/google/a/d/z;->c:[Lcom/google/a/d/y;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 291
    invoke-virtual {v4}, Lcom/google/a/d/y;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
