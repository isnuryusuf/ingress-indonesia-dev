.class final Lcom/nianticproject/ingress/common/c/av;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/c/ao;

.field private b:Lcom/nianticproject/ingress/common/c/bn;

.field private c:Lcom/google/a/d/u;

.field private d:D

.field private e:D

.field private f:D


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/c/ao;)V
    .locals 1
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/av;->a:Lcom/nianticproject/ingress/common/c/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/av;->b:Lcom/nianticproject/ingress/common/c/bn;

    .line 141
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/d/u;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/av;->c:Lcom/google/a/d/u;

    .line 145
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/ad;F)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const-wide/high16 v10, 0x3ff0

    const-wide/16 v2, 0x0

    .line 149
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/av;->c:Lcom/google/a/d/u;

    if-nez v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/av;->c:Lcom/google/a/d/u;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/shared/b/a;->b(Lcom/google/a/d/u;Lcom/google/a/d/u;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/c/av;->d:D

    .line 154
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/av;->c:Lcom/google/a/d/u;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/shared/b/a;->a(Lcom/google/a/d/u;Lcom/google/a/d/u;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/c/av;->e:D

    .line 159
    const-wide/high16 v0, 0x405e

    iget-wide v6, p0, Lcom/nianticproject/ingress/common/c/av;->e:D

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 160
    iget-wide v6, p0, Lcom/nianticproject/ingress/common/c/av;->d:D

    iget-object v4, p0, Lcom/nianticproject/ingress/common/c/av;->a:Lcom/nianticproject/ingress/common/c/ao;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/c/ao;->a(Lcom/nianticproject/ingress/common/c/ao;)Lcom/nianticproject/ingress/common/model/k;

    move-result-object v4

    invoke-interface {v4}, Lcom/nianticproject/ingress/common/model/k;->f()F

    move-result v4

    float-to-double v8, v4

    sub-double/2addr v6, v8

    double-to-float v4, v6

    invoke-static {v4}, Lcom/nianticproject/ingress/common/w/y;->c(F)F

    move-result v4

    float-to-double v6, v4

    .line 162
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v4, v8, v0

    if-gez v4, :cond_4

    .line 163
    neg-double v6, v6

    div-double v0, v6, v0

    .line 165
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 166
    const-wide/high16 v6, -0x4010

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 167
    const-wide/high16 v6, 0x4000

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double v6, v10, v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    double-to-float v4, v6

    .line 169
    const v6, 0x3dcccccd

    const v7, 0x3f666666

    mul-float/2addr v4, v7

    add-float/2addr v4, v6

    .line 171
    iget-object v6, p0, Lcom/nianticproject/ingress/common/c/av;->a:Lcom/nianticproject/ingress/common/c/ao;

    invoke-static {v6}, Lcom/nianticproject/ingress/common/c/ao;->b(Lcom/nianticproject/ingress/common/c/ao;)Lcom/nianticproject/ingress/common/scanner/ed;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nianticproject/ingress/common/scanner/ed;->a()Z

    move-result v6

    if-nez v6, :cond_2

    .line 172
    iget-object v6, p0, Lcom/nianticproject/ingress/common/c/av;->a:Lcom/nianticproject/ingress/common/c/ao;

    invoke-static {v6}, Lcom/nianticproject/ingress/common/c/ao;->c(Lcom/nianticproject/ingress/common/c/ao;)F

    move-result v6

    mul-float/2addr v4, v6

    .line 176
    :cond_2
    :goto_1
    sget-object v6, Lcom/nianticproject/ingress/common/c/at;->a:[I

    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v7

    invoke-interface {v7}, Lcom/nianticproject/ingress/common/c/e;->d()Lcom/nianticproject/ingress/common/c/f;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nianticproject/ingress/common/c/f;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 188
    :goto_2
    :pswitch_0
    const v5, 0x3d4ccccd

    cmpl-float v5, v4, v5

    if-lez v5, :cond_0

    .line 190
    const-wide/high16 v5, 0x3ff8

    const-wide v7, 0x3f8cac083126e979L

    iget-wide v9, p0, Lcom/nianticproject/ingress/common/c/av;->e:D

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x4034

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    .line 193
    iget-wide v7, p0, Lcom/nianticproject/ingress/common/c/av;->f:D

    float-to-double v9, p2

    add-double/2addr v7, v9

    iput-wide v7, p0, Lcom/nianticproject/ingress/common/c/av;->f:D

    .line 195
    iget-wide v7, p0, Lcom/nianticproject/ingress/common/c/av;->f:D

    cmpl-double v5, v7, v5

    if-ltz v5, :cond_3

    .line 197
    iput-wide v2, p0, Lcom/nianticproject/ingress/common/c/av;->f:D

    .line 199
    new-instance v2, Lcom/nianticproject/ingress/common/c/bo;

    invoke-direct {v2}, Lcom/nianticproject/ingress/common/c/bo;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/nianticproject/ingress/common/c/ba;

    const/4 v5, 0x0

    sget-object v6, Lcom/nianticproject/ingress/common/c/ba;->J:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v6, v3, v5

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/common/c/bo;->a([Lcom/nianticproject/ingress/common/c/ba;)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nianticproject/ingress/common/c/bo;->a(F)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v2

    double-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/c/bo;->b(F)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bo;->f()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/av;->b:Lcom/nianticproject/ingress/common/c/bn;

    .line 204
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/av;->b:Lcom/nianticproject/ingress/common/c/bn;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    goto/16 :goto_0

    :pswitch_1
    move v4, v5

    .line 182
    goto :goto_2

    .line 184
    :pswitch_2
    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    goto :goto_2

    .line 205
    :cond_3
    iget-object v2, p0, Lcom/nianticproject/ingress/common/c/av;->b:Lcom/nianticproject/ingress/common/c/bn;

    if-eqz v2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/nianticproject/ingress/common/c/av;->b:Lcom/nianticproject/ingress/common/c/bn;

    double-to-float v0, v0

    invoke-virtual {v2, v4, v0}, Lcom/nianticproject/ingress/common/c/bn;->a(FF)Lcom/nianticproject/ingress/common/c/bn;

    goto/16 :goto_0

    :cond_4
    move-wide v0, v2

    move v4, v5

    goto :goto_1

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
