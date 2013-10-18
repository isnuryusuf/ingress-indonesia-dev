.class final Lcom/nianticproject/ingress/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/nianticproject/ingress/ap;->a:Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nianticproject/ingress/ap;->a:Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->a(Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;)V

    .line 78
    iget-object v0, p0, Lcom/nianticproject/ingress/ap;->a:Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->b(Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/nianticproject/ingress/o/f;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 79
    return-void
.end method
