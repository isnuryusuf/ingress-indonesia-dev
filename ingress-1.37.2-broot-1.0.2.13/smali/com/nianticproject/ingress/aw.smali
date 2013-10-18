.class final Lcom/nianticproject/ingress/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/EnterCorrectTextActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/EnterCorrectTextActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/nianticproject/ingress/aw;->a:Lcom/nianticproject/ingress/EnterCorrectTextActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nianticproject/ingress/aw;->a:Lcom/nianticproject/ingress/EnterCorrectTextActivity;

    iget-object v1, p0, Lcom/nianticproject/ingress/aw;->a:Lcom/nianticproject/ingress/EnterCorrectTextActivity;

    invoke-static {v1}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->a(Lcom/nianticproject/ingress/EnterCorrectTextActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/aw;->a:Lcom/nianticproject/ingress/EnterCorrectTextActivity;

    invoke-static {v2}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->b(Lcom/nianticproject/ingress/EnterCorrectTextActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/nianticproject/ingress/aw;->a:Lcom/nianticproject/ingress/EnterCorrectTextActivity;

    invoke-static {v3}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->b(Lcom/nianticproject/ingress/EnterCorrectTextActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/w/v;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->a(Lcom/nianticproject/ingress/EnterCorrectTextActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/nianticproject/ingress/aw;->a:Lcom/nianticproject/ingress/EnterCorrectTextActivity;

    iget-object v1, p0, Lcom/nianticproject/ingress/aw;->a:Lcom/nianticproject/ingress/EnterCorrectTextActivity;

    invoke-static {v1}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->a(Lcom/nianticproject/ingress/EnterCorrectTextActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/service/NemesisService;->c(Landroid/content/Context;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/nianticproject/ingress/aw;->a:Lcom/nianticproject/ingress/EnterCorrectTextActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->b(Lcom/nianticproject/ingress/EnterCorrectTextActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/nianticproject/ingress/o/f;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 133
    return-void
.end method
