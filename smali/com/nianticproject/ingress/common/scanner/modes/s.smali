.class final Lcom/nianticproject/ingress/common/scanner/modes/s;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/modes/r;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/r;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/s;->a:Lcom/nianticproject/ingress/common/scanner/modes/r;

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
    .line 210
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/s;->a:Lcom/nianticproject/ingress/common/scanner/modes/r;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/r;->a:Lcom/nianticproject/ingress/common/scanner/modes/p;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/p;->b(Lcom/nianticproject/ingress/common/scanner/modes/p;)Lcom/nianticproject/ingress/common/scanner/modes/y;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/modes/y;->c()V

    .line 211
    return-void
.end method
