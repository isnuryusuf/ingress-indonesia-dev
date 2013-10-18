.class final Lcom/nianticproject/ingress/common/scanner/modes/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/ej;

.field final synthetic b:Lcom/nianticproject/ingress/common/scanner/modes/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/a;Lcom/nianticproject/ingress/common/scanner/ej;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/f;->b:Lcom/nianticproject/ingress/common/scanner/modes/a;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/modes/f;->a:Lcom/nianticproject/ingress/common/scanner/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/f;->b:Lcom/nianticproject/ingress/common/scanner/modes/a;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/a;->a(Lcom/nianticproject/ingress/common/scanner/modes/a;)Lcom/nianticproject/ingress/common/scanner/modes/g;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/f;->a:Lcom/nianticproject/ingress/common/scanner/ej;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/g;->c(Lcom/nianticproject/ingress/common/scanner/ej;)V

    .line 295
    return-void
.end method
