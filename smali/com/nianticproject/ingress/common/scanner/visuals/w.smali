.class public final Lcom/nianticproject/ingress/common/scanner/visuals/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/o;


# instance fields
.field private final a:F

.field private final b:Lcom/nianticproject/ingress/common/j/h;

.field private final c:Lcom/badlogic/gdx/graphics/Color;

.field private d:F

.field private e:[Lcom/nianticproject/ingress/common/scanner/visuals/x;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/j/h;FIFFLcom/badlogic/gdx/graphics/Color;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/w;->a:F

    .line 46
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/w;->b:Lcom/nianticproject/ingress/common/j/h;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/w;->d:F

    .line 48
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, p6}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/w;->c:Lcom/badlogic/gdx/graphics/Color;

    .line 50
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 51
    new-array v0, p3, [Lcom/nianticproject/ingress/common/scanner/visuals/x;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/w;->e:[Lcom/nianticproject/ingress/common/scanner/visuals/x;

    .line 54
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/w;->e:[Lcom/nianticproject/ingress/common/scanner/visuals/x;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 55
    new-instance v2, Lcom/nianticproject/ingress/common/scanner/visuals/x;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/nianticproject/ingress/common/scanner/visuals/x;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/w;B)V

    .line 56
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v4

    invoke-static {v3, v4}, Lcom/nianticproject/ingress/common/w/ao;->a(FF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iput-object v3, v2, Lcom/nianticproject/ingress/common/scanner/visuals/x;->a:Lcom/badlogic/gdx/math/Vector3;

    .line 57
    const v3, 0x3dcccccd

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f80

    sub-float/2addr v4, v5

    mul-float/2addr v4, p5

    const v5, 0x3dcccccd

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/nianticproject/ingress/common/scanner/visuals/x;->b:F

    .line 58
    const/high16 v3, 0x3e80

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f80

    sub-float/2addr v4, v5

    mul-float/2addr v4, p5

    const/high16 v5, 0x3e80

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/nianticproject/ingress/common/scanner/visuals/x;->c:F

    .line 59
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f80

    sub-float/2addr v3, v4

    mul-float/2addr v3, p5

    mul-float/2addr v3, p4

    add-float/2addr v3, p4

    iput v3, v2, Lcom/nianticproject/ingress/common/scanner/visuals/x;->d:F

    .line 60
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/w;->e:[Lcom/nianticproject/ingress/common/scanner/visuals/x;

    aput-object v2, v3, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x3f40

    .line 73
    :try_start_0
    const-string/jumbo v0, "ExplodingSparksVisuals.draw"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 74
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/w;->d:F

    const/high16 v2, 0x3e80

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 75
    const/high16 v1, 0x3f40

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/w;->a:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/w;->d:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v1, v4

    .line 76
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/w;->d:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/w;->a:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 77
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/w;->c:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 79
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/w;->e:[Lcom/nianticproject/ingress/common/scanner/visuals/x;

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 80
    iget v5, v4, Lcom/nianticproject/ingress/common/scanner/visuals/x;->c:F

    iget v6, v4, Lcom/nianticproject/ingress/common/scanner/visuals/x;->d:F

    sub-float/2addr v6, v5

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    .line 81
    iget v6, v4, Lcom/nianticproject/ingress/common/scanner/visuals/x;->b:F

    sub-float v6, v5, v6

    .line 83
    iget-object v7, v4, Lcom/nianticproject/ingress/common/scanner/visuals/x;->e:Lcom/badlogic/gdx/math/Vector3;

    iget-object v8, v4, Lcom/nianticproject/ingress/common/scanner/visuals/x;->a:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    invoke-virtual {v7, v6, v6, v6}, Lcom/badlogic/gdx/math/Vector3;->scale(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 87
    iget-object v6, v4, Lcom/nianticproject/ingress/common/scanner/visuals/x;->f:Lcom/badlogic/gdx/math/Vector3;

    iget-object v7, v4, Lcom/nianticproject/ingress/common/scanner/visuals/x;->a:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, v5, v5, v5}, Lcom/badlogic/gdx/math/Vector3;->scale(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 92
    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/w;->b:Lcom/nianticproject/ingress/common/j/h;

    iget-object v6, v4, Lcom/nianticproject/ingress/common/scanner/visuals/x;->e:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, v4, Lcom/nianticproject/ingress/common/scanner/visuals/x;->f:Lcom/badlogic/gdx/math/Vector3;

    iget-object v7, p0, Lcom/nianticproject/ingress/common/scanner/visuals/w;->c:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v4, v7}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public final a(F)Z
    .locals 2
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/w;->d:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/w;->d:F

    .line 67
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/w;->d:F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/w;->a:F

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
    .line 106
    return-void
.end method
