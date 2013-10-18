.class final Lcom/nianticproject/ingress/common/scanner/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/k;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;)V
    .locals 0
    .parameter

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/y;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/y;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/k;->j(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/scanner/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/y;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/k;->j(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/scanner/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/ad;->a()V

    .line 1303
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1308
    const-string/jumbo v0, "notifyScannerAssetsReady"

    return-object v0
.end method
