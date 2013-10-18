.class public final Lcom/nianticproject/ingress/common/ui/elements/bn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

.field private b:F


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    .line 153
    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/ui/elements/bn;-><init>(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 2
    .parameter

    .prologue
    .line 169
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->a()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->b:F

    .line 170
    return-void
.end method

.method final b(F)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x3e99999a

    const v3, 0x3dcccccd

    .line 182
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->b:F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->b(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    mul-float/2addr v0, p1

    .line 184
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->c(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)F

    move-result v1

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->b:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    mul-float/2addr v1, p1

    .line 186
    iget v2, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->b:F

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->c(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 187
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->b:F

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->b(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;F)F

    .line 188
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->b:F

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->b(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)F

    move-result v3

    add-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->a(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;F)F

    .line 198
    :goto_0
    return-void

    .line 190
    :cond_0
    iget v2, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->b:F

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->b(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 191
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->b:F

    invoke-static {v0, v2}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->a(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;F)F

    .line 192
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->b:F

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->c(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)F

    move-result v3

    sub-float v1, v3, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->b(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;F)F

    goto :goto_0

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    iget v3, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->b:F

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->b(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)F

    move-result v4

    add-float/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->a(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;F)F

    .line 196
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->b:F

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/bn;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->c(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)F

    move-result v3

    sub-float v1, v3, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->b(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;F)F

    goto :goto_0
.end method
