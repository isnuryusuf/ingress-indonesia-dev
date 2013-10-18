.class public final Lcom/nianticproject/ingress/shared/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v2, 0x400

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 163
    new-array v1, v2, [I

    sput-object v1, Lcom/nianticproject/ingress/shared/b/b;->a:[I

    .line 164
    new-array v1, v2, [I

    sput-object v1, Lcom/nianticproject/ingress/shared/b/b;->b:[I

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    .line 167
    invoke-static/range {v0 .. v5}, Lcom/nianticproject/ingress/shared/b/b;->a(IIIIII)V

    move v1, v0

    move v2, v0

    move v3, v6

    move v4, v0

    move v5, v6

    .line 168
    invoke-static/range {v0 .. v5}, Lcom/nianticproject/ingress/shared/b/b;->a(IIIIII)V

    move v1, v0

    move v2, v0

    move v3, v7

    move v4, v0

    move v5, v7

    .line 169
    invoke-static/range {v0 .. v5}, Lcom/nianticproject/ingress/shared/b/b;->a(IIIIII)V

    move v1, v0

    move v2, v0

    move v3, v8

    move v4, v0

    move v5, v8

    .line 170
    invoke-static/range {v0 .. v5}, Lcom/nianticproject/ingress/shared/b/b;->a(IIIIII)V

    .line 171
    return-void
.end method

.method private static a(D)I
    .locals 8
    .parameter

    .prologue
    .line 248
    const-wide/16 v0, 0x0

    const-wide/32 v2, 0x3fffffff

    const-wide/high16 v4, 0x41c0

    mul-double/2addr v4, p0

    const-wide v6, 0x41bfffffff800000L

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static a(Lcom/google/a/d/u;)Lcom/google/a/d/j;
    .locals 13
    .parameter

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/google/a/d/u;->b()D

    move-result-wide v0

    .line 113
    invoke-virtual {p0}, Lcom/google/a/d/u;->e()D

    move-result-wide v2

    .line 115
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 116
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    .line 117
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v8, v2, v4

    .line 118
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 121
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v12, v0, v2

    if-lez v12, :cond_3

    cmpl-double v0, v0, v4

    if-lez v0, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v0, v6, v0

    if-gez v0, :cond_0

    const/4 v0, 0x3

    move v4, v0

    .line 125
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 147
    neg-double v0, v8

    div-double v2, v0, v10

    .line 148
    neg-double v0, v6

    div-double/2addr v0, v10

    .line 153
    :goto_1
    invoke-static {v2, v3}, Lcom/google/a/d/aa;->b(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/shared/b/b;->a(D)I

    move-result v5

    .line 154
    invoke-static {v0, v1}, Lcom/google/a/d/aa;->b(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/shared/b/b;->a(D)I

    move-result v6

    .line 155
    int-to-long v0, v4

    const/16 v2, 0x3c

    shl-long v2, v0, v2

    and-int/lit8 v1, v4, 0x1

    const/4 v0, 0x7

    :goto_2
    if-ltz v0, :cond_7

    mul-int/lit8 v4, v0, 0x4

    shr-int v4, v5, v4

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v1, v4

    mul-int/lit8 v4, v0, 0x4

    shr-int v4, v6, v4

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    sget-object v4, Lcom/nianticproject/ingress/shared/b/b;->a:[I

    aget v1, v4, v1

    int-to-long v7, v1

    const/4 v4, 0x2

    shr-long/2addr v7, v4

    mul-int/lit8 v4, v0, 0x2

    mul-int/lit8 v4, v4, 0x4

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    and-int/lit8 v1, v1, 0x3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 121
    :cond_0
    const/4 v0, 0x0

    move v4, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    cmpg-double v0, v10, v0

    if-gez v0, :cond_2

    const/4 v0, 0x5

    move v4, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    move v4, v0

    goto :goto_0

    :cond_3
    cmpl-double v0, v2, v4

    if-lez v0, :cond_5

    const-wide/16 v0, 0x0

    cmpg-double v0, v8, v0

    if-gez v0, :cond_4

    const/4 v0, 0x4

    move v4, v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    move v4, v0

    goto :goto_0

    :cond_5
    const-wide/16 v0, 0x0

    cmpg-double v0, v10, v0

    if-gez v0, :cond_6

    const/4 v0, 0x5

    move v4, v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    move v4, v0

    goto :goto_0

    .line 127
    :pswitch_0
    div-double v2, v8, v6

    .line 128
    div-double v0, v10, v6

    .line 129
    goto :goto_1

    .line 131
    :pswitch_1
    neg-double v0, v6

    div-double v2, v0, v8

    .line 132
    div-double v0, v10, v8

    .line 133
    goto :goto_1

    .line 135
    :pswitch_2
    neg-double v0, v6

    div-double v2, v0, v10

    .line 136
    neg-double v0, v8

    div-double/2addr v0, v10

    .line 137
    goto :goto_1

    .line 139
    :pswitch_3
    div-double v2, v10, v6

    .line 140
    div-double v0, v8, v6

    .line 141
    goto :goto_1

    .line 143
    :pswitch_4
    div-double v2, v10, v8

    .line 144
    neg-double v0, v6

    div-double/2addr v0, v8

    .line 145
    goto/16 :goto_1

    .line 155
    :cond_7
    new-instance v0, Lcom/google/a/d/j;

    const/4 v1, 0x1

    shl-long v1, v2, v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/j;-><init>(J)V

    return-object v0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(II)Lcom/google/a/d/u;
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide v6, 0x412e848000000000L

    const-wide v4, 0x3f91df46a2529d39L

    .line 25
    int-to-double v0, p0

    div-double/2addr v0, v6

    mul-double/2addr v0, v4

    int-to-double v2, p1

    div-double/2addr v2, v6

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/google/a/d/u;->a(DD)Lcom/google/a/d/u;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/a/d/j;)Lcom/google/a/d/u;
    .locals 13
    .parameter

    .prologue
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v2, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/google/a/d/j;->e()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    .line 46
    const/4 v0, 0x7

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 48
    const/4 v0, 0x7

    if-ne v1, v0, :cond_0

    const/4 v0, 0x2

    .line 50
    :goto_1
    int-to-long v5, v2

    invoke-virtual {p0}, Lcom/google/a/d/j;->d()J

    move-result-wide v7

    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x1

    ushr-long/2addr v7, v2

    const/4 v2, 0x1

    mul-int/lit8 v0, v0, 0x2

    shl-int v0, v2, v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v9, v0

    and-long/2addr v7, v9

    const/4 v0, 0x2

    shl-long/2addr v7, v0

    add-long/2addr v5, v7

    long-to-int v0, v5

    .line 52
    sget-object v2, Lcom/nianticproject/ingress/shared/b/b;->b:[I

    aget v0, v2, v0

    .line 53
    shr-int/lit8 v2, v0, 0x6

    mul-int/lit8 v5, v1, 0x4

    shl-int/2addr v2, v5

    add-int/2addr v4, v2

    .line 54
    shr-int/lit8 v2, v0, 0x2

    and-int/lit8 v2, v2, 0xf

    mul-int/lit8 v5, v1, 0x4

    shl-int/2addr v2, v5

    add-int/2addr v3, v2

    .line 55
    and-int/lit8 v2, v0, 0x3

    .line 46
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 48
    :cond_0
    const/4 v0, 0x4

    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/google/a/d/j;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 59
    :goto_2
    shl-int/lit8 v1, v4, 0x1

    add-int/2addr v1, v0

    const/high16 v2, 0x4000

    sub-int/2addr v1, v2

    .line 60
    shl-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    const/high16 v2, 0x4000

    sub-int/2addr v0, v2

    .line 63
    const-wide/high16 v2, 0x3e10

    int-to-double v4, v1

    mul-double v1, v2, v4

    invoke-static {v1, v2}, Lcom/google/a/d/aa;->a(D)D

    move-result-wide v4

    .line 65
    const-wide/high16 v1, 0x3e10

    int-to-double v6, v0

    mul-double v0, v1, v6

    invoke-static {v0, v1}, Lcom/google/a/d/aa;->a(D)D

    move-result-wide v0

    .line 71
    invoke-virtual {p0}, Lcom/google/a/d/j;->e()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 100
    const-wide/high16 v2, -0x4010

    move-wide v11, v2

    move-wide v2, v4

    move-wide v4, v0

    move-wide v0, v11

    .line 104
    :goto_3
    mul-double v6, v4, v4

    mul-double v8, v2, v2

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/a/d/u;->a(DD)Lcom/google/a/d/u;

    move-result-object v0

    return-object v0

    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/google/a/d/j;->d()J

    move-result-wide v0

    long-to-int v0, v0

    ushr-int/lit8 v0, v0, 0x2

    xor-int/2addr v0, v4

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 73
    :pswitch_0
    const-wide/high16 v2, 0x3ff0

    move-wide v11, v4

    move-wide v4, v2

    move-wide v2, v11

    .line 76
    goto :goto_3

    .line 78
    :pswitch_1
    neg-double v4, v4

    .line 79
    const-wide/high16 v2, 0x3ff0

    .line 81
    goto :goto_3

    .line 83
    :pswitch_2
    neg-double v4, v4

    .line 84
    neg-double v2, v0

    .line 85
    const-wide/high16 v0, 0x3ff0

    .line 86
    goto :goto_3

    .line 88
    :pswitch_3
    const-wide/high16 v6, -0x4010

    .line 89
    neg-double v2, v0

    .line 90
    neg-double v0, v4

    move-wide v4, v6

    .line 91
    goto :goto_3

    .line 94
    :pswitch_4
    const-wide/high16 v6, -0x4010

    .line 95
    neg-double v2, v4

    move-wide v4, v0

    move-wide v0, v2

    move-wide v2, v6

    .line 96
    goto :goto_3

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static a(IIIIII)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 177
    shl-int/lit8 v0, p1, 0x4

    add-int/2addr v0, p2

    .line 178
    sget-object v1, Lcom/nianticproject/ingress/shared/b/b;->a:[I

    shl-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p3

    shl-int/lit8 v3, p4, 0x2

    add-int/2addr v3, p5

    aput v3, v1, v2

    .line 179
    sget-object v1, Lcom/nianticproject/ingress/shared/b/b;->b:[I

    shl-int/lit8 v2, p4, 0x2

    add-int/2addr v2, p3

    shl-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p5

    aput v0, v1, v2

    .line 193
    :cond_0
    return-void

    .line 181
    :cond_1
    add-int/lit8 v0, p0, 0x1

    .line 182
    shl-int/lit8 v7, p1, 0x1

    .line 183
    shl-int/lit8 v8, p2, 0x1

    .line 184
    shl-int/lit8 v9, p4, 0x2

    .line 186
    const/4 v1, 0x0

    move v6, v1

    :goto_0
    const/4 v1, 0x4

    if-ge v6, v1, :cond_0

    .line 187
    invoke-static {p5, v6}, Lcom/google/a/d/f;->a(II)I

    move-result v2

    .line 188
    invoke-static {v6}, Lcom/google/a/d/f;->a(I)I

    move-result v3

    .line 189
    ushr-int/lit8 v1, v2, 0x1

    add-int/2addr v1, v7

    and-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v8

    add-int v4, v9, v6

    xor-int v5, p5, v3

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/nianticproject/ingress/shared/b/b;->a(IIIIII)V

    .line 186
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0
.end method
