.class final Lcom/nianticproject/ingress/common/scanner/visuals/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/ev;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/visuals/HackController;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/visuals/HackController;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ao;->a:Lcom/nianticproject/ingress/common/scanner/visuals/HackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;
    .locals 2

    .prologue
    .line 455
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/av;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ao;->a:Lcom/nianticproject/ingress/common/scanner/visuals/HackController;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/av;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/HackController;)V

    .line 456
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/ap;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/scanner/visuals/ap;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/ao;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/av;->a(Lcom/nianticproject/ingress/common/ui/elements/aa;)V

    .line 465
    return-object v0
.end method
