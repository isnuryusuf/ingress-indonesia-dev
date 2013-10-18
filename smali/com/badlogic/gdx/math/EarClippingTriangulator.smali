.class public final Lcom/badlogic/gdx/math/EarClippingTriangulator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONCAVE:I = 0x1

.field private static final CONVEX:I = -0x1


# instance fields
.field private concaveVertexCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areVerticesClockwise(Ljava/util/ArrayList;)Z
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 78
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v2

    move v4, v5

    .line 81
    :goto_0
    if-ge v3, v6, :cond_0

    .line 82
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    .line 83
    invoke-static {p0, v3}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeNextIndex(Ljava/util/List;I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector2;

    .line 84
    iget v7, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v8, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v7, v8

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v0, v1

    sub-float v0, v7, v0

    add-float v1, v4, v0

    .line 81
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v1

    goto :goto_0

    .line 87
    :cond_0
    cmpg-float v0, v4, v5

    if-gez v0, :cond_1

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private classifyVertices(Ljava/util/ArrayList;)[I
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;)[I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 100
    new-array v8, v7, [I

    .line 101
    iput v0, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->concaveVertexCount:I

    .line 104
    invoke-static {p1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->areVerticesClockwise(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_0
    move v6, v0

    .line 108
    :goto_0
    if-ge v6, v7, :cond_2

    .line 109
    invoke-static {p1, v6}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computePreviousIndex(Ljava/util/List;I)I

    move-result v0

    .line 110
    invoke-static {p1, v6}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeNextIndex(Ljava/util/List;I)I

    move-result v2

    .line 112
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/math/Vector2;

    .line 113
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    .line 114
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/badlogic/gdx/math/Vector2;

    .line 116
    iget v0, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->isTriangleConvex(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const/4 v0, -0x1

    aput v0, v8, v6

    .line 108
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x1

    aput v0, v8, v6

    .line 121
    iget v0, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->concaveVertexCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->concaveVertexCount:I

    goto :goto_1

    .line 125
    :cond_2
    return-object v8
.end method

.method private static computeNextIndex(Ljava/util/List;I)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 258
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method private static computePreviousIndex(Ljava/util/List;I)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 254
    if-nez p1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    goto :goto_0
.end method

.method private static computeSpannedAreaSign(FFFFFF)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    const-wide/16 v0, 0x0

    float-to-double v2, p0

    sub-float v4, p5, p3

    float-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 146
    float-to-double v2, p2

    sub-float v4, p1, p5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 147
    float-to-double v2, p4

    sub-float v4, p3, p1

    float-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 149
    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private cutEarTip(Ljava/util/ArrayList;ILjava/util/ArrayList;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {p1, p2}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computePreviousIndex(Ljava/util/List;I)I

    move-result v0

    .line 202
    invoke-static {p1, p2}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeNextIndex(Ljava/util/List;I)I

    move-result v1

    .line 204
    invoke-static {p1, v0, p2, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->isCollinear(Ljava/util/ArrayList;III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 211
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 212
    invoke-static {p1, p2}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->removeCollinearNeighborEarsAfterRemovingEarTip(Ljava/util/ArrayList;I)V

    .line 214
    :cond_1
    return-void
.end method

.method private static isAnyVertexInTriangle(Ljava/util/ArrayList;[IFFFFFF)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;[IFFFFFF)Z"
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v0

    .line 158
    :goto_0
    add-int/lit8 v0, v7, -0x1

    if-ge v6, v0, :cond_2

    .line 159
    aget v0, p1, v6

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 160
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    .line 162
    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 163
    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    move v0, p2

    move v1, p3

    move v2, p4

    move v3, p5

    .line 165
    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeSpannedAreaSign(FFFFFF)I

    move-result v8

    move v0, p4

    move v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    .line 167
    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeSpannedAreaSign(FFFFFF)I

    move-result v9

    move/from16 v0, p6

    move/from16 v1, p7

    move v2, p2

    move v3, p3

    .line 169
    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeSpannedAreaSign(FFFFFF)I

    move-result v0

    .line 172
    if-lez v8, :cond_0

    if-lez v9, :cond_0

    if-lez v0, :cond_0

    .line 173
    const/4 v0, 0x1

    .line 180
    :goto_1
    return v0

    .line 174
    :cond_0
    if-gtz v8, :cond_1

    if-gtz v9, :cond_1

    if-gtz v0, :cond_1

    .line 175
    const/4 v0, 0x1

    goto :goto_1

    .line 178
    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 180
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static isCollinear(Ljava/util/ArrayList;I)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {p0, p1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computePreviousIndex(Ljava/util/List;I)I

    move-result v0

    .line 238
    invoke-static {p0, p1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeNextIndex(Ljava/util/List;I)I

    move-result v1

    .line 240
    invoke-static {p0, v0, p1, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->isCollinear(Ljava/util/ArrayList;III)Z

    move-result v0

    return v0
.end method

.method private static isCollinear(Ljava/util/ArrayList;III)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;III)Z"
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/math/Vector2;

    .line 246
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    .line 247
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/badlogic/gdx/math/Vector2;

    .line 249
    iget v0, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeSpannedAreaSign(FFFFFF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEarTip(Ljava/util/ArrayList;I[I)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;I[I)Z"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 184
    iget v0, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->concaveVertexCount:I

    if-eqz v0, :cond_1

    .line 185
    invoke-static {p1, p2}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computePreviousIndex(Ljava/util/List;I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    .line 186
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector2;

    .line 187
    invoke-static {p1, p2}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeNextIndex(Ljava/util/List;I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/badlogic/gdx/math/Vector2;

    .line 189
    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p1

    move-object v1, p3

    invoke-static/range {v0 .. v7}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->isAnyVertexInTriangle(Ljava/util/ArrayList;[IFFFFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 196
    :goto_0
    return v0

    :cond_0
    move v0, v8

    .line 193
    goto :goto_0

    :cond_1
    move v0, v8

    .line 196
    goto :goto_0
.end method

.method private static isTriangleConvex(FFFFFF)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-static/range {p0 .. p5}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeSpannedAreaSign(FFFFFF)I

    move-result v0

    if-gez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static removeCollinearNeighborEarsAfterRemovingEarTip(Ljava/util/ArrayList;I)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int v0, p1, v0

    .line 219
    invoke-static {p0, v0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computePreviousIndex(Ljava/util/List;I)I

    move-result v1

    .line 221
    invoke-static {p0, v0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->isCollinear(Ljava/util/ArrayList;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 224
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 226
    invoke-static {p0, v0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computePreviousIndex(Ljava/util/List;I)I

    move-result v0

    .line 227
    invoke-static {p0, v0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->isCollinear(Ljava/util/ArrayList;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-static {p0, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->isCollinear(Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final computeTriangles(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v6, :cond_2

    .line 55
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->classifyVertices(Ljava/util/ArrayList;)[I

    move-result-object v3

    .line 57
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 58
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_0

    .line 59
    invoke-direct {p0, v2, v0, v3}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->isEarTip(Ljava/util/ArrayList;I[I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 60
    invoke-direct {p0, v2, v0, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->cutEarTip(Ljava/util/ArrayList;ILjava/util/ArrayList;)V

    goto :goto_0

    .line 58
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 71
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    :cond_3
    return-object v1
.end method
