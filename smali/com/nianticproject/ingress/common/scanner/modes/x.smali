.class final Lcom/nianticproject/ingress/common/scanner/modes/x;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/modes/v;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/v;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/x;->a:Lcom/nianticproject/ingress/common/scanner/modes/v;

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
    .line 112
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/x;->a:Lcom/nianticproject/ingress/common/scanner/modes/v;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/v;->a:Lcom/nianticproject/ingress/common/scanner/modes/u;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/u;->b(Lcom/nianticproject/ingress/common/scanner/modes/u;)Lcom/nianticproject/ingress/common/scanner/modes/y;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/modes/y;->d()Z

    .line 113
    return-void
.end method
