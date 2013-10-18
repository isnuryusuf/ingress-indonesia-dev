.class public final Lcom/nianticproject/ingress/common/ui/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v1, p0, Lcom/nianticproject/ingress/common/ui/d/f;->i:F

    .line 38
    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->j:F

    .line 39
    iput v1, p0, Lcom/nianticproject/ingress/common/ui/d/f;->g:F

    .line 40
    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->h:F

    .line 41
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 104
    iput v1, p0, Lcom/nianticproject/ingress/common/ui/d/f;->i:F

    .line 105
    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->j:F

    .line 106
    iput v1, p0, Lcom/nianticproject/ingress/common/ui/d/f;->g:F

    .line 107
    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->h:F

    .line 108
    return-void
.end method

.method public final a(FFFF)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    .line 52
    sub-float v2, p1, p3

    .line 53
    sub-float v3, p2, p4

    .line 56
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->b:F

    .line 57
    cmpl-float v0, v2, v6

    if-nez v0, :cond_0

    cmpl-float v0, v3, v6

    if-nez v0, :cond_0

    const-wide v0, -0x4006de04abbbd2e8L

    :goto_0
    double-to-float v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->a:F

    .line 58
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->b:F

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->d:F

    .line 59
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->a:F

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->c:F

    .line 60
    iput v7, p0, Lcom/nianticproject/ingress/common/ui/d/f;->i:F

    .line 61
    iput v6, p0, Lcom/nianticproject/ingress/common/ui/d/f;->j:F

    .line 62
    iput v7, p0, Lcom/nianticproject/ingress/common/ui/d/f;->g:F

    .line 63
    iput v6, p0, Lcom/nianticproject/ingress/common/ui/d/f;->h:F

    .line 64
    iput v2, p0, Lcom/nianticproject/ingress/common/ui/d/f;->e:F

    .line 65
    iput v3, p0, Lcom/nianticproject/ingress/common/ui/d/f;->f:F

    .line 66
    return-void

    .line 57
    :cond_0
    float-to-double v0, v2

    neg-float v4, v3

    float-to-double v4, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->g:F

    return v0
.end method

.method public final b(FFFF)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v9, 0x40c90fdb

    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    .line 76
    sub-float v1, p1, p3

    .line 77
    sub-float v2, p2, p4

    .line 80
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->b:F

    .line 82
    float-to-double v3, v1

    neg-float v0, v2

    float-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v0, v3

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->a:F

    .line 85
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->a:F

    iget v3, p0, Lcom/nianticproject/ingress/common/ui/d/f;->c:F

    sub-float/2addr v0, v3

    const v3, 0x3fc90fdb

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    sub-float/2addr v0, v9

    :cond_0
    :goto_0
    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->j:F

    .line 88
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->b:F

    iget v3, p0, Lcom/nianticproject/ingress/common/ui/d/f;->d:F

    div-float/2addr v0, v3

    const/high16 v3, 0x3f00

    const/high16 v4, 0x4000

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->i:F

    .line 91
    cmpl-float v0, v1, v7

    if-nez v0, :cond_2

    cmpl-float v0, v2, v7

    if-nez v0, :cond_2

    iget v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->i:F

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->g:F

    iput v7, p0, Lcom/nianticproject/ingress/common/ui/d/f;->h:F

    .line 93
    :goto_1
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->b:F

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->d:F

    .line 94
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->a:F

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->c:F

    .line 96
    iput v1, p0, Lcom/nianticproject/ingress/common/ui/d/f;->e:F

    .line 97
    iput v2, p0, Lcom/nianticproject/ingress/common/ui/d/f;->f:F

    .line 98
    return-void

    .line 85
    :cond_1
    const v3, -0x4036f025

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    add-float/2addr v0, v9

    goto :goto_0

    .line 91
    :cond_2
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->e:F

    sub-float v3, v1, v0

    iget v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->f:F

    sub-float v4, v2, v0

    iget v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->e:F

    iget v5, p0, Lcom/nianticproject/ingress/common/ui/d/f;->e:F

    mul-float/2addr v0, v5

    iget v5, p0, Lcom/nianticproject/ingress/common/ui/d/f;->f:F

    iget v6, p0, Lcom/nianticproject/ingress/common/ui/d/f;->f:F

    mul-float/2addr v5, v6

    add-float/2addr v0, v5

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    cmpl-float v5, v0, v7

    if-lez v5, :cond_3

    div-float v0, v8, v0

    iget v5, p0, Lcom/nianticproject/ingress/common/ui/d/f;->e:F

    mul-float/2addr v5, v0

    iput v5, p0, Lcom/nianticproject/ingress/common/ui/d/f;->e:F

    iget v5, p0, Lcom/nianticproject/ingress/common/ui/d/f;->f:F

    mul-float/2addr v5, v0

    iput v5, p0, Lcom/nianticproject/ingress/common/ui/d/f;->f:F

    :cond_3
    iget v5, p0, Lcom/nianticproject/ingress/common/ui/d/f;->e:F

    mul-float/2addr v5, v3

    iget v6, p0, Lcom/nianticproject/ingress/common/ui/d/f;->f:F

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    iget v6, p0, Lcom/nianticproject/ingress/common/ui/d/f;->f:F

    mul-float/2addr v3, v6

    iget v6, p0, Lcom/nianticproject/ingress/common/ui/d/f;->e:F

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    cmpl-float v0, v0, v7

    if-lez v0, :cond_6

    iput v8, p0, Lcom/nianticproject/ingress/common/ui/d/f;->k:F

    iput v8, p0, Lcom/nianticproject/ingress/common/ui/d/f;->l:F

    mul-float v0, v5, v5

    mul-float/2addr v0, v0

    mul-float/2addr v3, v3

    mul-float/2addr v3, v3

    cmpl-float v4, v0, v3

    if-lez v4, :cond_5

    div-float v0, v3, v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->l:F

    :cond_4
    :goto_2
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->k:F

    float-to-double v3, v0

    iget v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->i:F

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    double-to-float v0, v3

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->g:F

    iget v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->l:F

    iget v3, p0, Lcom/nianticproject/ingress/common/ui/d/f;->j:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->h:F

    goto :goto_1

    :cond_5
    cmpg-float v4, v0, v3

    if-gez v4, :cond_4

    div-float/2addr v0, v3

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->k:F

    goto :goto_2

    :cond_6
    iput v8, p0, Lcom/nianticproject/ingress/common/ui/d/f;->k:F

    iput v7, p0, Lcom/nianticproject/ingress/common/ui/d/f;->l:F

    goto :goto_2
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/d/f;->h:F

    return v0
.end method
