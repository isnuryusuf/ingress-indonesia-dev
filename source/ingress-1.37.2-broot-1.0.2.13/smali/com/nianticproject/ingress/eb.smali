.class final Lcom/nianticproject/ingress/eb;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/dw;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/dw;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/nianticproject/ingress/eb;->a:Lcom/nianticproject/ingress/dw;

    .line 230
    invoke-direct {p0, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 231
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/high16 v7, 0x3f80

    const v4, 0x3ea8f5c3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 239
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 240
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x3

    new-array v2, v2, [F

    invoke-static {p1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v3, v2, v5

    add-float/2addr v3, v4

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v2, v5

    aget v3, v2, v8

    add-float/2addr v3, v4

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v2, v8

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 242
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 243
    new-array v3, v5, [I

    const v4, 0x10100a7

    aput v4, v3, v6

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 244
    new-array v1, v5, [I

    const v3, 0x101009c

    aput v3, v1, v6

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 245
    new-array v1, v5, [I

    aput v6, v1, v6

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 246
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 247
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
