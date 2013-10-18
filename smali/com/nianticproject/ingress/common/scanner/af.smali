.class final Lcom/nianticproject/ingress/common/scanner/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/ae;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/ae;)V
    .locals 0
    .parameter

    .prologue
    .line 1583
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/af;->a:Lcom/nianticproject/ingress/common/scanner/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/af;->a:Lcom/nianticproject/ingress/common/scanner/ae;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/ae;->a(Lcom/nianticproject/ingress/common/scanner/ae;)Lcom/nianticproject/ingress/common/af;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/af;->a()V

    .line 1587
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1592
    const-string/jumbo v0, "notifyScannerAssetsReady"

    return-object v0
.end method
