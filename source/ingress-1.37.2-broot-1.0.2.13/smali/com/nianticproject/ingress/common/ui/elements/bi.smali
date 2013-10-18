.class final Lcom/nianticproject/ingress/common/ui/elements/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/k;

.field final synthetic b:Lcom/nianticproject/ingress/gameentity/f;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/bi;->a:Lcom/nianticproject/ingress/common/scanner/k;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/elements/bi;->b:Lcom/nianticproject/ingress/gameentity/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 152
    const-string/jumbo v0, "QuickAction"

    const-string/jumbo v1, "setTargetEntity"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bi;->a:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/bi;->b:Lcom/nianticproject/ingress/gameentity/f;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/nianticproject/ingress/gameentity/f;)V

    .line 154
    return-void
.end method
