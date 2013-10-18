.class public Lcom/nianticproject/ingress/ui/SlantedButtonPane;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 74
    const/high16 v1, 0x4140

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->a:I

    .line 76
    const/high16 v1, 0x40a0

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->b:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 74
    const/high16 v1, 0x4140

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->a:I

    .line 76
    const/high16 v1, 0x40a0

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->b:I

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 74
    const/high16 v1, 0x4140

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->a:I

    .line 76
    const/high16 v1, 0x40a0

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->b:I

    .line 50
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 82
    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->c:Landroid/widget/Button;

    .line 83
    const v0, 0x7f080064

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->d:Landroid/widget/Button;

    .line 84
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->c:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->d:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->a:I

    sub-int/2addr v0, v1

    .line 91
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->getMeasuredWidth()I

    move-result v1

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    .line 92
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->c:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->d:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->b:I

    sub-int/2addr v1, v2

    .line 94
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->getMeasuredHeight()I

    move-result v2

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    .line 97
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->getMeasuredWidth()I

    move-result v2

    sub-int v0, v2, v0

    iget-object v2, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->c:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 99
    iget-object v2, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->c:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 102
    iget-object v2, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->c:Landroid/widget/Button;

    iget-object v3, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->c:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v1, v3

    iget-object v4, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->c:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/widget/Button;->layout(IIII)V

    .line 104
    iget-object v2, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->d:Landroid/widget/Button;

    iget-object v3, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->d:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v0, v3

    iget v4, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->a:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->b:I

    sub-int v4, v1, v4

    iget v5, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->a:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->b:I

    sub-int/2addr v1, v5

    iget-object v5, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->d:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/widget/Button;->layout(IIII)V

    .line 109
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 114
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->c:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->d:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->a:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->c:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->d:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->a:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nianticproject/ingress/ui/SlantedButtonPane;->setMeasuredDimension(II)V

    .line 118
    return-void
.end method
