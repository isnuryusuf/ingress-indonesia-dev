.class final Lcom/nianticproject/ingress/common/scanner/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/ev;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/ev;

.field final synthetic b:Lcom/nianticproject/ingress/common/scanner/ac;

.field final synthetic c:Lcom/nianticproject/ingress/common/scanner/k;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/ev;Lcom/nianticproject/ingress/common/scanner/ac;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/q;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/q;->a:Lcom/nianticproject/ingress/common/scanner/ev;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/q;->b:Lcom/nianticproject/ingress/common/scanner/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/q;->a:Lcom/nianticproject/ingress/common/scanner/ev;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/ev;->a()Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

    move-result-object v0

    .line 485
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/r;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/scanner/r;-><init>(Lcom/nianticproject/ingress/common/scanner/q;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;->a(Lcom/nianticproject/ingress/common/ui/elements/aa;)V

    .line 494
    return-object v0
.end method
