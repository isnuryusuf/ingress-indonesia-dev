.class final Lcom/nianticproject/ingress/common/missions/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/af;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/af;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/am;->a:Lcom/nianticproject/ingress/common/missions/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/am;->a:Lcom/nianticproject/ingress/common/missions/af;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/af;->m:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->B()Lcom/nianticproject/ingress/common/ui/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/e/b;->c()V

    .line 332
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    const-string/jumbo v0, "refreshScannerMode"

    return-object v0
.end method
