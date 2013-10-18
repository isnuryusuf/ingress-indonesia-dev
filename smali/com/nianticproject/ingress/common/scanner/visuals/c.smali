.class public final Lcom/nianticproject/ingress/common/scanner/visuals/c;
.super Lcom/nianticproject/ingress/common/scanner/visuals/a;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:F


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/scanner/visuals/a;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Color;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final a(F)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 36
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/c;->b()F

    move-result v1

    const/high16 v2, 0x4120

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 37
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/c;->a:Z

    .line 40
    :cond_0
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/c;->a:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/c;->b()F

    move-result v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 41
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/c;->b:F

    mul-float v2, v3, p1

    sub-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/c;->b:F

    .line 46
    :goto_0
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/c;->b:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    .line 48
    :goto_1
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/c;->b:F

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/c;->b(F)V

    .line 49
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/visuals/a;->a(F)Z

    .line 50
    return v0

    .line 43
    :cond_1
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/c;->b:F

    const/high16 v2, 0x4000

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/c;->b:F

    goto :goto_0

    .line 46
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/c;->a:Z

    .line 32
    return-void
.end method
