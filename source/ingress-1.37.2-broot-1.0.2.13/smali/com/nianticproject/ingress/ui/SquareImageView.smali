.class public Lcom/nianticproject/ingress/ui/SquareImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 50
    invoke-super {p0, v0, v0}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 51
    return-void
.end method
