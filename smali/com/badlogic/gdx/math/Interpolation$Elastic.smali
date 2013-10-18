.class public Lcom/badlogic/gdx/math/Interpolation$Elastic;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "SourceFile"


# instance fields
.field final power:F

.field final value:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    .line 197
    iput p1, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->value:F

    .line 198
    iput p2, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->power:F

    .line 199
    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 9
    .parameter

    .prologue
    const/high16 v8, 0x41a0

    const v7, 0x3f8c3958

    const/high16 v6, 0x4000

    const/high16 v5, 0x3f80

    .line 202
    const/high16 v0, 0x3f00

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 203
    mul-float v0, p1, v6

    .line 204
    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->value:F

    float-to-double v1, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->power:F

    sub-float v4, v0, v5

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v8

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v0

    mul-float/2addr v0, v1

    mul-float/2addr v0, v7

    div-float/2addr v0, v6

    .line 208
    :goto_0
    return v0

    .line 206
    :cond_0
    sub-float v0, v5, p1

    .line 207
    mul-float/2addr v0, v6

    .line 208
    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->value:F

    float-to-double v1, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->power:F

    sub-float v4, v0, v5

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v8

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v0

    mul-float/2addr v0, v1

    mul-float/2addr v0, v7

    div-float/2addr v0, v6

    sub-float v0, v5, v0

    goto :goto_0
.end method
