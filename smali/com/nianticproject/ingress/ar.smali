.class final Lcom/nianticproject/ingress/ar;
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
    .line 107
    iput-object p1, p0, Lcom/nianticproject/ingress/ar;->a:Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nianticproject/ingress/ar;->a:Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;

    iget-object v1, p0, Lcom/nianticproject/ingress/ar;->a:Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;

    invoke-static {v1}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->d(Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->a(Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;Landroid/net/Uri;)V

    .line 111
    return-void
.end method
