.class public final Lcom/nianticproject/ingress/common/scanner/visuals/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/o;


# instance fields
.field private final a:F

.field private final b:Lcom/nianticproject/ingress/common/j/h;

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:Lcom/badlogic/gdx/math/Matrix4;

.field private final g:Lcom/badlogic/gdx/graphics/Color;

.field private h:F

.field private i:[Lcom/nianticproject/ingress/common/scanner/visuals/v;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/j/ai;FIFFLcom/badlogic/gdx/graphics/Color;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->f:Lcom/badlogic/gdx/math/Matrix4;

    .line 52
    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/ai;->b()[S

    move-result-object v1

    const-string/jumbo v2, "Mesh must have face indices"

    invoke-static {v1, v2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iput p3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->a:F

    .line 55
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->b:Lcom/nianticproject/ingress/common/j/h;

    .line 56
    move/from16 v0, p5

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->c:F

    .line 57
    move/from16 v0, p6

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->d:F

    .line 58
    const/high16 v1, 0x4334

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->e:F

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->h:F

    .line 60
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p7

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->g:Lcom/badlogic/gdx/graphics/Color;

    .line 62
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v3, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 63
    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/ai;->b()[S

    move-result-object v4

    .line 64
    array-length v1, v4

    div-int/lit8 v5, v1, 0x3

    .line 69
    invoke-static {v5, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v1, v1, [Lcom/nianticproject/ingress/common/scanner/visuals/v;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->i:[Lcom/nianticproject/ingress/common/scanner/visuals/v;

    .line 70
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->i:[Lcom/nianticproject/ingress/common/scanner/visuals/v;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 71
    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 73
    new-instance v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;

    const/4 v2, 0x0

    invoke-direct {v7, p0, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/v;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/u;B)V

    .line 74
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/badlogic/gdx/math/Vector3;

    iput-object v2, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->a:[Lcom/badlogic/gdx/math/Vector3;

    .line 75
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/badlogic/gdx/math/Vector3;

    iput-object v2, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->b:[Lcom/badlogic/gdx/math/Vector3;

    .line 76
    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v2, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->e:Lcom/badlogic/gdx/math/Vector3;

    .line 77
    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v2, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->c:Lcom/badlogic/gdx/math/Vector3;

    .line 79
    const/4 v2, 0x0

    :goto_1
    const/4 v8, 0x3

    if-ge v2, v8, :cond_0

    .line 80
    mul-int/lit8 v8, v6, 0x3

    add-int/2addr v8, v2

    aget-short v8, v4, v8

    .line 81
    iget-object v9, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->b:[Lcom/badlogic/gdx/math/Vector3;

    new-instance v10, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v10}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v10, v9, v2

    .line 82
    iget-object v9, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->a:[Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v8}, Lcom/nianticproject/ingress/common/j/ai;->a(I)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    aput-object v8, v9, v2

    .line 83
    iget-object v8, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->c:Lcom/badlogic/gdx/math/Vector3;

    iget-object v9, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->a:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 85
    :cond_0
    iget-object v2, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->c:Lcom/badlogic/gdx/math/Vector3;

    const v6, 0x3eaaaaab

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 88
    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    iget-object v6, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->a:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v8, 0x0

    aget-object v6, v6, v8

    invoke-direct {v2, v6}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    iget-object v6, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->a:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v8, 0x1

    aget-object v6, v6, v8

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iput-object v2, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->e:Lcom/badlogic/gdx/math/Vector3;

    .line 91
    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    iget-object v6, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->a:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v8, 0x2

    aget-object v6, v6, v8

    invoke-direct {v2, v6}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    iget-object v6, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->a:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v8, 0x0

    aget-object v6, v6, v8

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v6, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->e:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iput-object v2, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->d:Lcom/badlogic/gdx/math/Vector3;

    .line 96
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->i:[Lcom/nianticproject/ingress/common/scanner/visuals/v;

    aput-object v7, v2, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 98
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f40

    const/4 v1, 0x0

    .line 110
    :try_start_0
    const-string/jumbo v0, "ExplodingMeshVisuals.draw"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->g:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f40

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->a:F

    iget v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->h:F

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, v5

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 113
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->h:F

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->a:F

    div-float/2addr v0, v2

    .line 114
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->c:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->d:F

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    sub-float/2addr v3, v2

    mul-float/2addr v0, v3

    add-float v3, v2, v0

    .line 115
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->e:F

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->h:F

    mul-float v4, v0, v2

    .line 117
    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->i:[Lcom/nianticproject/ingress/common/scanner/visuals/v;

    array-length v6, v5

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v7, v5, v2

    .line 118
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->f:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v8, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->d:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v8, v3

    iget-object v9, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->d:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v9, v3

    iget-object v10, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->d:Lcom/badlogic/gdx/math/Vector3;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v10, v3

    invoke-virtual {v0, v8, v9, v10}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v8, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->e:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v9, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->e:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v10, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->e:Lcom/badlogic/gdx/math/Vector3;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v8, v9, v10, v4}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v8, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->c:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v8, v8

    iget-object v9, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->c:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v9, v9

    iget-object v10, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->c:Lcom/badlogic/gdx/math/Vector3;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v10, v10

    invoke-virtual {v0, v8, v9, v10}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move v0, v1

    .line 124
    :goto_1
    const/4 v8, 0x3

    if-ge v0, v8, :cond_0

    .line 125
    iget-object v8, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->b:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v8, v8, v0

    iget-object v9, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->a:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v9, v9, v0

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    iget-object v9, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->f:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->b:Lcom/nianticproject/ingress/common/j/h;

    iget-object v8, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->b:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-object v9, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->b:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    iget-object v7, v7, Lcom/nianticproject/ingress/common/scanner/visuals/v;->b:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v10, 0x2

    aget-object v7, v7, v10

    iget-object v10, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->g:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v8, v9, v7, v10}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public final a(F)Z
    .locals 2
    .parameter

    .prologue
    .line 102
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->h:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->h:F

    .line 103
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->h:F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/u;->a:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final dispose()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method
