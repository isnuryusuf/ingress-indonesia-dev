.class final Lcom/nianticproject/ingress/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/nianticproject/ingress/aq;->a:Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nianticproject/ingress/aq;->a:Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->c(Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/aq;->a:Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->c(Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/aq;->a:Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;

    invoke-static {v1}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->d(Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/aq;->a:Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;

    invoke-static {v2}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->b(Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/nianticproject/ingress/aq;->a:Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;

    invoke-static {v3}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->b(Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Landroid/net/Uri;I)I

    goto :goto_0
.end method
