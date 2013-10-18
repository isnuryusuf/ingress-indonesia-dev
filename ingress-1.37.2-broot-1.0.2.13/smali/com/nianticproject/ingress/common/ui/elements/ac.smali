.class final Lcom/nianticproject/ingress/common/ui/elements/ac;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/elements/ab;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/ac;->a:Lcom/nianticproject/ingress/common/ui/elements/ab;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ac;->a:Lcom/nianticproject/ingress/common/ui/elements/ab;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/ac;->a:Lcom/nianticproject/ingress/common/ui/elements/ab;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/elements/ab;->a(Lcom/nianticproject/ingress/common/ui/elements/ab;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/ab;->a(Lcom/nianticproject/ingress/common/ui/elements/ab;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)V

    .line 108
    return-void
.end method
