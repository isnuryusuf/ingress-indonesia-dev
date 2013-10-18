.class public final Lcom/nianticproject/ingress/common/ui/elements/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

.field private b:F


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->a:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->b:F

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/ui/elements/u;-><init>(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;)V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->b:F

    return v0
.end method

.method final a(F)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x3e99999a

    const v3, 0x3dcccccd

    .line 84
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->b:F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->a:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->a(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;)F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    mul-float/2addr v0, p1

    .line 85
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->a:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->b(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;)F

    move-result v1

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->b:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    mul-float/2addr v1, p1

    .line 86
    iget v2, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->b:F

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->a:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->b(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 87
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->a:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->b:F

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->b(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;F)F

    .line 88
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->a:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->b:F

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->a:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->a(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;)F

    move-result v3

    add-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->a(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;F)F

    .line 96
    :goto_0
    return-void

    .line 89
    :cond_0
    iget v2, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->b:F

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->a:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->a(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 90
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->a:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->b:F

    invoke-static {v0, v2}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->a(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;F)F

    .line 91
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->a:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->b:F

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->a:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->b(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;)F

    move-result v3

    sub-float v1, v3, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->b(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;F)F

    goto :goto_0

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->a:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    iget v3, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->b:F

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->a:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->a(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;)F

    move-result v4

    add-float/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->a(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;F)F

    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->a:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->b:F

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->a:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->b(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;)F

    move-result v3

    sub-float v1, v3, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->b(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;F)F

    goto :goto_0
.end method

.method public final a(FZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Progress must be between 0.0 and 1.0"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 64
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->b:F

    .line 65
    if-nez p2, :cond_0

    .line 66
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->a:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->b:F

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->a(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;F)F

    .line 67
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->a:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/elements/u;->b:F

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->b(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;F)F

    .line 69
    :cond_0
    return-void

    .line 62
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
