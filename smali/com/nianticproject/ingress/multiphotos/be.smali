.class final Lcom/nianticproject/ingress/multiphotos/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/nianticproject/ingress/multiphotos/bd;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/multiphotos/bd;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/nianticproject/ingress/multiphotos/be;->c:Lcom/nianticproject/ingress/multiphotos/bd;

    iput-object p2, p0, Lcom/nianticproject/ingress/multiphotos/be;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/nianticproject/ingress/multiphotos/be;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/be;->a:Landroid/widget/ImageView;

    invoke-static {v0, p0}, Lcom/nianticproject/ingress/o/f;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 169
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/be;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/be;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 170
    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/be;->c:Lcom/nianticproject/ingress/multiphotos/bd;

    iget-object v2, p0, Lcom/nianticproject/ingress/multiphotos/be;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/nianticproject/ingress/multiphotos/be;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/nianticproject/ingress/multiphotos/bd;->a(Lcom/nianticproject/ingress/multiphotos/bd;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 171
    return-void
.end method
