.class final Lcom/nianticproject/ingress/common/scanner/modes/w;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/modes/v;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/v;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/w;->a:Lcom/nianticproject/ingress/common/scanner/modes/v;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/w;->a:Lcom/nianticproject/ingress/common/scanner/modes/v;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/v;->a:Lcom/nianticproject/ingress/common/scanner/modes/u;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/u;->b(Lcom/nianticproject/ingress/common/scanner/modes/u;)Lcom/nianticproject/ingress/common/scanner/modes/y;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/w;->a:Lcom/nianticproject/ingress/common/scanner/modes/v;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/scanner/modes/v;->a:Lcom/nianticproject/ingress/common/scanner/modes/u;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/u;->a(Lcom/nianticproject/ingress/common/scanner/modes/u;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/w;->a:Lcom/nianticproject/ingress/common/scanner/modes/v;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/scanner/modes/v;->a:Lcom/nianticproject/ingress/common/scanner/modes/u;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/scanner/modes/u;->e:Lcom/nianticproject/ingress/common/scanner/ej;

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/modes/y;->b(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/ej;)V

    .line 100
    return-void
.end method
