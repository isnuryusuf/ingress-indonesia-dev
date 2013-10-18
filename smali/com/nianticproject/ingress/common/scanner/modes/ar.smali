.class final Lcom/nianticproject/ingress/common/scanner/modes/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/z;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/modes/ap;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 949
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ar;->a:Lcom/nianticproject/ingress/common/scanner/modes/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 952
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ar;->a:Lcom/nianticproject/ingress/common/scanner/modes/ap;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/ap;->a:Lcom/nianticproject/ingress/common/scanner/modes/ah;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->j(Lcom/nianticproject/ingress/common/scanner/modes/ah;)Lcom/nianticproject/ingress/common/scanner/em;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/em;->a(Z)V

    .line 953
    return-void
.end method
