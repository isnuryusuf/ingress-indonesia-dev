.class final Lcom/nianticproject/ingress/common/scanner/modes/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/modes/p;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/p;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/q;->a:Lcom/nianticproject/ingress/common/scanner/modes/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/q;->a:Lcom/nianticproject/ingress/common/scanner/modes/p;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/p;->a(Lcom/nianticproject/ingress/common/scanner/modes/p;)Lcom/nianticproject/ingress/common/scanner/modes/af;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/q;->a:Lcom/nianticproject/ingress/common/scanner/modes/p;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/p;->a(Lcom/nianticproject/ingress/common/scanner/modes/p;)Lcom/nianticproject/ingress/common/scanner/modes/af;

    move-result-object v0

    const-string/jumbo v1, "Choose Target Portal"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/af;->a(Ljava/lang/String;)V

    .line 100
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string/jumbo v0, "FlipChoosePortalMode.RevertText"

    return-object v0
.end method
