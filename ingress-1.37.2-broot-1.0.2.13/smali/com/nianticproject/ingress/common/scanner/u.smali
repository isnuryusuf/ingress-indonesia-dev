.class final Lcom/nianticproject/ingress/common/scanner/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/elements/r;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/k;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;)V
    .locals 0
    .parameter

    .prologue
    .line 962
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/u;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 965
    const-string/jumbo v1, "Compass"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "lock"

    :goto_0
    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/u;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Z)V

    .line 968
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/u;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/k;->g(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/scanner/modes/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/modes/a;->e()V

    .line 969
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/u;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->x()V

    .line 970
    return-void

    .line 965
    :cond_0
    const-string/jumbo v0, "static"

    goto :goto_0
.end method
