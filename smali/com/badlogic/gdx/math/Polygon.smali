.class public Lcom/badlogic/gdx/math/Polygon;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bounds:Lcom/badlogic/gdx/math/Rectangle;

.field private dirty:Z

.field private final localVertices:[F

.field private originX:F

.field private originY:F

.field private rotation:F

.field private scaleX:F

.field private scaleY:F

.field private worldVertices:[F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>([F)V
    .locals 2
    .parameter

    .prologue
    const/high16 v0, 0x3f80

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 30
    array-length v0, p1

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "polygons must contain at least 3 points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/math/Polygon;->localVertices:[F

    .line 32
    return-void
.end method


# virtual methods
.method public area()F
    .locals 8

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v2

    .line 130
    array-length v3, v2

    .line 133
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 135
    add-int/lit8 v4, v0, 0x1

    .line 136
    add-int/lit8 v5, v0, 0x2

    rem-int/2addr v5, v3

    .line 137
    add-int/lit8 v6, v0, 0x3

    rem-int/2addr v6, v3

    .line 139
    aget v7, v2, v0

    aget v6, v2, v6

    mul-float/2addr v6, v7

    add-float/2addr v1, v6

    .line 140
    aget v5, v2, v5

    aget v4, v2, v4

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    .line 133
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 142
    :cond_0
    const/high16 v0, 0x3f00

    mul-float/2addr v0, v1

    .line 143
    return v0
.end method

.method public contains(FF)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v4

    .line 173
    array-length v5, v4

    move v3, v2

    move v0, v2

    .line 176
    :goto_0
    if-ge v3, v5, :cond_3

    .line 177
    aget v6, v4, v3

    .line 178
    add-int/lit8 v7, v3, 0x1

    aget v7, v4, v7

    .line 179
    add-int/lit8 v8, v3, 0x2

    rem-int/2addr v8, v5

    aget v8, v4, v8

    .line 180
    add-int/lit8 v9, v3, 0x3

    rem-int/2addr v9, v5

    aget v9, v4, v9

    .line 181
    cmpg-float v10, v7, p2

    if-gtz v10, :cond_0

    cmpg-float v10, p2, v9

    if-ltz v10, :cond_1

    :cond_0
    cmpg-float v10, v9, p2

    if-gtz v10, :cond_2

    cmpg-float v10, p2, v7

    if-gez v10, :cond_2

    :cond_1
    sub-float/2addr v8, v6

    sub-float/2addr v9, v7

    div-float/2addr v8, v9

    sub-float v7, p2, v7

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    cmpg-float v6, p1, v6

    if-gez v6, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 176
    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 183
    :cond_3
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    return v0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public dirty()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 124
    return-void
.end method

.method public getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v5

    .line 149
    aget v4, v5, v0

    .line 150
    aget v1, v5, v3

    .line 151
    aget v2, v5, v0

    .line 152
    aget v3, v5, v3

    .line 154
    array-length v6, v5

    .line 155
    const/4 v0, 0x2

    move v8, v0

    move v0, v4

    move v4, v8

    :goto_0
    if-ge v4, v6, :cond_4

    .line 156
    aget v7, v5, v4

    cmpl-float v7, v0, v7

    if-lez v7, :cond_0

    aget v0, v5, v4

    .line 157
    :cond_0
    add-int/lit8 v7, v4, 0x1

    aget v7, v5, v7

    cmpl-float v7, v1, v7

    if-lez v7, :cond_1

    add-int/lit8 v1, v4, 0x1

    aget v1, v5, v1

    .line 158
    :cond_1
    aget v7, v5, v4

    cmpg-float v7, v2, v7

    if-gez v7, :cond_2

    aget v2, v5, v4

    .line 159
    :cond_2
    add-int/lit8 v7, v4, 0x1

    aget v7, v5, v7

    cmpg-float v7, v3, v7

    if-gez v7, :cond_3

    add-int/lit8 v3, v4, 0x1

    aget v3, v5, v3

    .line 155
    :cond_3
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 162
    :cond_4
    iget-object v4, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    if-nez v4, :cond_5

    new-instance v4, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v4}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v4, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 163
    :cond_5
    iget-object v4, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v0, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 164
    iget-object v4, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v1, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 165
    iget-object v4, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v0, v2, v0

    iput v0, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 166
    iget-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v1, v3, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 168
    iget-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    return-object v0
.end method

.method public getOriginX()F
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->originX:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->originY:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    return v0
.end method

.method public getTransformedVertices()[F
    .locals 19

    .prologue
    .line 41
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/math/Polygon;->worldVertices:[F

    .line 79
    :goto_0
    return-object v1

    .line 42
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 44
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/math/Polygon;->localVertices:[F

    .line 45
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/math/Polygon;->worldVertices:[F

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/math/Polygon;->worldVertices:[F

    array-length v1, v1

    array-length v2, v7

    if-ge v1, v2, :cond_2

    :cond_1
    array-length v1, v7

    new-array v1, v1, [F

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/badlogic/gdx/math/Polygon;->worldVertices:[F

    .line 47
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/math/Polygon;->worldVertices:[F

    .line 48
    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/math/Polygon;->x:F

    .line 49
    move-object/from16 v0, p0

    iget v9, v0, Lcom/badlogic/gdx/math/Polygon;->y:F

    .line 50
    move-object/from16 v0, p0

    iget v10, v0, Lcom/badlogic/gdx/math/Polygon;->originX:F

    .line 51
    move-object/from16 v0, p0

    iget v11, v0, Lcom/badlogic/gdx/math/Polygon;->originY:F

    .line 52
    move-object/from16 v0, p0

    iget v12, v0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    .line 53
    move-object/from16 v0, p0

    iget v13, v0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    .line 54
    const/high16 v1, 0x3f80

    cmpl-float v1, v12, v1

    if-nez v1, :cond_3

    const/high16 v1, 0x3f80

    cmpl-float v1, v13, v1

    if-eqz v1, :cond_5

    :cond_3
    const/4 v1, 0x1

    .line 55
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    .line 56
    invoke-static {v14}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v15

    .line 57
    invoke-static {v14}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v16

    .line 59
    const/4 v2, 0x0

    array-length v0, v7

    move/from16 v17, v0

    move v6, v2

    :goto_2
    move/from16 v0, v17

    if-ge v6, v0, :cond_6

    .line 60
    aget v2, v7, v6

    sub-float v4, v2, v10

    .line 61
    add-int/lit8 v2, v6, 0x1

    aget v2, v7, v2

    sub-float/2addr v2, v11

    .line 64
    if-eqz v1, :cond_4

    .line 65
    mul-float/2addr v4, v12

    .line 66
    mul-float/2addr v2, v13

    .line 70
    :cond_4
    const/4 v3, 0x0

    cmpl-float v3, v14, v3

    if-eqz v3, :cond_7

    .line 72
    mul-float v3, v15, v4

    mul-float v18, v16, v2

    sub-float v3, v3, v18

    .line 73
    mul-float v4, v4, v16

    mul-float/2addr v2, v15

    add-float/2addr v2, v4

    .line 76
    :goto_3
    add-float/2addr v3, v8

    add-float/2addr v3, v10

    aput v3, v5, v6

    .line 77
    add-int/lit8 v3, v6, 0x1

    add-float/2addr v2, v9

    add-float/2addr v2, v11

    aput v2, v5, v3

    .line 59
    add-int/lit8 v2, v6, 0x2

    move v6, v2

    goto :goto_2

    .line 54
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    move-object v1, v5

    .line 79
    goto/16 :goto_0

    :cond_7
    move v3, v4

    goto :goto_3
.end method

.method public getVertices()[F
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->localVertices:[F

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    return v0
.end method

.method public rotate(F)V
    .locals 1
    .parameter

    .prologue
    .line 106
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 108
    return-void
.end method

.method public scale(F)V
    .locals 1
    .parameter

    .prologue
    .line 117
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    .line 118
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 120
    return-void
.end method

.method public setOrigin(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 83
    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->originX:F

    .line 84
    iput p2, p0, Lcom/badlogic/gdx/math/Polygon;->originY:F

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 86
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 89
    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    .line 90
    iput p2, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 92
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .parameter

    .prologue
    .line 101
    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 103
    return-void
.end method

.method public setScale(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 111
    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    .line 112
    iput p2, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 114
    return-void
.end method

.method public translate(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 95
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    .line 96
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 98
    return-void
.end method
