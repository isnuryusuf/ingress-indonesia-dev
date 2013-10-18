.class final Lcom/nianticproject/ingress/common/ui/elements/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/z;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

.field final synthetic b:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

.field final synthetic c:Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog;Lcom/nianticproject/ingress/common/ui/widget/ActionButton;Lcom/nianticproject/ingress/common/ui/widget/ActionButton;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/t;->c:Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/elements/t;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/ui/elements/t;->b:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/t;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->b(Z)V

    .line 87
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/t;->b:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->b(Z)V

    .line 88
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/t;->c:Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog;->g()V

    .line 90
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/t;->c:Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog;

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog;->d()V

    .line 91
    return-void
.end method
