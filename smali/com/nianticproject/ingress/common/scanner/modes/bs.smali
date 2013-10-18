.class final Lcom/nianticproject/ingress/common/scanner/modes/bs;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/modes/bn;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/bn;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bs;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 416
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bs;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/bn;->a:Lcom/nianticproject/ingress/common/scanner/modes/bj;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/bj;->f(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/common/scanner/modes/bl;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/modes/bl;->c()V

    .line 417
    return-void
.end method
