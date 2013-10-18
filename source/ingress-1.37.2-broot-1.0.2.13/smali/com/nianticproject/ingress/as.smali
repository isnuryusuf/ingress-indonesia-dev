.class final Lcom/nianticproject/ingress/as;
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
    .line 113
    iput-object p1, p0, Lcom/nianticproject/ingress/as;->a:Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nianticproject/ingress/as;->a:Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ConfirmSubmitPhotoActivity;->finish()V

    .line 117
    return-void
.end method
