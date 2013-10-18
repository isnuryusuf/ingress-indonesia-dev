.class final Lcom/nianticproject/ingress/common/scanner/modes/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/at;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/modes/ba;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bb;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/shared/r;Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bb;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    iget-boolean v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->a:Z

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bb;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->a(Lcom/nianticproject/ingress/common/scanner/modes/ba;F)F

    .line 221
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bb;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    iput-object p2, v0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->g:Lcom/nianticproject/ingress/gameentity/f;

    .line 222
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bb;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    iput-object p1, v0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->h:Lcom/nianticproject/ingress/shared/r;

    .line 223
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bb;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->a(Lcom/nianticproject/ingress/common/scanner/modes/ba;)V

    .line 224
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bb;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bb;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/scanner/modes/ba;->g:Lcom/nianticproject/ingress/gameentity/f;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->a(Lcom/nianticproject/ingress/gameentity/f;)V

    goto :goto_0
.end method
