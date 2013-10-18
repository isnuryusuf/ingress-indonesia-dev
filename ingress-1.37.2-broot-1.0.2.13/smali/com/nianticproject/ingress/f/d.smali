.class final Lcom/nianticproject/ingress/f/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/Button;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/view/View;

.field public g:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const v0, 0x7f080022

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nianticproject/ingress/f/d;->a:Landroid/widget/ImageView;

    .line 38
    const v0, 0x7f080027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nianticproject/ingress/f/d;->b:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f080028

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nianticproject/ingress/f/d;->c:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f080024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nianticproject/ingress/f/d;->d:Landroid/widget/Button;

    .line 41
    const v0, 0x7f080025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nianticproject/ingress/f/d;->e:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f080026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/f/d;->f:Landroid/view/View;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const v1, 0x7f020039

    .line 46
    if-nez p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/f/d;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    :goto_0
    return-void

    .line 51
    :cond_0
    if-eqz p2, :cond_1

    .line 52
    iget-object v0, p0, Lcom/nianticproject/ingress/f/d;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/f/d;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/f/d;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/nianticproject/ingress/ec;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/f/d;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nianticproject/ingress/f/d;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 61
    iget-object v0, p0, Lcom/nianticproject/ingress/f/d;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/f/d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 63
    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/nianticproject/ingress/f/d;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/f/d;->a:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/LightingColorFilter;

    const v2, 0x888888

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method
