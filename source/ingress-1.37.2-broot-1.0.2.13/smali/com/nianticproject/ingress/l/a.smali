.class public final Lcom/nianticproject/ingress/l/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:F

.field private b:F

.field private c:J

.field private final d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/l/a;->b:F

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/l/a;->c:J

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/l/a;->d:Z

    .line 99
    return-void
.end method


# virtual methods
.method public final a(JF)F
    .locals 11
    .parameter
    .parameter

    .prologue
    const/high16 v10, 0x3f00

    const/high16 v9, 0x4120

    const/high16 v8, 0x43b4

    const/4 v7, 0x0

    .line 110
    iget-wide v0, p0, Lcom/nianticproject/ingress/l/a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nianticproject/ingress/l/a;->c:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 111
    :cond_0
    iput p3, p0, Lcom/nianticproject/ingress/l/a;->a:F

    .line 135
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/nianticproject/ingress/l/a;->c:J

    .line 138
    iget-boolean v0, p0, Lcom/nianticproject/ingress/l/a;->d:Z

    if-eqz v0, :cond_a

    .line 139
    :goto_1
    iget v0, p0, Lcom/nianticproject/ingress/l/a;->a:F

    cmpl-float v0, v0, v8

    if-ltz v0, :cond_9

    .line 140
    iget v0, p0, Lcom/nianticproject/ingress/l/a;->a:F

    sub-float/2addr v0, v8

    iput v0, p0, Lcom/nianticproject/ingress/l/a;->a:F

    goto :goto_1

    .line 114
    :cond_2
    iget-boolean v0, p0, Lcom/nianticproject/ingress/l/a;->d:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nianticproject/ingress/l/a;->a:F

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    cmpl-float v0, v0, v8

    if-lez v0, :cond_3

    .line 115
    iget v0, p0, Lcom/nianticproject/ingress/l/a;->a:F

    cmpg-float v0, p3, v0

    if-gez v0, :cond_5

    .line 116
    add-float/2addr p3, v8

    .line 122
    :cond_3
    :goto_2
    iget-wide v0, p0, Lcom/nianticproject/ingress/l/a;->c:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    .line 123
    cmpl-float v1, v0, v9

    if-gtz v1, :cond_4

    cmpg-float v1, v0, v7

    if-gez v1, :cond_6

    .line 125
    :cond_4
    iput p3, p0, Lcom/nianticproject/ingress/l/a;->a:F

    .line 126
    iput v7, p0, Lcom/nianticproject/ingress/l/a;->b:F

    goto :goto_0

    .line 118
    :cond_5
    sub-float/2addr p3, v8

    goto :goto_2

    .line 128
    :cond_6
    :goto_3
    cmpl-float v1, v0, v7

    if-lez v1, :cond_1

    .line 129
    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 130
    iget v2, p0, Lcom/nianticproject/ingress/l/a;->a:F

    sub-float v2, p3, v2

    div-float/2addr v2, v9

    iget v3, p0, Lcom/nianticproject/ingress/l/a;->b:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v2

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, p0, Lcom/nianticproject/ingress/l/a;->b:F

    iget v3, p0, Lcom/nianticproject/ingress/l/a;->b:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_7

    mul-float/2addr v2, v9

    iget v3, p0, Lcom/nianticproject/ingress/l/a;->b:F

    div-float/2addr v2, v3

    const-wide/high16 v3, 0x3ff0

    neg-float v5, v2

    mul-float/2addr v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    mul-double v2, v3, v5

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-float v2, v2

    mul-float v3, v2, v1

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_8

    iput v7, p0, Lcom/nianticproject/ingress/l/a;->b:F

    .line 131
    :cond_7
    :goto_4
    sub-float/2addr v0, v10

    .line 132
    goto :goto_3

    .line 130
    :cond_8
    iget v3, p0, Lcom/nianticproject/ingress/l/a;->b:F

    iget v4, p0, Lcom/nianticproject/ingress/l/a;->b:F

    mul-float/2addr v2, v4

    mul-float/2addr v2, v1

    sub-float v2, v3, v2

    iput v2, p0, Lcom/nianticproject/ingress/l/a;->b:F

    iget v2, p0, Lcom/nianticproject/ingress/l/a;->a:F

    iget v3, p0, Lcom/nianticproject/ingress/l/a;->b:F

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/nianticproject/ingress/l/a;->a:F

    goto :goto_4

    .line 142
    :cond_9
    :goto_5
    iget v0, p0, Lcom/nianticproject/ingress/l/a;->a:F

    cmpg-float v0, v0, v7

    if-gez v0, :cond_a

    .line 143
    iget v0, p0, Lcom/nianticproject/ingress/l/a;->a:F

    add-float/2addr v0, v8

    iput v0, p0, Lcom/nianticproject/ingress/l/a;->a:F

    goto :goto_5

    .line 147
    :cond_a
    iget v0, p0, Lcom/nianticproject/ingress/l/a;->a:F

    return v0
.end method
