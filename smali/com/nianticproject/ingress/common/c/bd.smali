.class final Lcom/nianticproject/ingress/common/c/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/c/bk;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/c/bb;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/c/bb;)V
    .locals 0
    .parameter

    .prologue
    .line 740
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/bd;->a:Lcom/nianticproject/ingress/common/c/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/c/bl;)V
    .locals 3
    .parameter

    .prologue
    .line 743
    if-eqz p1, :cond_0

    .line 744
    invoke-static {}, Lcom/nianticproject/ingress/common/c/bb;->e()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v0

    const-string/jumbo v1, "onClipDone returned SoundPlayerException"

    invoke-virtual {v0, p1, v1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bd;->a:Lcom/nianticproject/ingress/common/c/bb;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/c/bb;->a(Lcom/nianticproject/ingress/common/c/bb;)Lcom/nianticproject/ingress/common/c/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/bd;->a:Lcom/nianticproject/ingress/common/c/bb;

    new-instance v2, Lcom/nianticproject/ingress/common/c/w;

    invoke-direct {v2, v0, v1}, Lcom/nianticproject/ingress/common/c/w;-><init>(Lcom/nianticproject/ingress/common/c/ai;Lcom/nianticproject/ingress/common/c/bb;)V

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/common/c/ai;->a(Lcom/nianticproject/ingress/common/c/ah;)V

    .line 747
    return-void
.end method
